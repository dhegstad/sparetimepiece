'use client'

import dynamic from 'next/dynamic'
import { Skeleton } from '@/components/ui/skeleton'
import type { PriceHistory } from '@/types/database'

const PriceChart = dynamic(
  () => import('@/components/watches/price-chart').then((m) => m.PriceChart),
  {
    loading: () => <Skeleton className="h-96 w-full" />,
    ssr: false,
  }
)

export function PriceChartWrapper({ data, title }: { data: PriceHistory[]; title?: string }) {
  return <PriceChart data={data} title={title} />
}
