import { Suspense } from 'react'
import { getWatches, getBrands } from '@/lib/queries/watches'
import { WatchCard } from '@/components/watches/watch-card'
import { WatchSearch } from '@/components/watches/watch-search'
import Link from 'next/link'
import type { Metadata } from 'next'

export const metadata: Metadata = {
  title: 'Browse Watches',
  description: 'Browse and search luxury watches from top Swiss brands. Track prices and market trends.',
}

function WatchGridSkeleton() {
  return (
    <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-px bg-[#1D263B]">
      {Array.from({ length: 8 }).map((_, i) => (
        <div key={i} className="bg-[#0A0F1E] p-5">
          <div className="aspect-square bg-[#141C31] mb-4 animate-pulse" />
          <div className="h-3 bg-[#141C31] w-2/3 mb-2 animate-pulse" />
          <div className="h-3 bg-[#141C31] w-1/2 animate-pulse" />
        </div>
      ))}
    </div>
  )
}

async function WatchFilters({ brand }: { brand?: string }) {
  const brands = await getBrands()

  return (
    <div className="flex flex-wrap gap-1">
      <Link href="/watches">
        <button className={`px-3 py-2 text-[10px] uppercase tracking-wider font-mono border transition-all ${
          !brand
            ? 'border-[#C9A84C] text-[#C9A84C]'
            : 'border-[#1D263B] text-[#6E7B98] hover:border-[#C9A84C] hover:text-[#C9A84C]'
        }`}>
          All
        </button>
      </Link>
      {brands.map((b) => (
        <Link key={b.slug} href={`/watches?brand=${b.slug}`}>
          <button className={`px-3 py-2 text-[10px] uppercase tracking-wider font-mono border transition-all ${
            brand === b.slug
              ? 'border-[#C9A84C] text-[#C9A84C]'
              : 'border-[#1D263B] text-[#6E7B98] hover:border-[#C9A84C] hover:text-[#C9A84C]'
          }`}>
            {b.name}
          </button>
        </Link>
      ))}
    </div>
  )
}

async function WatchGrid({
  search,
  brand,
  sort,
  page,
}: {
  search?: string
  brand?: string
  sort?: string
  page: number
}) {
  const limit = 24
  const offset = (page - 1) * limit
  const { watches, total } = await getWatches({
    search,
    brand,
    sort,
    limit,
    offset,
  })
  const totalPages = Math.ceil(total / limit)

  if (watches.length === 0) {
    return (
      <div className="flex items-center justify-center h-64 text-[#6E7B98] font-mono text-xs border border-[#1D263B]">
        NO RESULTS FOUND — ADJUST SEARCH PARAMETERS
      </div>
    )
  }

  return (
    <>
      <div className="font-mono text-[10px] text-[#6E7B98] mb-4 uppercase tracking-wider">
        {total} assets found
      </div>
      <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
        {watches.map((watch) => (
          <WatchCard key={watch.id} watch={watch} />
        ))}
      </div>
      {totalPages > 1 && (
        <div className="flex items-center justify-center gap-4 mt-8 pt-6 border-t border-[#1D263B]">
          {page > 1 && (
            <Link href={`/watches?page=${page - 1}${brand ? `&brand=${brand}` : ''}${search ? `&search=${search}` : ''}${sort ? `&sort=${sort}` : ''}`}>
              <button className="px-4 py-2 text-[10px] uppercase tracking-wider font-mono border border-[#1D263B] text-[#6E7B98] hover:border-[#C9A84C] hover:text-[#C9A84C] transition-all">
                Previous
              </button>
            </Link>
          )}
          <span className="font-mono text-[10px] text-[#6E7B98] uppercase tracking-wider">
            Page {page} of {totalPages}
          </span>
          {page < totalPages && (
            <Link href={`/watches?page=${page + 1}${brand ? `&brand=${brand}` : ''}${search ? `&search=${search}` : ''}${sort ? `&sort=${sort}` : ''}`}>
              <button className="px-4 py-2 text-[10px] uppercase tracking-wider font-mono border border-[#1D263B] text-[#6E7B98] hover:border-[#C9A84C] hover:text-[#C9A84C] transition-all">
                Next
              </button>
            </Link>
          )}
        </div>
      )}
    </>
  )
}

export default async function WatchesPage({
  searchParams,
}: {
  searchParams: Promise<{ search?: string; brand?: string; sort?: string; page?: string }>
}) {
  const params = await searchParams
  const page = parseInt(params.page || '1', 10)

  return (
    <div className="max-w-[1440px] mx-auto border-l border-r border-[#1D263B]">
      <div className="p-6 border-b border-[#1D263B]">
        <span className="label-gold">Asset Database</span>
        <h1 className="text-3xl font-light uppercase mt-2">Browse Watches</h1>
      </div>

      <div className="p-6 border-b border-[#1D263B] space-y-4">
        <div className="flex flex-col sm:flex-row gap-4">
          <div className="flex-1">
            <WatchSearch defaultValue={params.search} />
          </div>
          <SortSelect current={params.sort} brand={params.brand} search={params.search} />
        </div>
        <Suspense fallback={<div className="h-10 bg-[#141C31] animate-pulse" />}>
          <WatchFilters brand={params.brand} />
        </Suspense>
      </div>

      <div className="p-6">
        <Suspense fallback={<WatchGridSkeleton />}>
          <WatchGrid search={params.search} brand={params.brand} sort={params.sort} page={page} />
        </Suspense>
      </div>
    </div>
  )
}

function SortSelect({ current, brand, search }: { current?: string; brand?: string; search?: string }) {
  const buildHref = (sort: string) => {
    const p = new URLSearchParams()
    if (brand) p.set('brand', brand)
    if (search) p.set('search', search)
    if (sort) p.set('sort', sort)
    return `/watches?${p.toString()}`
  }

  return (
    <div className="flex gap-1">
      <Link href={buildHref('price_asc')}>
        <button className={`px-3 py-2 text-[10px] uppercase tracking-wider font-mono border transition-all ${
          current === 'price_asc'
            ? 'border-[#C9A84C] text-[#C9A84C]'
            : 'border-[#1D263B] text-[#6E7B98] hover:border-[#C9A84C] hover:text-[#C9A84C]'
        }`}>
          Price ↑
        </button>
      </Link>
      <Link href={buildHref('price_desc')}>
        <button className={`px-3 py-2 text-[10px] uppercase tracking-wider font-mono border transition-all ${
          current === 'price_desc'
            ? 'border-[#C9A84C] text-[#C9A84C]'
            : 'border-[#1D263B] text-[#6E7B98] hover:border-[#C9A84C] hover:text-[#C9A84C]'
        }`}>
          Price ↓
        </button>
      </Link>
      <Link href={buildHref('trend')}>
        <button className={`px-3 py-2 text-[10px] uppercase tracking-wider font-mono border transition-all ${
          current === 'trend'
            ? 'border-[#C9A84C] text-[#C9A84C]'
            : 'border-[#1D263B] text-[#6E7B98] hover:border-[#C9A84C] hover:text-[#C9A84C]'
        }`}>
          Trending
        </button>
      </Link>
    </div>
  )
}
