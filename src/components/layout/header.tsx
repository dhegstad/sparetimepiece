'use client'

import Link from 'next/link'
import { usePathname } from 'next/navigation'
import { useState, useEffect } from 'react'
import { Menu, LogOut } from 'lucide-react'
import { Button } from '@/components/ui/button'
import { Sheet, SheetContent, SheetTrigger, SheetTitle } from '@/components/ui/sheet'
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'
import { siteConfig } from '@/config/site'
import { createClient } from '@/lib/supabase/client'
import { signOut } from '@/lib/actions/auth'
import { cn } from '@/lib/utils'
import type { User as SupabaseUser } from '@supabase/supabase-js'

export function Header() {
  const pathname = usePathname()
  const [user, setUser] = useState<SupabaseUser | null>(null)
  const [open, setOpen] = useState(false)

  useEffect(() => {
    const supabase = createClient()
    if (!supabase) return

    supabase.auth.getUser().then(({ data }) => setUser(data.user))

    const { data: { subscription } } = supabase.auth.onAuthStateChange((_event, session) => {
      setUser(session?.user ?? null)
    })

    return () => subscription.unsubscribe()
  }, [])

  const navLinks = siteConfig.nav.main

  return (
    <header className="sticky top-0 z-50 w-full border-b border-[#1D263B] bg-[#0A0F1E]">
      <div className="max-w-[1440px] mx-auto flex h-[60px] items-center justify-between px-6">
        <Link href="/" className="text-[#C9A84C] font-semibold tracking-[0.2em] text-base uppercase">
          SPARETIMEPIECE
        </Link>

        <nav className="hidden md:flex items-center gap-6">
          {navLinks.map((link) => (
            <Link
              key={link.href}
              href={link.href}
              className={cn(
                'text-[11px] uppercase tracking-[0.1em] transition-colors',
                pathname.startsWith(link.href)
                  ? 'text-[#C9A84C]'
                  : 'text-[#6E7B98] hover:text-[#C9A84C]'
              )}
            >
              {link.label}
            </Link>
          ))}
        </nav>

        <div className="flex items-center gap-4">
          {user ? (
            <DropdownMenu>
              <DropdownMenuTrigger asChild>
                <button className="text-[#6E7B98] font-mono text-[11px] uppercase hover:text-[#C9A84C] transition-colors">
                  {user.user_metadata?.username || user.email?.split('@')[0] || 'USER'}
                </button>
              </DropdownMenuTrigger>
              <DropdownMenuContent align="end" className="w-48 bg-[#0E1528] border-[#1D263B]">
                <DropdownMenuItem asChild>
                  <Link href="/dashboard" className="cursor-pointer text-[11px] uppercase tracking-wider">
                    Dashboard
                  </Link>
                </DropdownMenuItem>
                <DropdownMenuSeparator className="bg-[#1D263B]" />
                <DropdownMenuItem
                  className="cursor-pointer text-[11px] uppercase tracking-wider text-[#F44336]"
                  onSelect={async () => { await signOut() }}
                >
                  <LogOut className="mr-2 h-3 w-3" />
                  Sign out
                </DropdownMenuItem>
              </DropdownMenuContent>
            </DropdownMenu>
          ) : (
            <div className="hidden sm:flex items-center gap-4">
              <Link href="/login" className="text-[#6E7B98] text-[11px] uppercase tracking-[0.1em] hover:text-[#C9A84C] transition-colors">
                Sign in
              </Link>
              <Link
                href="/signup"
                className="border border-[#C9A84C] text-[#C9A84C] px-4 py-2 font-mono text-[11px] uppercase tracking-wider hover:bg-[#C9A84C] hover:text-[#0A0F1E] transition-all"
              >
                Access Terminal
              </Link>
            </div>
          )}

          <Sheet open={open} onOpenChange={setOpen}>
            <SheetTrigger asChild>
              <Button variant="ghost" size="icon" className="md:hidden text-[#6E7B98]">
                <Menu className="h-5 w-5" />
              </Button>
            </SheetTrigger>
            <SheetContent side="right" className="w-72 bg-[#0E1528] border-[#1D263B]">
              <SheetTitle className="sr-only">Navigation</SheetTitle>
              <div className="flex flex-col gap-1 mt-8">
                {navLinks.map((link) => (
                  <Link
                    key={link.href}
                    href={link.href}
                    onClick={() => setOpen(false)}
                    className={cn(
                      'px-4 py-3 text-[11px] uppercase tracking-[0.1em] border-b border-[#1D263B] transition-colors',
                      pathname.startsWith(link.href)
                        ? 'text-[#C9A84C]'
                        : 'text-[#6E7B98] hover:text-[#C9A84C]'
                    )}
                  >
                    {link.label}
                  </Link>
                ))}
                {!user && (
                  <div className="mt-4 space-y-2 px-4">
                    <Link href="/login" onClick={() => setOpen(false)}>
                      <button className="w-full border border-[#1D263B] text-[#6E7B98] py-2 text-[11px] uppercase tracking-wider">
                        Sign in
                      </button>
                    </Link>
                    <Link href="/signup" onClick={() => setOpen(false)}>
                      <button className="w-full border border-[#C9A84C] text-[#C9A84C] py-2 text-[11px] uppercase tracking-wider hover:bg-[#C9A84C] hover:text-[#0A0F1E] transition-all">
                        Access Terminal
                      </button>
                    </Link>
                  </div>
                )}
              </div>
            </SheetContent>
          </Sheet>
        </div>
      </div>
    </header>
  )
}
