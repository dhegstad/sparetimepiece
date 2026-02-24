import Link from 'next/link'

export function Footer() {
  return (
    <footer className="border-t border-[#1D263B] mt-auto">
      <div className="max-w-[1440px] mx-auto px-6 h-[60px] flex items-center justify-between text-[#6E7B98] text-[11px] uppercase">
        <div>&copy; {new Date().getFullYear()} Sparetimepiece Analytics</div>
        <div className="flex gap-6">
          <Link href="/watches" className="hover:text-[#C9A84C] transition-colors">Indices</Link>
          <Link href="/brands" className="hover:text-[#C9A84C] transition-colors">Brands</Link>
          <span>Terms</span>
          <span>Privacy</span>
        </div>
      </div>
    </footer>
  )
}
