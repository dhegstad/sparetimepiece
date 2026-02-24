import Link from 'next/link'
import { getBrands } from '@/lib/queries/watches'
import type { Metadata } from 'next'

export const metadata: Metadata = {
  title: 'INDICES | Brand Index',
  description: 'Market intelligence on the top 10 Swiss luxury watch brands.',
}

export default async function BrandsPage() {
  const brands = await getBrands()

  return (
    <div className="max-w-[1280px] mx-auto border-l border-r border-[#1D263B] min-h-[calc(100vh-60px)] flex flex-col">
      <header className="px-6 py-12 border-b border-[#1D263B] flex justify-between items-end">
        <div>
          <span className="label-gold">Market Intelligence</span>
          <h1 className="text-3xl uppercase tracking-[0.1em] mt-2">Brand Indices</h1>
        </div>
      </header>

      <div className="flex-1">
        <table className="w-full border-collapse text-left">
          <thead className="sticky top-0 bg-[#0A0F1E] z-10">
            <tr>
              <th className="px-6 py-6 border-b border-[#1D263B] text-[#C9A84C] text-[10px] uppercase tracking-[0.1em] font-normal">#</th>
              <th className="px-6 py-6 border-b border-[#1D263B] text-[#C9A84C] text-[10px] uppercase tracking-[0.1em] font-normal">Brand Name</th>
              <th className="px-6 py-6 border-b border-[#1D263B] text-[#C9A84C] text-[10px] uppercase tracking-[0.1em] font-normal">Founded</th>
              <th className="px-6 py-6 border-b border-[#1D263B] text-[#C9A84C] text-[10px] uppercase tracking-[0.1em] font-normal">Country</th>
            </tr>
          </thead>
          <tbody>
            {brands.map((brand, i) => (
              <tr key={brand.id} className="group hover:bg-[#0E1528] transition-colors">
                <td className="px-6 py-6 border-b border-[#1D263B] font-mono text-[#6E7B98]">
                  {String(i + 1).padStart(2, '0')}
                </td>
                <td className="px-6 py-6 border-b border-[#1D263B]">
                  <Link href={`/brands/${brand.slug}`} className="flex items-center gap-3">
                    <div className="w-8 h-8 border border-[#C9A84C] flex items-center justify-center font-mono text-xs text-[#C9A84C]">
                      {brand.name[0]}
                    </div>
                    <div>
                      <div className="font-medium group-hover:text-[#C9A84C] transition-colors">{brand.name}</div>
                      <div className="text-[9px] text-[#6E7B98] uppercase tracking-wider mt-0.5">
                        {brand.description?.slice(0, 60)}...
                      </div>
                    </div>
                  </Link>
                </td>
                <td className="px-6 py-6 border-b border-[#1D263B] font-mono text-sm">
                  {brand.founded_year || '—'}
                </td>
                <td className="px-6 py-6 border-b border-[#1D263B] font-mono text-sm text-[#6E7B98]">
                  {brand.country}
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  )
}
