'use client'

import { useState } from 'react'
import { createClient } from '@/lib/supabase/client'
import { useRouter } from 'next/navigation'
import { toast } from 'sonner'

export function CreateAlertDialog() {
  const [open, setOpen] = useState(false)
  const [watchRef, setWatchRef] = useState('')
  const [targetPrice, setTargetPrice] = useState('')
  const [direction, setDirection] = useState<'below' | 'above'>('below')
  const [loading, setLoading] = useState(false)
  const router = useRouter()

  async function handleCreate() {
    setLoading(true)
    const supabase = createClient()

    const { data: { user } } = await supabase.auth.getUser()
    if (!user) {
      toast.error('Please sign in')
      setLoading(false)
      return
    }

    const { data: watch } = await supabase
      .from('watches')
      .select('id')
      .eq('reference_number', watchRef)
      .maybeSingle()

    if (!watch) {
      toast.error('Watch not found. Enter a valid reference number.')
      setLoading(false)
      return
    }

    const priceCents = Math.round(parseFloat(targetPrice) * 100)
    if (isNaN(priceCents) || priceCents <= 0) {
      toast.error('Enter a valid price')
      setLoading(false)
      return
    }

    const { error } = await supabase.from('price_alerts').insert({
      user_id: user.id,
      watch_id: watch.id,
      target_price_usd: priceCents,
      direction,
    })

    if (error) {
      toast.error(error.message)
      setLoading(false)
      return
    }

    toast.success('Alert created')
    setOpen(false)
    setWatchRef('')
    setTargetPrice('')
    setLoading(false)
    router.refresh()
  }

  if (!open) {
    return (
      <button
        onClick={() => setOpen(true)}
        className="px-4 py-3 text-[10px] uppercase tracking-wider font-mono border border-[#C9A84C] text-[#C9A84C] hover:bg-[#C9A84C] hover:text-[#0A0F1E] transition-all"
      >
        + Create Alert
      </button>
    )
  }

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/60">
      <div className="w-full max-w-md border border-[#1D263B] bg-[#0A0F1E]">
        <div className="p-6 border-b border-[#1D263B]">
          <div className="font-mono text-lg uppercase">Create Price Alert</div>
          <div className="font-mono text-[10px] text-[#6E7B98] mt-1 uppercase tracking-wider">
            Get notified when a watch hits your target price.
          </div>
        </div>
        <div className="p-6 space-y-4">
          <div>
            <label className="label-gold mb-2 block">Watch Reference Number</label>
            <input
              placeholder="e.g., 126500LN"
              value={watchRef}
              onChange={(e) => setWatchRef(e.target.value)}
              className="w-full bg-[#0E1528] border border-[#1D263B] text-foreground font-mono text-xs px-4 py-3 placeholder:text-[#6E7B98] focus:outline-none focus:border-[#C9A84C] transition-colors"
            />
          </div>
          <div>
            <label className="label-gold mb-2 block">Direction</label>
            <div className="flex gap-2">
              <button
                type="button"
                onClick={() => setDirection('below')}
                className={`flex-1 py-3 text-[10px] uppercase tracking-wider font-mono border transition-all ${
                  direction === 'below'
                    ? 'border-[#C9A84C] text-[#C9A84C]'
                    : 'border-[#1D263B] text-[#6E7B98] hover:border-[#C9A84C] hover:text-[#C9A84C]'
                }`}
              >
                Drops Below
              </button>
              <button
                type="button"
                onClick={() => setDirection('above')}
                className={`flex-1 py-3 text-[10px] uppercase tracking-wider font-mono border transition-all ${
                  direction === 'above'
                    ? 'border-[#C9A84C] text-[#C9A84C]'
                    : 'border-[#1D263B] text-[#6E7B98] hover:border-[#C9A84C] hover:text-[#C9A84C]'
                }`}
              >
                Rises Above
              </button>
            </div>
          </div>
          <div>
            <label className="label-gold mb-2 block">Target Price (USD)</label>
            <input
              type="number"
              placeholder="25000"
              value={targetPrice}
              onChange={(e) => setTargetPrice(e.target.value)}
              className="w-full bg-[#0E1528] border border-[#1D263B] text-foreground font-mono text-xs px-4 py-3 placeholder:text-[#6E7B98] focus:outline-none focus:border-[#C9A84C] transition-colors"
            />
          </div>
        </div>
        <div className="p-6 border-t border-[#1D263B] flex gap-2">
          <button
            onClick={() => setOpen(false)}
            className="flex-1 py-3 text-center uppercase font-mono text-xs tracking-wider border border-[#1D263B] text-[#6E7B98] hover:border-[#C9A84C] hover:text-[#C9A84C] transition-all"
          >
            Cancel
          </button>
          <button
            onClick={handleCreate}
            disabled={loading}
            className="flex-1 py-3 text-center uppercase font-mono text-xs tracking-wider bg-[#C9A84C] text-[#0A0F1E] border border-[#C9A84C] hover:bg-transparent hover:text-[#C9A84C] transition-all disabled:opacity-50"
          >
            {loading ? 'Creating...' : 'Create Alert'}
          </button>
        </div>
      </div>
    </div>
  )
}
