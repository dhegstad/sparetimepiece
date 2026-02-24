'use client'

import { createClient } from '@/lib/supabase/client'
import { useRouter } from 'next/navigation'
import { toast } from 'sonner'

export function RemoveWatchlistButton({ itemId }: { itemId: string }) {
  const router = useRouter()

  async function handleRemove() {
    const supabase = createClient()
    const { error } = await supabase
      .from('watchlist_items')
      .delete()
      .eq('id', itemId)

    if (error) {
      toast.error('Failed to remove from watchlist')
      return
    }

    toast.success('Removed from watchlist')
    router.refresh()
  }

  return (
    <button
      onClick={handleRemove}
      className="px-2 py-1 text-[9px] uppercase tracking-wider font-mono text-[#6E7B98] hover:text-[#F44336] transition-colors"
    >
      Remove
    </button>
  )
}
