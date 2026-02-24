'use client'

export default function Error({
  error,
  reset,
}: {
  error: Error & { digest?: string }
  reset: () => void
}) {
  return (
    <div className="flex min-h-screen flex-col items-center justify-center px-4 text-center">
      <div className="font-mono text-4xl text-[#F44336] uppercase">System Error</div>
      <p className="font-mono text-[11px] text-[#6E7B98] mt-4 uppercase tracking-wider">
        An unexpected error occurred. Please try again.
      </p>
      <button
        onClick={reset}
        className="mt-8 px-6 py-3 text-[10px] uppercase tracking-wider font-mono border border-[#C9A84C] text-[#C9A84C] hover:bg-[#C9A84C] hover:text-[#0A0F1E] transition-all"
      >
        Retry Operation
      </button>
    </div>
  )
}
