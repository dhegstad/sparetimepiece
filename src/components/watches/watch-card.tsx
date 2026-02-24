import Link from 'next/link'
import { formatPrice, formatTrend } from '@/lib/utils'
import type { WatchWithBrand } from '@/types/database'

export function WatchCard({ watch }: { watch: WatchWithBrand }) {
  const trend = watch.price_trend_30d
  const isPositive = trend != null && trend > 0

  return (
    <Link href={`/watches/${watch.reference_number}`}>
      <div className="border border-[#1D263B] p-5 hover:border-[#C9A84C] hover:bg-[#0E1528] transition-all cursor-pointer group">
        <div className="aspect-square bg-[#141C31] border border-[#1D263B] mb-4 flex items-center justify-center overflow-hidden">
          {watch.image_url ? (
            <img src={watch.image_url} alt={watch.model_name} className="object-cover w-full h-full" />
          ) : (
            <div className="text-center p-4">
              <div className="font-mono text-lg text-[#C9A84C]">{watch.brands?.name?.[0]}</div>
              <div className="font-mono text-[10px] text-[#6E7B98] mt-1 uppercase tracking-wider">{watch.reference_number}</div>
            </div>
          )}
        </div>
        <div>
          <span className="label-gold">{watch.brands?.name}</span>
          <p className="font-mono text-sm uppercase group-hover:text-[#C9A84C] transition-colors line-clamp-1 mt-1">
            {watch.model_name}
          </p>
          <p className="font-mono text-[10px] text-[#6E7B98] mt-1">REF. {watch.reference_number}</p>
          <div className="flex items-center justify-between mt-3 pt-3 border-t border-[#1D263B]">
            <span className="font-mono text-sm">
              {formatPrice(watch.current_market_price_usd)}
            </span>
            {trend != null && (
              <span className={`font-mono text-[10px] ${isPositive ? 'text-[#4CAF50]' : 'text-[#F44336]'}`}>
                {isPositive ? '▲' : '▼'} {formatTrend(trend)}
              </span>
            )}
          </div>
        </div>
      </div>
    </Link>
  )
}
