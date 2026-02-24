import { notFound } from 'next/navigation'
import Link from 'next/link'
import { getBrandBySlug, getWatchesByBrand } from '@/lib/queries/watches'
import { formatPrice, formatTrend } from '@/lib/utils'
import type { Metadata } from 'next'

export async function generateMetadata({
  params,
}: {
  params: Promise<{ slug: string }>
}): Promise<Metadata> {
  const { slug } = await params
  const brand = await getBrandBySlug(slug).catch(() => null)
  if (!brand) return { title: 'Brand Not Found' }
  return {
    title: brand.name,
    description: brand.description || `Browse ${brand.name} watches. Track prices and market trends.`,
  }
}

export default async function BrandPage({
  params,
}: {
  params: Promise<{ slug: string }>
}) {
  const { slug } = await params
  let brand
  try {
    brand = await getBrandBySlug(slug)
  } catch {
    notFound()
  }
  if (!brand) notFound()

  const watches = await getWatchesByBrand(brand.id)

  return (
    <div className="max-w-[1440px] mx-auto border-l border-r border-[#1D263B]">
      {/* Brand Header */}
      <header className="px-6 py-12 border-b border-[#1D263B]">
        <div className="flex items-center gap-6">
          <div className="h-20 w-20 border border-[#C9A84C] flex items-center justify-center">
            <span className="font-mono text-3xl text-[#C9A84C]">{brand.name[0]}</span>
          </div>
          <div>
            <span className="label-gold">Brand Profile</span>
            <h1 className="text-4xl font-light uppercase mt-1">{brand.name}</h1>
            <div className="flex gap-6 mt-2 font-mono text-[10px] text-[#6E7B98] uppercase tracking-wider">
              {brand.founded_year && <span>EST. {brand.founded_year}</span>}
              {brand.country && <span>{brand.country}</span>}
              <span>{watches.length} Models</span>
            </div>
          </div>
        </div>
        {brand.description && (
          <p className="text-[13px] text-[#6E7B98] mt-6 max-w-3xl leading-relaxed">{brand.description}</p>
        )}
      </header>

      {/* Models Table */}
      <div className="px-6 py-6 border-b border-[#1D263B]">
        <span className="label-gold mb-4 block">Reference Catalogue</span>
      </div>

      {watches.length === 0 ? (
        <div className="flex items-center justify-center h-48 text-[#6E7B98] font-mono text-xs border-b border-[#1D263B]">
          NO MODELS INDEXED YET
        </div>
      ) : (
        <div className="overflow-x-auto">
          <table className="w-full">
            <thead>
              <tr className="border-b border-[#1D263B]">
                <th className="text-left px-6 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">#</th>
                <th className="text-left px-6 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">Reference</th>
                <th className="text-left px-6 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">Model</th>
                <th className="text-left px-6 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">Material</th>
                <th className="text-right px-6 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">Market Price</th>
                <th className="text-right px-6 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">30D Trend</th>
              </tr>
            </thead>
            <tbody>
              {watches.map((watch, i) => {
                const trend = watch.price_trend_30d
                const isPositive = trend != null && trend > 0
                return (
                  <tr key={watch.id} className="border-b border-[#1D263B] hover:bg-[#0E1528] transition-colors">
                    <td className="px-6 py-4 font-mono text-[11px] text-[#6E7B98]">{String(i + 1).padStart(2, '0')}</td>
                    <td className="px-6 py-4">
                      <Link href={`/watches/${watch.reference_number}`} className="font-mono text-[11px] text-[#C9A84C] hover:underline">
                        {watch.reference_number}
                      </Link>
                    </td>
                    <td className="px-6 py-4 font-mono text-[13px] uppercase">{watch.model_name}</td>
                    <td className="px-6 py-4 font-mono text-[11px] text-[#6E7B98] uppercase">{watch.case_material || '—'}</td>
                    <td className="px-6 py-4 text-right font-mono text-[13px]">{formatPrice(watch.current_market_price_usd)}</td>
                    <td className="px-6 py-4 text-right">
                      {trend != null ? (
                        <span className={`font-mono text-[11px] ${isPositive ? 'text-[#4CAF50]' : 'text-[#F44336]'}`}>
                          {isPositive ? '▲' : '▼'} {formatTrend(trend)}
                        </span>
                      ) : (
                        <span className="font-mono text-[11px] text-[#6E7B98]">—</span>
                      )}
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
