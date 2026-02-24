import { redirect } from 'next/navigation'
import Link from 'next/link'
import { createClient } from '@/lib/supabase/server'
import { getDashboardStats } from '@/lib/queries/dashboard'
import type { Metadata } from 'next'

export const metadata: Metadata = { title: 'Dashboard' }

export default async function DashboardPage() {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) redirect('/login')

  const stats = await getDashboardStats(user.id)

  const cards = [
    { label: 'Watchlist', value: stats.watchlistCount, href: '/dashboard/watchlist' },
    { label: 'Active Alerts', value: stats.activeAlerts, href: '/dashboard/alerts' },
    { label: 'Listings', value: stats.listingCount, href: '/dashboard/listings' },
    { label: 'Unread Messages', value: stats.unreadMessages, href: '/dashboard/messages' },
  ]

  return (
    <div>
      <div className="mb-8">
        <span className="label-gold">Account Overview</span>
        <div className="font-mono text-2xl mt-2 uppercase">
          {user.user_metadata?.username || user.email?.split('@')[0] || 'USER'}
        </div>
      </div>

      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
        {cards.map((card) => (
          <Link key={card.label} href={card.href}>
            <div className="border border-[#1D263B] p-6 hover:border-[#C9A84C] hover:bg-[#141C31] transition-all cursor-pointer">
              <span className="label-gold">{card.label}</span>
              <div className="font-mono text-3xl mt-2">{card.value}</div>
            </div>
          </Link>
        ))}
      </div>
    </div>
  )
}
