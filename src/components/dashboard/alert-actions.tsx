'use client'

import { createClient } from '@/lib/supabase/client'
import { useRouter } from 'next/navigation'
import { toast } from 'sonner'

export function AlertActions({ alertId, isActive }: { alertId: string; isActive: boolean }) {
  const router = useRouter()

  async function toggleActive() {
    const supabase = createClient()
    const { error } = await supabase
      .from('price_alerts')
      .update({ is_active: !isActive })
      .eq('id', alertId)

    if (error) {
      toast.error('Failed to update alert')
      return
    }

    toast.success(isActive ? 'Alert paused' : 'Alert activated')
    router.refresh()
  }

  async function deleteAlert() {
    const supabase = createClient()
    const { error } = await supabase
      .from('price_alerts')
      .delete()
      .eq('id', alertId)

    if (error) {
      toast.error('Failed to delete alert')
      return
    }

    toast.success('Alert deleted')
    router.refresh()
  }

  return (
    <div className="flex items-center gap-2">
      <button
        onClick={toggleActive}
        className="px-2 py-1 text-[9px] uppercase tracking-wider font-mono text-[#6E7B98] hover:text-[#C9A84C] transition-colors"
      >
        {isActive ? 'Pause' : 'Resume'}
      </button>
      <button
        onClick={deleteAlert}
        className="px-2 py-1 text-[9px] uppercase tracking-wider font-mono text-[#6E7B98] hover:text-[#F44336] transition-colors"
      >
        Delete
      </button>
    </div>
  )
}
