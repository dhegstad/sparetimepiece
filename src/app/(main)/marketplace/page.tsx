import { Suspense } from 'react'
import Link from 'next/link'
import { getListings } from '@/lib/queries/listings'
import { formatPrice } from '@/lib/utils'
import type { Metadata } from 'next'

export const metadata: Metadata = {
  title: 'Marketplace',
  description: 'Buy and sell luxury watches on the Sparetimepiece marketplace.',
}

const conditionLabels: Record<string, string> = {
  new: 'New',
  unworn: 'Unworn',
  very_good: 'Very Good',
  good: 'Good',
  fair: 'Fair',
}

function ListingCardSkeleton() {
  return (
    <div className="border border-[#1D263B] p-5">
      <div className="aspect-[4/3] bg-[#141C31] mb-4 animate-pulse" />
      <div className="h-3 bg-[#141C31] w-2/3 mb-2 animate-pulse" />
      <div className="h-3 bg-[#141C31] w-1/2 animate-pulse" />
    </div>
  )
}

async function ListingGrid({
  search,
  condition,
  sort,
  page,
}: {
  search?: string
  condition?: string
  sort?: string
  page: number
}) {
  const limit = 24
  const offset = (page - 1) * limit
  const { listings, total } = await getListings({ search, condition: condition as 'new' | 'unworn' | 'very_good' | 'good' | 'fair' | undefined, sort, limit, offset })
  const totalPages = Math.ceil(total / limit)

  if (listings.length === 0) {
    return (
      <div className="flex items-center justify-center h-64 text-[#6E7B98] font-mono text-xs border border-[#1D263B]">
        NO LISTINGS FOUND — CHECK BACK LATER
      </div>
    )
  }

  return (
    <>
      <div className="font-mono text-[10px] text-[#6E7B98] mb-4 uppercase tracking-wider">
        {total} listings
      </div>
      <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
        {listings.map((listing) => (
          <Link key={listing.id} href={`/marketplace/${listing.id}`}>
            <div className="border border-[#1D263B] p-5 hover:border-[#C9A84C] hover:bg-[#0E1528] transition-all cursor-pointer group">
              <div className="aspect-[4/3] bg-[#141C31] border border-[#1D263B] mb-4 flex items-center justify-center">
                <span className="font-mono text-[10px] text-[#6E7B98] uppercase">
                  {listing.listing_images?.[0] ? 'Image' : 'No Image'}
                </span>
              </div>
              <h3 className="font-mono text-[12px] uppercase group-hover:text-[#C9A84C] transition-colors line-clamp-2">
                {listing.title}
              </h3>
              <div className="flex flex-wrap gap-2 mt-3">
                <span className="text-[9px] uppercase tracking-wider border border-[#1D263B] px-2 py-1 text-[#6E7B98] font-mono">
                  {conditionLabels[listing.condition]}
                </span>
                {listing.has_box && (
                  <span className="text-[9px] uppercase tracking-wider border border-[#1D263B] px-2 py-1 text-[#6E7B98] font-mono">
                    Box
                  </span>
                )}
                {listing.has_papers && (
                  <span className="text-[9px] uppercase tracking-wider border border-[#1D263B] px-2 py-1 text-[#6E7B98] font-mono">
                    Papers
                  </span>
                )}
              </div>
              <div className="flex items-center justify-between mt-3 pt-3 border-t border-[#1D263B]">
                <span className="font-mono text-sm">{formatPrice(listing.price_usd)}</span>
                <span className="font-mono text-[10px] text-[#6E7B98]">
                  {listing.profiles?.username || 'Unknown'}
                </span>
              </div>
            </div>
          </Link>
        ))}
      </div>
      {totalPages > 1 && (
        <div className="flex items-center justify-center gap-4 mt-8 pt-6 border-t border-[#1D263B]">
          {page > 1 && (
            <Link href={`/marketplace?page=${page - 1}${condition ? `&condition=${condition}` : ''}${sort ? `&sort=${sort}` : ''}`}>
              <button className="px-4 py-2 text-[10px] uppercase tracking-wider font-mono border border-[#1D263B] text-[#6E7B98] hover:border-[#C9A84C] hover:text-[#C9A84C] transition-all">
                Previous
              </button>
            </Link>
          )}
          <span className="font-mono text-[10px] text-[#6E7B98] uppercase tracking-wider">
            Page {page} of {totalPages}
          </span>
          {page < totalPages && (
            <Link href={`/marketplace?page=${page + 1}${condition ? `&condition=${condition}` : ''}${sort ? `&sort=${sort}` : ''}`}>
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

export default async function MarketplacePage({
  searchParams,
}: {
  searchParams: Promise<{ search?: string; condition?: string; sort?: string; page?: string }>
}) {
  const params = await searchParams
  const page = parseInt(params.page || '1', 10)

  return (
    <div className="max-w-[1440px] mx-auto border-l border-r border-[#1D263B]">
      <div className="px-6 py-12 border-b border-[#1D263B] flex items-end justify-between">
        <div>
          <span className="label-gold">Secondary Market</span>
          <h1 className="text-3xl font-light uppercase mt-2">Marketplace</h1>
        </div>
        <Link href="/marketplace/create">
          <button className="px-4 py-3 text-[10px] uppercase tracking-wider font-mono border border-[#C9A84C] text-[#C9A84C] hover:bg-[#C9A84C] hover:text-[#0A0F1E] transition-all">
            + Sell a Watch
          </button>
        </Link>
      </div>

      <div className="px-6 py-4 border-b border-[#1D263B] flex flex-wrap gap-1 items-center">
        <Link href="/marketplace">
          <button className={`px-3 py-2 text-[10px] uppercase tracking-wider font-mono border transition-all ${
            !params.condition
              ? 'border-[#C9A84C] text-[#C9A84C]'
              : 'border-[#1D263B] text-[#6E7B98] hover:border-[#C9A84C] hover:text-[#C9A84C]'
          }`}>
            All
          </button>
        </Link>
        {Object.entries(conditionLabels).map(([key, label]) => (
          <Link key={key} href={`/marketplace?condition=${key}`}>
            <button className={`px-3 py-2 text-[10px] uppercase tracking-wider font-mono border transition-all ${
              params.condition === key
                ? 'border-[#C9A84C] text-[#C9A84C]'
                : 'border-[#1D263B] text-[#6E7B98] hover:border-[#C9A84C] hover:text-[#C9A84C]'
            }`}>
              {label}
            </button>
          </Link>
        ))}
        <div className="ml-auto flex gap-1">
          <Link href={`/marketplace?sort=price_asc${params.condition ? `&condition=${params.condition}` : ''}`}>
            <button className={`px-3 py-2 text-[10px] uppercase tracking-wider font-mono border transition-all ${
              params.sort === 'price_asc'
                ? 'border-[#C9A84C] text-[#C9A84C]'
                : 'border-[#1D263B] text-[#6E7B98] hover:border-[#C9A84C] hover:text-[#C9A84C]'
            }`}>
              Price ↑
            </button>
          </Link>
          <Link href={`/marketplace?sort=price_desc${params.condition ? `&condition=${params.condition}` : ''}`}>
            <button className={`px-3 py-2 text-[10px] uppercase tracking-wider font-mono border transition-all ${
              params.sort === 'price_desc'
                ? 'border-[#C9A84C] text-[#C9A84C]'
                : 'border-[#1D263B] text-[#6E7B98] hover:border-[#C9A84C] hover:text-[#C9A84C]'
            }`}>
              Price ↓
            </button>
          </Link>
        </div>
      </div>

      <div className="p-6">
        <Suspense fallback={
          <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
            {Array.from({ length: 8 }).map((_, i) => <ListingCardSkeleton key={i} />)}
          </div>
        }>
          <ListingGrid search={params.search} condition={params.condition} sort={params.sort} page={page} />
        </Suspense>
      </div>
    </div>
  )
}
