import { notFound } from 'next/navigation'
import { getWatchByRef, getPriceHistory } from '@/lib/queries/watches'
import { formatPrice, formatTrend } from '@/lib/utils'
import { PriceChartWrapper } from '@/components/watches/price-chart-wrapper'
import { WatchActions } from '@/components/watches/watch-actions'
import type { Metadata } from 'next'

export async function generateMetadata({
  params,
}: {
  params: Promise<{ ref: string }>
}): Promise<Metadata> {
  const { ref } = await params
  try {
    const watch = await getWatchByRef(ref)
    return {
      title: `${watch.brands?.name} ${watch.model_name} | ${watch.reference_number}`,
      description: `Track price history and market trends for the ${watch.brands?.name} ${watch.model_name} (Ref. ${watch.reference_number}).`,
    }
  } catch {
    return { title: 'Watch Not Found' }
  }
}

export default async function WatchDetailPage({
  params,
}: {
  params: Promise<{ ref: string }>
}) {
  const { ref } = await params
  let watch
  try {
    watch = await getWatchByRef(ref)
  } catch {
    notFound()
  }
  if (!watch) notFound()

  const priceHistory = await getPriceHistory(watch.id)
  const trend = watch.price_trend_30d
  const isPositive = trend != null && trend > 0

  const specs = [
    { label: 'SERIES', value: watch.collection },
    { label: 'CALIBER', value: watch.caliber },
    { label: 'MATERIAL', value: watch.case_material },
    { label: 'DIAMETER', value: watch.case_diameter_mm ? `${watch.case_diameter_mm}mm` : null },
    { label: 'MOVEMENT', value: watch.movement_type?.toUpperCase() },
    { label: 'WR', value: watch.water_resistance_m ? `${watch.water_resistance_m}M` : null },
    { label: 'DIAL', value: watch.dial_color?.toUpperCase() },
    { label: 'BRACELET', value: watch.bracelet_material?.toUpperCase() },
  ].filter((s) => s.value)

  return (
    <div className="max-w-[1440px] mx-auto border-l border-r border-[#1D263B]">
      {/* Asset Header */}
      <header className="px-6 py-12 border-b border-[#1D263B] grid grid-cols-1 lg:grid-cols-[1fr_auto] items-end gap-6">
        <div>
          <span className="label-gold">Reference: {watch.reference_number}</span>
          <h1 className="text-4xl md:text-5xl font-light uppercase leading-tight mt-2">
            {watch.model_name}
          </h1>
          <div className="flex gap-6 mt-3 font-mono text-xs text-[#6E7B98]">
            <span>BRAND: {watch.brands?.name?.toUpperCase()}</span>
            {watch.case_material && <span>MATERIAL: {watch.case_material.toUpperCase()}</span>}
            {watch.dial_color && <span>DIAL: {watch.dial_color.toUpperCase()}</span>}
          </div>
        </div>
        <div className="text-right">
          <span className="label-gold">Market Price</span>
          <div className="font-mono text-3xl mt-1">{formatPrice(watch.current_market_price_usd)}</div>
          {trend != null && (
            <span className={`label-gold mt-1 ${isPositive ? 'text-[#4CAF50]' : 'text-[#F44336]'}`}>
              {isPositive ? '▲' : '▼'} {formatTrend(trend)} (30D)
            </span>
          )}
        </div>
      </header>

      {/* Main Grid */}
      <div className="grid grid-cols-1 lg:grid-cols-[1fr_350px] border-b border-[#1D263B]">
        {/* Main content */}
        <div className="border-r border-[#1D263B]">
          {/* Chart */}
          <div className="p-6 border-b border-[#1D263B]">
            <PriceChartWrapper data={priceHistory} />
          </div>

          {/* Specs */}
          <div className="p-6 border-b border-[#1D263B]">
            <span className="label-gold mb-4 block">Technical Specifications</span>
            <div className="grid grid-cols-2 gap-x-8 gap-y-3">
              {specs.map((spec) => (
                <div key={spec.label} className="font-mono text-[11px]">
                  <span className="text-[#C9A84C]">{spec.label}:</span>{' '}
                  <span className="text-foreground">{spec.value}</span>
                </div>
              ))}
            </div>
          </div>

          {/* Retail vs Market */}
          {watch.retail_price_usd && watch.current_market_price_usd && (
            <div className="p-6">
              <span className="label-gold mb-4 block">Valuation Analysis</span>
              <div className="grid grid-cols-3 gap-6">
                <div>
                  <span className="text-[10px] text-[#6E7B98] uppercase tracking-wider">Retail</span>
                  <div className="font-mono text-lg mt-1">{formatPrice(watch.retail_price_usd)}</div>
                </div>
                <div>
                  <span className="text-[10px] text-[#6E7B98] uppercase tracking-wider">Market</span>
                  <div className="font-mono text-lg mt-1">{formatPrice(watch.current_market_price_usd)}</div>
                </div>
                <div>
                  <span className="text-[10px] text-[#6E7B98] uppercase tracking-wider">Premium</span>
                  <div className={`font-mono text-lg mt-1 ${watch.current_market_price_usd > watch.retail_price_usd ? 'text-[#4CAF50]' : 'text-[#F44336]'}`}>
                    {(((watch.current_market_price_usd - watch.retail_price_usd) / watch.retail_price_usd) * 100).toFixed(1)}%
                  </div>
                </div>
              </div>
            </div>
          )}
        </div>

        {/* Action Panel */}
        <aside className="sticky top-[60px]">
          {/* Actions */}
          <div className="p-6 border-b border-[#1D263B]">
            <span className="label-gold mb-4 block">Trade Execution</span>
            <WatchActions watchId={watch.id} watchRef={watch.reference_number} />
          </div>

          {/* Condition Grading */}
          <div className="p-6 border-b border-[#1D263B]">
            <span className="label-gold mb-4 block">Condition Price Estimates</span>
            <div className="space-y-3">
              {[
                { label: 'Mint / NOS', mult: 1.2 },
                { label: 'Excellent', mult: 1.0 },
                { label: 'Good', mult: 0.85 },
              ].map((cond) => (
                <div key={cond.label} className="flex justify-between font-mono text-[11px]">
                  <span>{cond.label}</span>
                  <span className="text-[#C9A84C]">
                    {formatPrice(Math.round((watch.current_market_price_usd || 0) * cond.mult))}
                  </span>
                </div>
              ))}
            </div>
          </div>

          {/* System Insight */}
          <div className="p-6" style={{ background: 'rgba(201, 168, 76, 0.03)' }}>
            <span className="label-gold mb-2 block">System Insight</span>
            <p className="text-[11px] text-foreground leading-relaxed">
              Reference {watch.reference_number} is tracked across multiple sources.
              Price data is aggregated and normalized for accuracy.
            </p>
          </div>
        </aside>
      </div>
    </div>
  )
}
