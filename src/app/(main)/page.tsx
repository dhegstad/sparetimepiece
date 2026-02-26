import Link from 'next/link'
import { formatPrice, formatTrend } from '@/lib/utils'

const trendingWatches = [
  { brand: 'ROLEX', model: 'Daytona 126500LN', ref: '126500LN', price: 2750000, trend: 3.8 },
  { brand: 'PATEK PHILIPPE', model: 'Nautilus 5711/1A', ref: '5711/1A-010', price: 12500000, trend: -2.1 },
  { brand: 'AUDEMARS PIGUET', model: 'Royal Oak 15500ST', ref: '15500ST.OO.1220ST.01', price: 4200000, trend: 1.7 },
  { brand: 'OMEGA', model: 'Speedmaster 321', ref: '310.30.42.50.01.001', price: 620000, trend: -0.8 },
  { brand: 'VACHERON CONSTANTIN', model: 'Overseas 4500V', ref: '4500V/110A-B483', price: 3500000, trend: 2.4 },
]

const dominance = [
  { code: 'RLX', pct: '28.4%' },
  { code: 'PP', pct: '16.2%' },
  { code: 'AP', pct: '12.1%' },
  { code: 'OME', pct: '8.4%' },
]

export default function HomePage() {
  return (
    <div className="max-w-[1440px] mx-auto border-l border-r border-[#1D263B]">
      {/* Hero */}
      <div
        className="border-b border-[#1D263B] px-4 py-12 sm:px-6 sm:py-20 md:py-24 flex flex-col md:flex-row justify-between items-start md:items-end gap-6 md:gap-8"
        style={{ background: 'radial-gradient(circle at top right, #141C31 0%, transparent 40%)' }}
      >
        <div>
          <span className="label-gold block mb-3 md:mb-4">Platform V.2.0</span>
          <h1 className="text-3xl sm:text-5xl md:text-7xl font-light uppercase leading-[0.9] tracking-wide">
            Global<br />Watch<br />Index
          </h1>
        </div>
        <div className="border-l border-[#C9A84C] pl-4 sm:pl-6 max-w-md w-full md:w-auto">
          <p className="font-mono text-xs uppercase tracking-wider text-foreground">
            Real-time valuation data for investment-grade horology.
          </p>
          <p className="font-mono text-xs uppercase tracking-wider text-[#6E7B98] mt-2">
            Tracking 50+ Premium References
          </p>
          <Link
            href="/watches"
            className="inline-block mt-4 sm:mt-6 border border-[#C9A84C] text-[#C9A84C] px-6 py-3 font-mono text-xs uppercase tracking-wider hover:bg-[#C9A84C] hover:text-[#0A0F1E] transition-all"
          >
            Access Terminal
          </Link>
        </div>
      </div>

      {/* Mobile Stats Row — visible only on small screens */}
      <div className="lg:hidden flex overflow-x-auto snap-x snap-mandatory gap-0 border-b border-[#1D263B] scrollbar-hide">
        <div className="snap-start shrink-0 w-[45%] min-w-[160px] p-4 border-r border-[#1D263B]">
          <span className="label-gold">Market Volume (24h)</span>
          <div className="font-mono text-xl mt-1">$ 42.5M</div>
          <div className="text-xs text-[#4CAF50] mt-1 uppercase tracking-wider">&#9650; 2.4%</div>
        </div>
        <div className="snap-start shrink-0 w-[45%] min-w-[160px] p-4 border-r border-[#1D263B]">
          <span className="label-gold">Volatility Index</span>
          <div className="flex gap-[2px] h-5 mt-2">
            {Array.from({ length: 16 }).map((_, i) => (
              <div
                key={i}
                className={`flex-1 ${i < 8 ? 'bg-[#C9A84C]' : 'bg-[#141C31]'}`}
              />
            ))}
          </div>
          <div className="flex justify-between mt-1">
            <span className="label-gold text-[9px]">Low</span>
            <span className="label-gold text-[9px]">High</span>
          </div>
        </div>
        <div className="snap-start shrink-0 w-[45%] min-w-[160px] p-4">
          <span className="label-gold">Dominance</span>
          <div className="grid grid-cols-2 gap-3 mt-2">
            {dominance.map((d) => (
              <div key={d.code}>
                <span className="font-mono text-sm">{d.code}</span>
                <span className="label-gold block">{d.pct}</span>
              </div>
            ))}
          </div>
        </div>
      </div>

      {/* Dashboard Grid */}
      <div className="grid grid-cols-1 lg:grid-cols-[300px_1fr_350px] border-b border-[#1D263B]">
        {/* Left sidebar — hidden on mobile (shown as scroll row above) */}
        <div className="hidden lg:block p-6 border-r border-[#1D263B]">
          <div className="mb-12">
            <span className="label-gold">Market Volume (24h)</span>
            <div className="font-mono text-2xl mt-1">$ 42.5M</div>
            <div className="text-xs text-[#4CAF50] mt-1 uppercase tracking-wider">&#9650; 2.4%</div>
          </div>

          <div className="mb-12">
            <span className="label-gold">Volatility Index</span>
            <div className="flex gap-[2px] h-6 mt-3">
              {Array.from({ length: 16 }).map((_, i) => (
                <div
                  key={i}
                  className={`flex-1 ${i < 8 ? 'bg-[#C9A84C]' : 'bg-[#141C31]'}`}
                />
              ))}
            </div>
            <div className="flex justify-between mt-2">
              <span className="label-gold">Low</span>
              <span className="label-gold">High</span>
            </div>
          </div>

          <div>
            <span className="label-gold">Dominance</span>
            <div className="grid grid-cols-2 gap-6 mt-3">
              {dominance.map((d) => (
                <div key={d.code}>
                  <span className="font-mono text-base">{d.code}</span>
                  <span className="label-gold block">{d.pct}</span>
                </div>
              ))}
            </div>
          </div>
        </div>

        {/* Center: Composite Index + Chart */}
        <div className="p-4 sm:p-6 border-b lg:border-b-0 lg:border-r border-[#1D263B]">
          <div className="flex justify-between items-start mb-4 sm:mb-6">
            <div>
              <span className="label-gold">Composite Index</span>
              <div className="font-mono text-3xl sm:text-5xl mt-2">12,845.02</div>
            </div>
            <div className="w-5 h-5 border border-[#C9A84C] flex items-center justify-center text-[#C9A84C] text-sm">
              &#8599;
            </div>
          </div>

          {/* Chart area */}
          <div className="w-full h-40 sm:h-48 relative border border-[#1D263B] overflow-hidden grid-line">
            <div className="absolute top-3 left-3 sm:top-4 sm:left-4 bg-[#0E1528] border border-[#C9A84C] px-2 py-1.5 sm:px-3 sm:py-2 flex items-center gap-2 sm:gap-3 z-10">
              <div className="w-3 h-3 border-t border-r border-[#C9A84C] rotate-[-45deg]" />
              <div className="font-mono text-[10px] sm:text-[11px]">
                <div>ALL-TIME HIGH</div>
                <div className="text-[#6E7B98]">NOV 2023</div>
              </div>
            </div>
            <div
              className="absolute bottom-0 left-0 w-full h-24"
              style={{
                clipPath: 'polygon(0% 100%, 10% 80%, 20% 60%, 30% 70%, 40% 40%, 50% 50%, 60% 30%, 70% 45%, 80% 20%, 90% 35%, 100% 10%, 100% 100%)',
                background: 'linear-gradient(to bottom, rgba(201, 168, 76, 0.2), transparent)',
                borderTop: '2px solid #C9A84C',
              }}
            />
          </div>

          {/* Timeframe */}
          <div className="mt-8 sm:mt-12">
            <div className="flex justify-between mb-3">
              <span className="label-gold">Timeframe</span>
              <span className="font-mono text-sm sm:text-base">1 YEAR</span>
            </div>
            <div className="relative h-1 bg-[#1D263B]">
              <div className="absolute w-3 h-3 bg-[#C9A84C] rounded-full top-1/2 -translate-y-1/2" style={{ left: '65%' }} />
            </div>
            <div className="flex justify-between mt-2">
              <span className="label-gold">1D</span>
              <span className="label-gold">ALL</span>
            </div>
          </div>
        </div>

        {/* Right sidebar: Top Movers */}
        <div className="p-4 sm:p-6">
          <div className="flex justify-between items-center mb-4 sm:mb-6">
            <span className="label-gold">Top Movers</span>
            <Link href="/watches" className="label-gold border-b border-[#C9A84C] pb-[2px] font-mono hover:text-[#E0C782] transition-colors">
              VIEW ALL
            </Link>
          </div>

          <div className="flex flex-col gap-0">
            {trendingWatches.map((watch) => (
              <Link
                key={watch.ref}
                href={`/watches/${watch.ref}`}
                className="flex justify-between items-center min-h-[48px] py-3 px-1 sm:px-0 border-b border-[#1D263B] hover:pl-2 hover:pr-2 hover:bg-[#141C31] hover:border-[#C9A84C] transition-all cursor-pointer"
              >
                <div className="min-w-0 flex-1 mr-3">
                  <span className="text-[13px] font-medium uppercase tracking-wide block truncate">{watch.model}</span>
                  <span className="block text-[10px] text-[#6E7B98] mt-1">{watch.brand}</span>
                </div>
                <div className="text-right shrink-0">
                  <div className="font-mono text-[13px]">{formatPrice(watch.price)}</div>
                  <div className={`label-gold mt-0.5 ${watch.trend > 0 ? 'text-[#4CAF50]' : watch.trend < 0 ? 'text-[#F44336]' : 'text-[#6E7B98]'}`}>
                    {formatTrend(watch.trend)}
                  </div>
                </div>
              </Link>
            ))}
          </div>

          {/* System Status — hidden on mobile */}
          <div className="hidden sm:block mt-12">
            <span className="label-gold">System Status</span>
            <div className="grid grid-cols-2 gap-3 mt-3">
              <div className="bg-[#141C31] border border-[#1D263B] p-3 text-center">
                <div className="w-5 h-5 border border-[#C9A84C] rounded-full mx-auto mb-2" />
                <span className="label-gold">API</span>
              </div>
              <div className="bg-[#141C31] border border-[#1D263B] p-3 text-center">
                <div className="w-5 h-5 border border-[#C9A84C] mx-auto mb-2 flex items-center justify-center text-[#C9A84C] text-[10px]">&#10003;</div>
                <span className="label-gold">Sync</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}
