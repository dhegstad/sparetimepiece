import Link from 'next/link'

export default function NotFound() {
  return (
    <div className="flex min-h-screen flex-col items-center justify-center px-4 text-center">
      <div className="font-mono text-8xl text-[#C9A84C]">404</div>
      <div className="font-mono text-xl uppercase tracking-wider mt-4">Page Not Found</div>
      <p className="font-mono text-[11px] text-[#6E7B98] mt-3 uppercase tracking-wider">
        The requested resource does not exist or has been relocated.
      </p>
      <Link href="/">
        <button className="mt-8 px-6 py-3 text-[10px] uppercase tracking-wider font-mono border border-[#C9A84C] text-[#C9A84C] hover:bg-[#C9A84C] hover:text-[#0A0F1E] transition-all">
          Return to Dashboard
        </button>
      </Link>
    </div>
  )
}
