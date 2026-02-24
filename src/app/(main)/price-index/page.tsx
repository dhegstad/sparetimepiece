import { getBrands, getWatches } from '@/lib/queries/watches'
import { formatPrice, formatTrend, formatPriceCompact } from '@/lib/utils'
import Link from 'next/link'
import type { Metadata } from 'next'

export const metadata: Metadata = {
  title: 'Price Index',
  description: 'Market overview of luxury watch prices. View trends, top movers, and price data across all brands.',
}

export default async function PriceIndexPage() {
  const brands = await getBrands()
  const { watches: allWatches } = await getWatches({ limit: 100 })

  const withTrend = allWatches.filter((w) => w.price_trend_30d != null)
  const avgTrend = withTrend.length > 0
    ? withTrend.reduce((sum, w) => sum + (w.price_trend_30d || 0), 0) / withTrend.length
    : 0

  const topGainers = [...withTrend]
    .sort((a, b) => (b.price_trend_30d || 0) - (a.price_trend_30d || 0))
    .slice(0, 5)

  const topDecliners = [...withTrend]
    .sort((a, b) => (a.price_trend_30d || 0) - (b.price_trend_30d || 0))
    .slice(0, 5)

  const totalMarketValue = allWatches.reduce(
    (sum, w) => sum + (w.current_market_price_usd || 0),
    0
  )

  const avgIsPositive = avgTrend > 0

  return (
    <div className="max-w-[1440px] mx-auto border-l border-r border-[#1D263B]">
      {/* Header */}
      <div className="px-6 py-12 border-b border-[#1D263B]">
        <span className="label-gold">Market Intelligence</span>
        <h1 className="text-4xl font-light uppercase mt-2">Price Index</h1>
      </div>

      {/* Summary Stats */}
      <div className="grid grid-cols-1 sm:grid-cols-3 border-b border-[#1D263B]">
        <div className="p-6 border-r border-[#1D263B]">
          <span className="label-gold">Assets Tracked</span>
          <div className="font-mono text-3xl mt-2">{allWatches.length}</div>
        </div>
        <div className="p-6 border-r border-[#1D263B]">
          <span className="label-gold">Avg. 30D Trend</span>
          <div className={`font-mono text-3xl mt-2 ${avgIsPositive ? 'text-[#4CAF50]' : 'text-[#F44336]'}`}>
            {avgIsPositive ? '▲' : '▼'} {formatTrend(avgTrend)}
          </div>
        </div>
        <div className="p-6">
          <span className="label-gold">Total Market Value</span>
          <div className="font-mono text-3xl mt-2">{formatPriceCompact(totalMarketValue)}</div>
        </div>
      </div>

      {/* Movers Grid */}
      <div className="grid grid-cols-1 lg:grid-cols-2 border-b border-[#1D263B]">
        {/* Top Gainers */}
        <div className="border-r border-[#1D263B]">
          <div className="px-6 py-4 border-b border-[#1D263B] bg-[rgba(20,28,49,0.3)]">
            <span className="text-[12px] font-semibold tracking-[0.1em] uppercase flex items-center gap-2">
              <span className="text-[#4CAF50]">▲</span> Top Gainers (30D)
            </span>
          </div>
          {topGainers.map((watch) => (
            <Link
              key={watch.id}
              href={`/watches/${watch.reference_number}`}
              className="flex items-center justify-between px-6 py-4 border-b border-[#1D263B] hover:bg-[#0E1528] transition-colors"
            >
              <div>
                <div className="font-mono text-[13px] uppercase">{watch.brands?.name} {watch.model_name}</div>
                <div className="font-mono text-[10px] text-[#6E7B98] mt-1">REF. {watch.reference_number}</div>
              </div>
              <div className="text-right">
                <div className="font-mono text-[13px]">{formatPrice(watch.current_market_price_usd)}</div>
                <div className="font-mono text-[11px] text-[#4CAF50] mt-1">▲ {formatTrend(watch.price_trend_30d)}</div>
              </div>
            </Link>
          ))}
        </div>

        {/* Top Decliners */}
        <div>
          <div className="px-6 py-4 border-b border-[#1D263B] bg-[rgba(20,28,49,0.3)]">
            <span className="text-[12px] font-semibold tracking-[0.1em] uppercase flex items-center gap-2">
              <span className="text-[#F44336]">▼</span> Top Decliners (30D)
            </span>
          </div>
          {topDecliners.map((watch) => (
            <Link
              key={watch.id}
              href={`/watches/${watch.reference_number}`}
              className="flex items-center justify-between px-6 py-4 border-b border-[#1D263B] hover:bg-[#0E1528] transition-colors"
            >
              <div>
                <div className="font-mono text-[13px] uppercase">{watch.brands?.name} {watch.model_name}</div>
                <div className="font-mono text-[10px] text-[#6E7B98] mt-1">REF. {watch.reference_number}</div>
              </div>
              <div className="text-right">
                <div className="font-mono text-[13px]">{formatPrice(watch.current_market_price_usd)}</div>
                <div className="font-mono text-[11px] text-[#F44336] mt-1">▼ {formatTrend(watch.price_trend_30d)}</div>
              </div>
            </Link>
          ))}
        </div>
      </div>

      {/* Brand Overview */}
      <div className="px-6 py-4 border-b border-[#1D263B] bg-[rgba(20,28,49,0.3)]">
        <span className="text-[12px] font-semibold tracking-[0.1em] uppercase">Brand Index</span>
      </div>
      <div className="overflow-x-auto">
        <table className="w-full">
          <thead>
            <tr className="border-b border-[#1D263B]">
              <th className="text-left px-6 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">#</th>
              <th className="text-left px-6 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">Brand</th>
              <th className="text-right px-6 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">Models</th>
              <th className="text-right px-6 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">Avg. Price</th>
            </tr>
          </thead>
          <tbody>
            {brands.map((brand, i) => {
              const brandWatches = allWatches.filter((w) => w.brand_id === brand.id)
              const avgPrice = brandWatches.length > 0
                ? brandWatches.reduce((s, w) => s + (w.current_market_price_usd || 0), 0) / brandWatches.length
                : 0
              return (
                <tr key={brand.id} className="border-b border-[#1D263B] hover:bg-[#0E1528] transition-colors">
                  <td className="px-6 py-4 font-mono text-[11px] text-[#6E7B98]">{String(i + 1).padStart(2, '0')}</td>
                  <td className="px-6 py-4">
                    <Link href={`/brands/${brand.slug}`} className="font-mono text-[13px] uppercase hover:text-[#C9A84C] transition-colors">
                      {brand.name}
                    </Link>
                  </td>
                  <td className="px-6 py-4 text-right font-mono text-[11px] text-[#6E7B98]">{brandWatches.length}</td>
                  <td className="px-6 py-4 text-right font-mono text-[13px]">{formatPriceCompact(Math.round(avgPrice))}</td>
                </tr>
              )
            })}
          </tbody>
        </table>
      </div>
    </div>
  )
}
