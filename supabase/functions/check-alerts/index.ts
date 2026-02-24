// Supabase Edge Function: check-alerts
// Called after each scraper run to check if any price alerts have been triggered

import { createClient } from 'https://esm.sh/@supabase/supabase-js@2'

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
}

Deno.serve(async (req) => {
  if (req.method === 'OPTIONS') {
    return new Response('ok', { headers: corsHeaders })
  }

  try {
    const supabase = createClient(
      Deno.env.get('SUPABASE_URL')!,
      Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!
    )

    // Get all active alerts with current watch prices
    const { data: alerts, error: alertsError } = await supabase
      .from('price_alerts')
      .select('*, watches(current_market_price_usd, model_name, reference_number, brands(name)), profiles(notification_email)')
      .eq('is_active', true)

    if (alertsError) throw alertsError

    const triggered: Array<{
      alertId: string
      userEmail?: string
      watchName: string
      targetPrice: number
      currentPrice: number
      direction: string
    }> = []

    for (const alert of alerts || []) {
      const currentPrice = alert.watches?.current_market_price_usd
      if (!currentPrice) continue

      const isTriggered =
        (alert.direction === 'below' && currentPrice <= alert.target_price_usd) ||
        (alert.direction === 'above' && currentPrice >= alert.target_price_usd)

      if (isTriggered) {
        // Check if already triggered recently (within 24h)
        if (alert.last_triggered_at) {
          const lastTriggered = new Date(alert.last_triggered_at)
          const hoursSince = (Date.now() - lastTriggered.getTime()) / (1000 * 60 * 60)
          if (hoursSince < 24) continue
        }

        triggered.push({
          alertId: alert.id,
          watchName: `${alert.watches?.brands?.name} ${alert.watches?.model_name}`,
          targetPrice: alert.target_price_usd,
          currentPrice,
          direction: alert.direction,
        })

        // Update last_triggered_at
        await supabase
          .from('price_alerts')
          .update({ last_triggered_at: new Date().toISOString() })
          .eq('id', alert.id)
      }
    }

    // In production, send emails via Resend for each triggered alert
    // For now, just log and return results
    console.log(`Checked ${alerts?.length || 0} alerts, ${triggered.length} triggered`)

    return new Response(
      JSON.stringify({
        checked: alerts?.length || 0,
        triggered: triggered.length,
        alerts: triggered,
      }),
      {
        headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        status: 200,
      }
    )
  } catch (err) {
    return new Response(
      JSON.stringify({ error: err.message }),
      {
        headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        status: 500,
      }
    )
  }
})
