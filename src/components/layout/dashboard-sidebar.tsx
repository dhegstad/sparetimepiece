'use client'

import Link from 'next/link'
import { usePathname } from 'next/navigation'
import { cn } from '@/lib/utils'

const sidebarLinks = [
  { label: 'Overview', href: '/dashboard' },
  { label: 'Watchlist', href: '/dashboard/watchlist' },
  { label: 'Alerts', href: '/dashboard/alerts' },
  { label: 'Listings', href: '/dashboard/listings' },
  { label: 'Messages', href: '/dashboard/messages' },
  { label: 'Settings', href: '/dashboard/settings' },
]

export function DashboardSidebar() {
  const pathname = usePathname()

  return (
    <aside className="hidden lg:flex w-64 flex-col border-r border-[#1D263B] bg-[#0A0F1E]">
      <div className="p-6 border-b border-[#1D263B]">
        <span className="label-gold">Account Terminal</span>
      </div>
      <nav className="flex flex-col">
        {sidebarLinks.map((link) => {
          const isActive = pathname === link.href
          return (
            <Link
              key={link.href}
              href={link.href}
              className={cn(
                'px-6 py-4 text-[11px] uppercase tracking-[0.1em] border-b border-[#1D263B] transition-all',
                isActive
                  ? 'text-[#C9A84C] bg-[#141C31] border-l-2 border-l-[#C9A84C]'
                  : 'text-[#6E7B98] hover:text-[#C9A84C] hover:bg-[#0E1528]'
              )}
            >
              {link.label}
            </Link>
          )
        })}
      </nav>
    </aside>
  )
}

export function DashboardMobileNav() {
  const pathname = usePathname()

  return (
    <nav className="flex lg:hidden overflow-x-auto border-b border-[#1D263B]">
      {sidebarLinks.map((link) => {
        const isActive = pathname === link.href
        return (
          <Link
            key={link.href}
            href={link.href}
            className={cn(
              'whitespace-nowrap px-4 py-3 text-[10px] uppercase tracking-[0.1em] border-b-2 transition-colors',
              isActive
                ? 'border-b-[#C9A84C] text-[#C9A84C]'
                : 'border-b-transparent text-[#6E7B98] hover:text-[#C9A84C]'
            )}
          >
            {link.label}
          </Link>
        )
      })}
    </nav>
  )
}
