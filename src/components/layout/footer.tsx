import Link from 'next/link'

export function Footer() {
  return (
    <footer className="border-t border-[#1D263B] mt-auto">
      <div className="max-w-[1440px] mx-auto px-4 sm:px-6 py-4 sm:py-0 sm:h-[60px] flex flex-col sm:flex-row items-center justify-between gap-3 sm:gap-0 text-[#6E7B98] text-[11px] uppercase">
        <div>&copy; {new Date().getFullYear()} Sparetimepiece Analytics</div>
        <div className="flex gap-4 sm:gap-6">
          <Link href="/watches" className="hover:text-[#C9A84C] transition-colors">Indices</Link>
          <Link href="/brands" className="hover:text-[#C9A84C] transition-colors">Brands</Link>
          <span className="hidden sm:inline">Terms</span>
          <span className="hidden sm:inline">Privacy</span>
        </div>
      </div>
    </footer>
  )
}
