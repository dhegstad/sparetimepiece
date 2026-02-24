'use client'

import { useState, useCallback } from 'react'
import { useRouter } from 'next/navigation'

export function WatchSearch({ defaultValue = '' }: { defaultValue?: string }) {
  const [query, setQuery] = useState(defaultValue)
  const router = useRouter()

  const handleSearch = useCallback(
    (value: string) => {
      setQuery(value)
      const params = new URLSearchParams(window.location.search)
      if (value) {
        params.set('search', value)
      } else {
        params.delete('search')
      }
      params.delete('offset')
      router.push(`/watches?${params.toString()}`)
    },
    [router]
  )

  return (
    <div className="relative">
      <div className="absolute left-3 top-1/2 -translate-y-1/2 font-mono text-[10px] text-[#C9A84C]">&gt;_</div>
      <input
        placeholder="SEARCH BY MODEL OR REFERENCE..."
        value={query}
        onChange={(e) => handleSearch(e.target.value)}
        className="w-full bg-[#0E1528] border border-[#1D263B] text-foreground font-mono text-xs pl-10 pr-4 py-3 uppercase tracking-wider placeholder:text-[#6E7B98] focus:outline-none focus:border-[#C9A84C] transition-colors"
      />
    </div>
  )
}
