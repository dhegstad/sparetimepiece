'use client'

import { Suspense, useState } from 'react'
import Link from 'next/link'
import { useSearchParams } from 'next/navigation'
import { login } from '@/lib/actions/auth'

function LoginForm() {
  const [error, setError] = useState<string | null>(null)
  const [loading, setLoading] = useState(false)
  const searchParams = useSearchParams()
  const message = searchParams.get('message')
  const redirectTo = searchParams.get('redirect') || ''

  async function handleSubmit(formData: FormData) {
    setLoading(true)
    setError(null)
    formData.set('redirect', redirectTo)
    const result = await login(formData)
    if (result?.error) {
      setError(result.error)
      setLoading(false)
    }
  }

  return (
    <div className="w-full max-w-md border border-[#1D263B]">
      <div className="p-8 text-center border-b border-[#1D263B]">
        <div className="mx-auto mb-4 flex h-14 w-14 items-center justify-center border border-[#C9A84C]">
          <span className="font-mono text-xl text-[#C9A84C]">S</span>
        </div>
        <div className="font-mono text-xl uppercase tracking-wider">Welcome Back</div>
        <div className="font-mono text-[10px] text-[#6E7B98] mt-2 uppercase tracking-wider">
          Sign in to your Sparetimepiece account
        </div>
      </div>

      <div className="p-8">
        {message && (
          <div className="mb-4 border border-[#4CAF50] bg-[rgba(76,175,80,0.05)] p-3 font-mono text-[11px] text-[#4CAF50]">
            {message}
          </div>
        )}
        {error && (
          <div className="mb-4 border border-[#F44336] bg-[rgba(244,67,54,0.05)] p-3 font-mono text-[11px] text-[#F44336]">
            {error}
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
          <div>
            <div className="flex items-center justify-between mb-2">
              <label className="label-gold" style={{ marginBottom: 0 }}>Password</label>
              <Link href="/reset-password" className="font-mono text-[10px] text-[#6E7B98] hover:text-[#C9A84C] transition-colors uppercase tracking-wider">
                Forgot password?
              </Link>
            </div>
            <input
              name="password"
              type="password"
              placeholder="••••••••"
              required
              className="w-full bg-[#0E1528] border border-[#1D263B] text-foreground font-mono text-xs px-4 py-3 placeholder:text-[#6E7B98] focus:outline-none focus:border-[#C9A84C] transition-colors"
            />
          </div>
          <button
            type="submit"
            disabled={loading}
            className="w-full py-4 text-center uppercase font-mono text-xs tracking-wider bg-[#C9A84C] text-[#0A0F1E] border border-[#C9A84C] hover:bg-transparent hover:text-[#C9A84C] transition-all disabled:opacity-50"
          >
            {loading ? 'Signing in...' : 'Sign In'}
          </button>
        </form>
      </div>

      <div className="p-4 text-center border-t border-[#1D263B]">
        <span className="font-mono text-[10px] text-[#6E7B98]">
          Don&apos;t have an account?{' '}
          <Link href="/signup" className="text-[#C9A84C] hover:underline">
            Sign Up
          </Link>
        </span>
      </div>
    </div>
  )
}

export default function LoginPage() {
  return (
    <div className="flex min-h-screen items-center justify-center px-4">
      <Suspense fallback={
        <div className="w-full max-w-md border border-[#1D263B] p-8 text-center">
          <div className="font-mono text-xs text-[#6E7B98] uppercase">Loading...</div>
        </div>
      }>
        <LoginForm />
      </Suspense>
    </div>
  )
}
