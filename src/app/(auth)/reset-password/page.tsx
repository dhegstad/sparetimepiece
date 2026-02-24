'use client'

import { useState } from 'react'
import Link from 'next/link'
import { resetPassword } from '@/lib/actions/auth'

export default function ResetPasswordPage() {
  const [error, setError] = useState<string | null>(null)
  const [success, setSuccess] = useState<string | null>(null)
  const [loading, setLoading] = useState(false)

  async function handleSubmit(formData: FormData) {
    setLoading(true)
    setError(null)
    setSuccess(null)
    const result = await resetPassword(formData)
    if (result?.error) {
      setError(result.error)
    }
    if (result?.success) {
      setSuccess(result.success)
    }
    setLoading(false)
  }

  return (
    <div className="flex min-h-screen items-center justify-center px-4">
      <div className="w-full max-w-md border border-[#1D263B]">
        <div className="p-8 text-center border-b border-[#1D263B]">
          <div className="font-mono text-xl uppercase tracking-wider">Reset Password</div>
          <div className="font-mono text-[10px] text-[#6E7B98] mt-2 uppercase tracking-wider">
            Enter your email and we&apos;ll send you a reset link
          </div>
        </div>

        <div className="p-8">
          {error && (
            <div className="mb-4 border border-[#F44336] bg-[rgba(244,67,54,0.05)] p-3 font-mono text-[11px] text-[#F44336]">
              {error}
            </div>
          )}
          {success && (
            <div className="mb-4 border border-[#4CAF50] bg-[rgba(76,175,80,0.05)] p-3 font-mono text-[11px] text-[#4CAF50]">
              {success}
            </div>
          )}
          <form action={handleSubmit} className="space-y-4">
            <div>
              <label className="label-gold mb-2 block">Email</label>
              <input
                name="email"
                type="email"
                placeholder="you@example.com"
                required
                className="w-full bg-[#0E1528] border border-[#1D263B] text-foreground font-mono text-xs px-4 py-3 placeholder:text-[#6E7B98] focus:outline-none focus:border-[#C9A84C] transition-colors"
              />
            </div>
            <button
              type="submit"
              disabled={loading}
              className="w-full py-4 text-center uppercase font-mono text-xs tracking-wider bg-[#C9A84C] text-[#0A0F1E] border border-[#C9A84C] hover:bg-transparent hover:text-[#C9A84C] transition-all disabled:opacity-50"
            >
              {loading ? 'Sending...' : 'Send Reset Link'}
            </button>
          </form>
        </div>

        <div className="p-4 text-center border-t border-[#1D263B]">
          <Link href="/login" className="font-mono text-[10px] text-[#6E7B98] hover:text-[#C9A84C] transition-colors uppercase tracking-wider">
            &larr; Back to Sign In
          </Link>
        </div>
      </div>
    </div>
  )
}
