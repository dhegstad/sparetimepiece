import { createClient } from '@supabase/supabase-js'
import { config } from './config.js'

export const supabase = createClient(config.supabaseUrl, config.supabaseServiceKey)

export interface ScrapedPrice {
  watchId: string
  source: string
  priceUsd: number // cents
  condition: 'new' | 'unworn' | 'very_good' | 'good' | 'fair'
  listingUrl?: string
}

export interface WatchRef {
  id: string
  reference_number: string
  model_name: string
  brands: { name: string; slug: string } | null
}

export async function getWatchesForScraping(): Promise<WatchRef[]> {
  const { data, error } = await supabase
    .from('watches')
    .select('id, reference_number, model_name, brands(name, slug)')
    .order('reference_number')

  if (error) throw error
  // Supabase may return brands as array or object depending on the join; normalize to single object
  return (data ?? []).map((w: any) => ({
    ...w,
    brands: Array.isArray(w.brands) ? w.brands[0] ?? null : w.brands,
  })) as WatchRef[]
}

export async function isDuplicate(watchId: string, source: string, priceUsd: number): Promise<boolean> {
  const since = new Date()
  since.setHours(since.getHours() - 24)

  const { data } = await supabase
    .from('price_history')
    .select('id')
    .eq('watch_id', watchId)
    .eq('source', source)
    .eq('price_usd', priceUsd)
    .gte('scraped_at', since.toISOString())
    .limit(1)

  return (data?.length ?? 0) > 0
}

export async function insertPrices(prices: ScrapedPrice[]) {
  const rows = prices.map((p) => ({
    watch_id: p.watchId,
    source: p.source,
    price_usd: p.priceUsd,
    condition: p.condition,
    listing_url: p.listingUrl,
  }))

  const { error } = await supabase.from('price_history').insert(rows)
  if (error) throw error
}

export async function updateWatchPrice(watchId: string, priceUsd: number) {
  const { error } = await supabase
    .from('watches')
    .update({ current_market_price_usd: priceUsd })
    .eq('id', watchId)

  if (error) throw error
}

export async function startScrapeRun(source: string) {
  const { data, error } = await supabase
    .from('scrape_runs')
    .insert({ source, status: 'running' })
    .select('id')
    .single()

  if (error) throw error
  return data.id
}

export async function completeScrapeRun(
  runId: string,
  stats: { recordsFound: number; recordsInserted: number; recordsSkipped: number }
) {
  await supabase
    .from('scrape_runs')
    .update({
      status: 'completed',
      records_found: stats.recordsFound,
      records_inserted: stats.recordsInserted,
      records_skipped: stats.recordsSkipped,
      completed_at: new Date().toISOString(),
    })
    .eq('id', runId)
}

export async function failScrapeRun(runId: string, error: string) {
  await supabase
    .from('scrape_runs')
    .update({
      status: 'failed',
      error_message: error,
      completed_at: new Date().toISOString(),
    })
    .eq('id', runId)
}
