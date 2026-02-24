import { redirect } from 'next/navigation'
import Link from 'next/link'
import { createClient } from '@/lib/supabase/server'
import { getWatchlist } from '@/lib/queries/dashboard'
import { formatPrice, formatTrend } from '@/lib/utils'
import { RemoveWatchlistButton } from '@/components/dashboard/remove-watchlist-button'
import type { Metadata } from 'next'

export const metadata: Metadata = { title: 'Watchlist' }

export default async function WatchlistPage() {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) redirect('/login')

  const items = await getWatchlist(user.id)

  // Compute portfolio stats
  const totalValue = items.reduce((sum, item) => sum + (item.watches?.current_market_price_usd || 0), 0)
  const withTrend = items.filter((item) => item.watches?.price_trend_30d != null)
  const avgTrend = withTrend.length > 0
    ? withTrend.reduce((sum, item) => sum + (item.watches?.price_trend_30d || 0), 0) / withTrend.length
    : 0

  return (
    <div>
      {/* Portfolio Header */}
      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-6 pb-6 border-b border-[#1D263B]">
        <div>
          <span className="label-gold">Total Watchlist Value</span>
          <div className="font-mono text-4xl mt-2">{formatPrice(totalValue)}</div>
          {avgTrend !== 0 && (
            <div className={`font-mono text-[12px] mt-2 ${avgTrend > 0 ? 'text-[#4CAF50]' : 'text-[#F44336]'}`}>
              {avgTrend > 0 ? '▲' : '▼'} {formatTrend(avgTrend)} avg. 30D
            </div>
          )}
        </div>
        <div className="grid grid-cols-3 gap-6 lg:border-l lg:border-[#1D263B] lg:pl-6">
          <div>
            <span className="label-gold">Asset Count</span>
            <div className="font-mono text-lg mt-1">{items.length} Units</div>
          </div>
          <div>
            <span className="label-gold">Top Performer</span>
            <div className="font-mono text-lg mt-1 text-[#4CAF50]">
              {withTrend.length > 0
                ? formatTrend(Math.max(...withTrend.map((i) => i.watches?.price_trend_30d || 0)))
                : '—'}
            </div>
          </div>
          <div>
            <span className="label-gold">Actions</span>
            <Link href="/watches">
              <button className="mt-1 px-3 py-2 text-[10px] uppercase tracking-wider font-mono border border-[#C9A84C] text-[#C9A84C] hover:bg-[#C9A84C] hover:text-[#0A0F1E] transition-all">
                + Add Asset
              </button>
            </Link>
          </div>
        </div>
      </div>

      {items.length === 0 ? (
        <div className="flex items-center justify-center h-48 text-[#6E7B98] font-mono text-xs border border-[#1D263B]">
          WATCHLIST EMPTY — BROWSE ASSETS TO ADD
        </div>
      ) : (
        <div>
          <span className="label-gold mb-4 block">Holdings Analysis</span>
          <div className="overflow-x-auto">
            <table className="w-full">
              <thead>
                <tr className="border-b border-[#1D263B]">
                  <th className="text-left px-4 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">Asset Reference</th>
                  <th className="text-right px-4 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">Current Value</th>
                  <th className="text-right px-4 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">30D Trend</th>
                  <th className="text-right px-4 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">Weight</th>
                  <th className="text-right px-4 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal"></th>
                </tr>
              </thead>
              <tbody>
                {items.map((item) => {
                  const watch = item.watches
                  const trend = watch?.price_trend_30d
                  const isPositive = trend != null && trend > 0
                  const weight = totalValue > 0 ? ((watch?.current_market_price_usd || 0) / totalValue * 100) : 0
                  return (
                    <tr key={item.id} className="border-b border-[#1D263B] hover:bg-[#0E1528] transition-colors">
                      <td className="px-4 py-4">
                        <Link href={`/watches/${watch?.reference_number}`}>
                          <div className="font-medium text-[13px]">{watch?.brands?.name} {watch?.model_name}</div>
                          <div className="font-mono text-[10px] text-[#6E7B98] mt-1 uppercase">
                            {watch?.collection || watch?.reference_number} / {watch?.case_material?.toUpperCase() || '—'}
                          </div>
                        </Link>
                      </td>
                      <td className="px-4 py-4 text-right font-mono text-[13px]">
                        {formatPrice(watch?.current_market_price_usd)}
                      </td>
                      <td className="px-4 py-4 text-right">
                        {trend != null ? (
                          <span className={`font-mono text-[11px] ${isPositive ? 'text-[#4CAF50]' : 'text-[#F44336]'}`}>
                            {isPositive ? '+' : ''}{trend.toFixed(1)}%
                          </span>
                        ) : (
                          <span className="font-mono text-[11px] text-[#6E7B98]">—</span>
                        )}
                      </td>
                      <td className="px-4 py-4 text-right font-mono text-[11px] text-[#6E7B98]">
                        {weight.toFixed(1)}%
                      </td>
                      <td className="px-4 py-4 text-right">
                        <RemoveWatchlistButton itemId={item.id} />
                      </td>
                    </tr>
                  )
                })}
              </tbody>
            </table>
          </div>
        </div>
      )}
    </div>
  )
}
