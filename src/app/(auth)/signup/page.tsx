'use client'

import { useState } from 'react'
import Link from 'next/link'
import { signup } from '@/lib/actions/auth'

export default function SignupPage() {
  const [error, setError] = useState<string | null>(null)
  const [loading, setLoading] = useState(false)

  async function handleSubmit(formData: FormData) {
    setLoading(true)
    setError(null)
    const result = await signup(formData)
    if (result?.error) {
      setError(result.error)
      setLoading(false)
    }
  }

  return (
    <div className="flex min-h-screen items-center justify-center px-4">
      <div className="w-full max-w-md border border-[#1D263B]">
        <div className="p-8 text-center border-b border-[#1D263B]">
          <div className="mx-auto mb-4 flex h-14 w-14 items-center justify-center border border-[#C9A84C]">
            <span className="font-mono text-xl text-[#C9A84C]">S</span>
          </div>
          <div className="font-mono text-xl uppercase tracking-wider">Create Account</div>
          <div className="font-mono text-[10px] text-[#6E7B98] mt-2 uppercase tracking-wider">
            Start tracking watch prices and join the marketplace
          </div>
        </div>

        <div className="p-8">
          {error && (
            <div className="mb-4 border border-[#F44336] bg-[rgba(244,67,54,0.05)] p-3 font-mono text-[11px] text-[#F44336]">
              {error}
            </div>
          )}
          <form action={handleSubmit} className="space-y-4">
            <div className="grid grid-cols-2 gap-4">
              <div>
                <label className="label-gold mb-2 block">Username</label>
                <input
                  name="username"
                  placeholder="watchfan"
                  required
                  className="w-full bg-[#0E1528] border border-[#1D263B] text-foreground font-mono text-xs px-4 py-3 placeholder:text-[#6E7B98] focus:outline-none focus:border-[#C9A84C] transition-colors"
                />
              </div>
              <div>
                <label className="label-gold mb-2 block">Full Name</label>
                <input
                  name="full_name"
                  placeholder="John Doe"
                  className="w-full bg-[#0E1528] border border-[#1D263B] text-foreground font-mono text-xs px-4 py-3 placeholder:text-[#6E7B98] focus:outline-none focus:border-[#C9A84C] transition-colors"
                />
              </div>
            </div>
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
            <div>
              <label className="label-gold mb-2 block">Password</label>
              <input
                name="password"
                type="password"
                placeholder="••••••••"
                required
                minLength={8}
                className="w-full bg-[#0E1528] border border-[#1D263B] text-foreground font-mono text-xs px-4 py-3 placeholder:text-[#6E7B98] focus:outline-none focus:border-[#C9A84C] transition-colors"
              />
              <div className="font-mono text-[9px] text-[#6E7B98] mt-1 uppercase tracking-wider">
                Minimum 8 characters
              </div>
            </div>
            <button
              type="submit"
              disabled={loading}
              className="w-full py-4 text-center uppercase font-mono text-xs tracking-wider bg-[#C9A84C] text-[#0A0F1E] border border-[#C9A84C] hover:bg-transparent hover:text-[#C9A84C] transition-all disabled:opacity-50"
            >
              {loading ? 'Creating account...' : 'Create Account'}
            </button>
          </form>
        </div>

        <div className="p-4 text-center border-t border-[#1D263B]">
          <span className="font-mono text-[10px] text-[#6E7B98]">
            Already have an account?{' '}
            <Link href="/login" className="text-[#C9A84C] hover:underline">
              Sign In
            </Link>
          </span>
        </div>
      </div>
    </div>
  )
}
