import { notFound } from 'next/navigation'
import Link from 'next/link'
import { getListingById } from '@/lib/queries/listings'
import { formatPrice } from '@/lib/utils'
import type { Metadata } from 'next'

const conditionLabels: Record<string, string> = {
  new: 'New',
  unworn: 'Unworn',
  very_good: 'Very Good',
  good: 'Good',
  fair: 'Fair',
}

export async function generateMetadata({
  params,
}: {
  params: Promise<{ id: string }>
}): Promise<Metadata> {
  const { id } = await params
  try {
    const listing = await getListingById(id)
    return {
      title: listing.title,
      description: `${listing.title} - ${formatPrice(listing.price_usd)} - ${conditionLabels[listing.condition]} condition`,
    }
  } catch {
    return { title: 'Listing Not Found' }
  }
}

export default async function ListingDetailPage({
  params,
}: {
  params: Promise<{ id: string }>
}) {
  const { id } = await params
  let listing
  try {
    listing = await getListingById(id)
  } catch {
    notFound()
  }
  if (!listing) notFound()

  const marketPrice = listing.watches?.current_market_price_usd
  const priceDiff = marketPrice ? ((listing.price_usd - marketPrice) / marketPrice) * 100 : null

  return (
    <div className="max-w-[1440px] mx-auto border-l border-r border-[#1D263B]">
      {/* Header */}
      <header className="px-6 py-12 border-b border-[#1D263B]">
        <span className="label-gold">Listing Detail</span>
        <h1 className="text-3xl font-light uppercase mt-2">{listing.title}</h1>
        <div className="flex flex-wrap gap-3 mt-4">
          <span className="text-[9px] uppercase tracking-wider border border-[#C9A84C] px-2 py-1 text-[#C9A84C] font-mono">
            {conditionLabels[listing.condition]}
          </span>
          {listing.has_box && (
            <span className="text-[9px] uppercase tracking-wider border border-[#1D263B] px-2 py-1 text-[#6E7B98] font-mono">
              Box Included
            </span>
          )}
          {listing.has_papers && (
            <span className="text-[9px] uppercase tracking-wider border border-[#1D263B] px-2 py-1 text-[#6E7B98] font-mono">
              Papers Included
            </span>
          )}
          {listing.year_of_purchase && (
            <span className="text-[9px] uppercase tracking-wider border border-[#1D263B] px-2 py-1 text-[#6E7B98] font-mono">
              Purchased {listing.year_of_purchase}
            </span>
          )}
          {listing.location && (
            <span className="text-[9px] uppercase tracking-wider border border-[#1D263B] px-2 py-1 text-[#6E7B98] font-mono">
              {listing.location}
            </span>
          )}
        </div>
      </header>

      {/* Main Grid */}
      <div className="grid grid-cols-1 lg:grid-cols-[1fr_380px] border-b border-[#1D263B]">
        {/* Left Column */}
        <div className="border-r border-[#1D263B]">
          {/* Image Gallery */}
          <div className="p-6 border-b border-[#1D263B]">
            <div className="aspect-[4/3] bg-[#141C31] border border-[#1D263B] flex items-center justify-center">
              {listing.listing_images && listing.listing_images.length > 0 ? (
                <div className="grid grid-cols-2 gap-px w-full h-full bg-[#1D263B]">
                  {listing.listing_images
                    .sort((a, b) => a.display_order - b.display_order)
                    .slice(0, 4)
                    .map((img) => (
                      <div key={img.id} className="bg-[#141C31] flex items-center justify-center text-[10px] text-[#6E7B98] font-mono">
                        {img.storage_path.split('/').pop()}
                      </div>
                    ))}
                </div>
              ) : (
                <span className="font-mono text-xs text-[#6E7B98] uppercase">No Images Available</span>
              )}
            </div>
          </div>

          {/* Description */}
          {listing.description && (
            <div className="p-6 border-b border-[#1D263B]">
              <span className="label-gold mb-3 block">Description</span>
              <p className="text-[13px] text-foreground leading-relaxed whitespace-pre-wrap">{listing.description}</p>
            </div>
          )}

          {/* Watch Details */}
          {listing.watches && (
            <div className="p-6 border-b border-[#1D263B]">
              <span className="label-gold mb-4 block">Watch Specifications</span>
              <div className="grid grid-cols-2 gap-x-8 gap-y-3">
                <div className="font-mono text-[11px]">
                  <span className="text-[#C9A84C]">BRAND:</span>{' '}
                  <span className="text-foreground">{listing.watches.brands?.name?.toUpperCase()}</span>
                </div>
                <div className="font-mono text-[11px]">
                  <span className="text-[#C9A84C]">MODEL:</span>{' '}
                  <span className="text-foreground">{listing.watches.model_name?.toUpperCase()}</span>
                </div>
                <div className="font-mono text-[11px]">
                  <span className="text-[#C9A84C]">REFERENCE:</span>{' '}
                  <span className="text-foreground">{listing.watches.reference_number}</span>
                </div>
                <div className="font-mono text-[11px]">
                  <span className="text-[#C9A84C]">MATERIAL:</span>{' '}
                  <span className="text-foreground">{listing.watches.case_material?.toUpperCase() || '—'}</span>
                </div>
              </div>
              <Link
                href={`/watches/${listing.watches.reference_number}`}
                className="inline-block mt-4 px-4 py-2 text-[10px] uppercase tracking-wider font-mono border border-[#1D263B] text-[#6E7B98] hover:border-[#C9A84C] hover:text-[#C9A84C] transition-all"
              >
                View Price History
              </Link>
            </div>
          )}
        </div>

        {/* Right Sidebar */}
        <aside>
          {/* Price */}
          <div className="p-6 border-b border-[#1D263B]">
            <span className="label-gold">Asking Price</span>
            <div className="font-mono text-3xl mt-2">{formatPrice(listing.price_usd)}</div>
            {priceDiff != null && (
              <div className="mt-3">
                <div className="font-mono text-[11px] text-[#6E7B98]">
                  {priceDiff > 0 ? 'Above' : 'Below'} market avg by{' '}
                  <span className={priceDiff > 0 ? 'text-[#F44336]' : 'text-[#4CAF50]'}>
                    {Math.abs(priceDiff).toFixed(1)}%
                  </span>
                </div>
                <div className="font-mono text-[10px] text-[#6E7B98] mt-1">
                  Market avg: {formatPrice(marketPrice)}
                </div>
              </div>
            )}
            <Link href={`/dashboard/messages?listing=${listing.id}`}>
              <button className="w-full mt-4 py-4 text-center uppercase font-mono text-xs tracking-wider border border-[#C9A84C] text-[#C9A84C] hover:bg-[#C9A84C] hover:text-[#0A0F1E] transition-all">
                Contact Seller
              </button>
            </Link>
          </div>

          {/* Seller */}
          <div className="p-6 border-b border-[#1D263B]">
            <span className="label-gold mb-4 block">Seller Profile</span>
            <div className="flex items-center gap-4">
              <div className="h-12 w-12 border border-[#1D263B] flex items-center justify-center">
                <span className="font-mono text-lg text-[#C9A84C]">
                  {listing.profiles?.username?.[0]?.toUpperCase() || 'U'}
                </span>
              </div>
              <div>
                <div className="font-mono text-[13px] uppercase">{listing.profiles?.username || 'Unknown'}</div>
                <div className="font-mono text-[10px] text-[#6E7B98] mt-1">
                  Member since{' '}
                  {listing.profiles?.created_at
                    ? new Date(listing.profiles.created_at).getFullYear()
                    : '—'}
                </div>
              </div>
            </div>
          </div>

          {/* System Note */}
          <div className="p-6" style={{ background: 'rgba(201, 168, 76, 0.03)' }}>
            <span className="label-gold mb-2 block">System Note</span>
            <p className="text-[11px] text-foreground leading-relaxed">
              All transactions are between buyers and sellers directly.
              Verify authenticity and condition before purchase.
            </p>
          </div>
        </aside>
      </div>
    </div>
  )
}
