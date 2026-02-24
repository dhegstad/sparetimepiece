'use client'

import { MoreHorizontal, CheckCircle, XCircle } from 'lucide-react'
import { Button } from '@/components/ui/button'
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'
import { createClient } from '@/lib/supabase/client'
import { useRouter } from 'next/navigation'
import { toast } from 'sonner'

export function ListingStatusActions({
  listingId,
  currentStatus,
}: {
  listingId: string
  currentStatus: string
}) {
  const router = useRouter()

  async function updateStatus(status: 'draft' | 'active' | 'sold' | 'removed') {
    const supabase = createClient()
    const { error } = await supabase
      .from('listings')
      .update({ status })
      .eq('id', listingId)

    if (error) {
      toast.error('Failed to update listing')
      return
    }

    toast.success(`Listing marked as ${status}`)
    router.refresh()
  }

  return (
    <DropdownMenu>
      <DropdownMenuTrigger asChild>
        <Button variant="ghost" size="icon">
          <MoreHorizontal className="h-4 w-4" />
        </Button>
      </DropdownMenuTrigger>
      <DropdownMenuContent align="end">
        {currentStatus === 'active' && (
          <DropdownMenuItem onClick={() => updateStatus('sold')}>
            <CheckCircle className="mr-2 h-4 w-4" />
            Mark as Sold
          </DropdownMenuItem>
        )}
        {currentStatus !== 'active' && currentStatus !== 'removed' && (
          <DropdownMenuItem onClick={() => updateStatus('active')}>
            Reactivate
          </DropdownMenuItem>
        )}
        {currentStatus !== 'removed' && (
          <DropdownMenuItem
            className="text-destructive"
            onClick={() => updateStatus('removed')}
          >
            <XCircle className="mr-2 h-4 w-4" />
            Remove Listing
          </DropdownMenuItem>
        )}
      </DropdownMenuContent>
    </DropdownMenu>
  )
}
