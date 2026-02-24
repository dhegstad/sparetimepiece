import { redirect } from 'next/navigation'
import Link from 'next/link'
import { createClient } from '@/lib/supabase/server'
import { getUserListings } from '@/lib/queries/listings'
import { formatPrice } from '@/lib/utils'
import { ListingStatusActions } from '@/components/dashboard/listing-status-actions'
import type { Metadata } from 'next'

export const metadata: Metadata = { title: 'My Listings' }

const statusStyles: Record<string, string> = {
  active: 'border-[#4CAF50] text-[#4CAF50]',
  draft: 'border-[#1D263B] text-[#6E7B98]',
  sold: 'border-[#C9A84C] text-[#C9A84C]',
  removed: 'border-[#F44336] text-[#F44336]',
}

export default async function MyListingsPage() {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) redirect('/login')

  const listings = await getUserListings(user.id)

  return (
    <div>
      <div className="flex items-center justify-between mb-6 pb-6 border-b border-[#1D263B]">
        <div>
          <span className="label-gold">Marketplace</span>
          <div className="font-mono text-2xl mt-2 uppercase">My Listings</div>
        </div>
        <Link href="/marketplace/create">
          <button className="px-4 py-3 text-[10px] uppercase tracking-wider font-mono border border-[#C9A84C] text-[#C9A84C] hover:bg-[#C9A84C] hover:text-[#0A0F1E] transition-all">
            + New Listing
          </button>
        </Link>
      </div>

      {listings.length === 0 ? (
        <div className="flex items-center justify-center h-48 text-[#6E7B98] font-mono text-xs border border-[#1D263B]">
          NO LISTINGS — CREATE YOUR FIRST LISTING
        </div>
      ) : (
        <div className="overflow-x-auto">
          <table className="w-full">
            <thead>
              <tr className="border-b border-[#1D263B]">
                <th className="text-left px-4 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">Title</th>
                <th className="text-right px-4 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">Price</th>
                <th className="text-right px-4 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">Views</th>
                <th className="text-right px-4 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal">Status</th>
                <th className="text-right px-4 py-3 text-[10px] uppercase tracking-wider text-[#6E7B98] font-normal"></th>
              </tr>
            </thead>
            <tbody>
              {listings.map((listing) => (
                <tr key={listing.id} className="border-b border-[#1D263B] hover:bg-[#0E1528] transition-colors">
                  <td className="px-4 py-4">
                    <Link href={`/marketplace/${listing.id}`}>
                      <div className="font-medium text-[13px] hover:text-[#C9A84C] transition-colors">{listing.title}</div>
                    </Link>
                  </td>
                  <td className="px-4 py-4 text-right font-mono text-[13px]">{formatPrice(listing.price_usd)}</td>
                  <td className="px-4 py-4 text-right font-mono text-[11px] text-[#6E7B98]">{listing.view_count}</td>
                  <td className="px-4 py-4 text-right">
                    <span className={`text-[9px] uppercase tracking-wider border px-2 py-1 font-mono ${statusStyles[listing.status] || statusStyles.draft}`}>
                      {listing.status}
                    </span>
                  </td>
                  <td className="px-4 py-4 text-right">
                    <ListingStatusActions listingId={listing.id} currentStatus={listing.status} />
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}
    </div>
  )
}
