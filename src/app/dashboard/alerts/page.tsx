import { redirect } from 'next/navigation'
import { createClient } from '@/lib/supabase/server'
import { getAlerts } from '@/lib/queries/dashboard'
import { formatPrice } from '@/lib/utils'
import { AlertActions } from '@/components/dashboard/alert-actions'
import { CreateAlertDialog } from '@/components/dashboard/create-alert-dialog'
import type { Metadata } from 'next'

export const metadata: Metadata = { title: 'Price Alerts' }

export default async function AlertsPage() {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) redirect('/login')

  const alerts = await getAlerts(user.id)

  return (
    <div>
      <div className="flex items-center justify-between mb-6 pb-6 border-b border-[#1D263B]">
        <div>
          <span className="label-gold">Alert Configuration</span>
          <div className="font-mono text-2xl mt-2 uppercase">Price Alerts</div>
        </div>
        <CreateAlertDialog />
      </div>

      {alerts.length === 0 ? (
        <div className="flex items-center justify-center h-48 text-[#6E7B98] font-mono text-xs border border-[#1D263B]">
          NO ALERTS CONFIGURED — CREATE ONE TO GET STARTED
        </div>
      ) : (
        <div className="overflow-x-auto">
          <table className="w-full">
            <thead>
              <tr className="border-b border-[#1D263B]">
                <th className="text-left px-4 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">Watch</th>
                <th className="text-left px-4 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">Condition</th>
                <th className="text-right px-4 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">Target</th>
                <th className="text-right px-4 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">Current</th>
                <th className="text-right px-4 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">Status</th>
                <th className="text-right px-4 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal"></th>
              </tr>
            </thead>
            <tbody>
              {alerts.map((alert) => {
                const watch = alert.watches
                return (
                  <tr key={alert.id} className="border-b border-[#1D263B] hover:bg-[#0E1528] transition-colors">
                    <td className="px-4 py-4">
                      <div className="font-medium text-[13px]">{watch?.brands?.name} {watch?.model_name}</div>
                      <div className="font-mono text-[10px] text-[#6E7B98] mt-1">REF. {watch?.reference_number}</div>
                    </td>
                    <td className="px-4 py-4">
                      <span className={`text-[9px] uppercase tracking-wider border px-2 py-1 font-mono ${
                        alert.direction === 'below'
                          ? 'border-[#4CAF50] text-[#4CAF50]'
                          : 'border-[#F44336] text-[#F44336]'
                      }`}>
                        {alert.direction === 'below' ? 'Below' : 'Above'}
                      </span>
                    </td>
                    <td className="px-4 py-4 text-right font-mono text-[13px] text-[#C9A84C]">
                      {formatPrice(alert.target_price_usd)}
                    </td>
                    <td className="px-4 py-4 text-right font-mono text-[13px]">
                      {formatPrice(watch?.current_market_price_usd)}
                    </td>
                    <td className="px-4 py-4 text-right">
                      <span className={`text-[9px] uppercase tracking-wider border px-2 py-1 font-mono ${
                        alert.is_active
                          ? 'border-[#4CAF50] text-[#4CAF50]'
                          : 'border-[#1D263B] text-[#6E7B98]'
                      }`}>
                        {alert.is_active ? 'Active' : 'Paused'}
                      </span>
                    </td>
                    <td className="px-4 py-4 text-right">
                      <AlertActions alertId={alert.id} isActive={alert.is_active} />
                    </td>
                  </tr>
                )
              })}
            </tbody>
          </table>
        </div>
      )}
    </div>
  )
}
