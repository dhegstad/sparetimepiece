'use client'

import { useState, useEffect } from 'react'
import { createClient } from '@/lib/supabase/client'
import { toast } from 'sonner'

export function WatchActions({ watchId, watchRef }: { watchId: string; watchRef: string }) {
  const [inWatchlist, setInWatchlist] = useState(false)
  const [userId, setUserId] = useState<string | null>(null)

  useEffect(() => {
    const supabase = createClient()
    supabase.auth.getUser().then(({ data }) => {
      if (data.user) {
        setUserId(data.user.id)
        supabase
          .from('watchlist_items')
          .select('id')
          .eq('user_id', data.user.id)
          .eq('watch_id', watchId)
          .maybeSingle()
          .then(({ data: item }) => {
            if (item) setInWatchlist(true)
          })
      }
    })
  }, [watchId])

  const toggleWatchlist = async () => {
    if (!userId) {
      toast.error('Please sign in to use your watchlist')
      return
    }

    const supabase = createClient()
    if (inWatchlist) {
      await supabase.from('watchlist_items').delete().eq('user_id', userId).eq('watch_id', watchId)
      setInWatchlist(false)
      toast.success('Removed from watchlist')
    } else {
      await supabase.from('watchlist_items').insert({ user_id: userId, watch_id: watchId })
      setInWatchlist(true)
      toast.success('Added to watchlist')
    }
  }

  const handleAlert = () => {
    if (!userId) {
      toast.error('Please sign in to set price alerts')
      return
    }
    window.location.href = `/dashboard/alerts?watch=${watchRef}`
  }

  return (
    <div className="space-y-3">
      <button
        onClick={toggleWatchlist}
        className={`w-full py-4 text-center uppercase font-mono text-xs tracking-wider border transition-all ${
          inWatchlist
            ? 'bg-[#C9A84C] text-[#0A0F1E] border-[#C9A84C]'
            : 'bg-transparent text-[#C9A84C] border-[#C9A84C] hover:bg-[#C9A84C] hover:text-[#0A0F1E]'
        }`}
      >
        {inWatchlist ? 'In Watchlist' : 'Add to Watchlist'}
      </button>
      <button
        onClick={handleAlert}
        className="w-full py-4 text-center uppercase font-mono text-xs tracking-wider border border-[#1D263B] text-[#6E7B98] hover:border-[#C9A84C] hover:text-[#C9A84C] transition-all"
      >
        Set Price Alert
      </button>
    </div>
  )
}
