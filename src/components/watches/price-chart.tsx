'use client'

import { useState, useMemo } from 'react'
import {
  LineChart,
  Line,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  ResponsiveContainer,
  Legend,
} from 'recharts'
import { formatPrice } from '@/lib/utils'
import { format, subDays, isAfter } from 'date-fns'
import type { PriceHistory } from '@/types/database'

const timeRanges = [
  { label: '1M', days: 30 },
  { label: '6M', days: 180 },
  { label: '1Y', days: 365 },
  { label: '5Y', days: 1825 },
] as const

const sourceColors: Record<string, string> = {
  chrono24: '#C9A84C',
  ebay: '#F44336',
  watchcharts: '#4CAF50',
}

interface PriceChartProps {
  data: PriceHistory[]
  title?: string
}

export function PriceChart({ data, title = 'Historical Performance' }: PriceChartProps) {
  const [range, setRange] = useState<number>(365)

  const sources = useMemo(() => {
    const s = new Set(data.map((d) => d.source))
    return Array.from(s)
  }, [data])

  const [activeSources, setActiveSources] = useState<Set<string>>(new Set(sources))

  const filteredData = useMemo(() => {
    const cutoff = subDays(new Date(), range)
    return data.filter(
      (d) =>
        isAfter(new Date(d.scraped_at), cutoff) &&
        activeSources.has(d.source)
    )
  }, [data, range, activeSources])

  const chartData = useMemo(() => {
    const grouped = new Map<string, Record<string, number>>()

    filteredData.forEach((point) => {
      const dateKey = format(new Date(point.scraped_at), 'yyyy-MM-dd')
      if (!grouped.has(dateKey)) {
        grouped.set(dateKey, {})
      }
      const entry = grouped.get(dateKey)!
      if (!entry[point.source]) {
        entry[point.source] = point.price_usd
      } else {
        entry[point.source] = Math.round((entry[point.source] + point.price_usd) / 2)
      }
    })

    return Array.from(grouped.entries())
      .sort(([a], [b]) => a.localeCompare(b))
      .map(([date, values]) => ({
        date,
        displayDate: format(new Date(date), 'MMM d'),
        ...values,
      }))
  }, [filteredData])

  const toggleSource = (source: string) => {
    const next = new Set(activeSources)
    if (next.has(source)) {
      if (next.size > 1) next.delete(source)
    } else {
      next.add(source)
    }
    setActiveSources(next)
  }

  if (data.length === 0) {
    return (
      <div>
        <span className="label-gold">{title}</span>
        <div className="flex items-center justify-center h-64 text-[#6E7B98] font-mono text-xs border border-[#1D263B] mt-4 grid-line">
          NO DATA AVAILABLE
        </div>
      </div>
    )
  }

  return (
    <div>
      <div className="flex items-center justify-between mb-4">
        <span className="label-gold">{title}</span>
        <div className="flex gap-1">
          {timeRanges.map((r) => (
            <button
              key={r.label}
              onClick={() => setRange(r.days)}
              className={`px-3 py-1 text-[10px] uppercase tracking-wider transition-colors ${
                range === r.days
                  ? 'text-[#C9A84C]'
                  : 'text-[#6E7B98] hover:text-[#C9A84C]'
              }`}
            >
              {r.label}
            </button>
          ))}
        </div>
      </div>

      {sources.length > 1 && (
        <div className="flex gap-2 mb-4">
          {sources.map((source) => (
            <button
              key={source}
              onClick={() => toggleSource(source)}
              className={`px-2 py-1 text-[9px] uppercase tracking-wider border transition-all ${
                activeSources.has(source)
                  ? 'border-current'
                  : 'border-[#1D263B] text-[#6E7B98]'
              }`}
              style={activeSources.has(source) ? { color: sourceColors[source] || '#888', borderColor: sourceColors[source] || '#888' } : {}}
            >
              {source}
            </button>
          ))}
        </div>
      )}

      <div className="h-96 border border-[#1D263B] grid-line p-4">
        <ResponsiveContainer width="100%" height="100%">
          <LineChart data={chartData} margin={{ top: 10, right: 10, left: 10, bottom: 5 }}>
            <CartesianGrid stroke="#1D263B" strokeDasharray="none" />
            <XAxis
              dataKey="displayDate"
              tick={{ fontSize: 10, fill: '#6E7B98', fontFamily: 'var(--font-mono)' }}
              stroke="#1D263B"
            />
            <YAxis
              tick={{ fontSize: 10, fill: '#6E7B98', fontFamily: 'var(--font-mono)' }}
              tickFormatter={(v) => formatPrice(v)}
              width={80}
              stroke="#1D263B"
            />
            <Tooltip
              formatter={(value: number | undefined) => [formatPrice(value ?? 0), '']}
              labelFormatter={(label) => label}
              contentStyle={{
                backgroundColor: '#0E1528',
                border: '1px solid #C9A84C',
                borderRadius: '0',
                fontFamily: 'var(--font-mono)',
                fontSize: '11px',
              }}
              itemStyle={{ color: '#F5F0E8' }}
              labelStyle={{ color: '#C9A84C', fontSize: '10px', textTransform: 'uppercase' as const }}
            />
            <Legend
              wrapperStyle={{ fontSize: '10px', fontFamily: 'var(--font-mono)', textTransform: 'uppercase' }}
            />
            {sources
              .filter((s) => activeSources.has(s))
              .map((source) => (
                <Line
                  key={source}
                  type="monotone"
                  dataKey={source}
                  stroke={sourceColors[source] || '#888'}
                  strokeWidth={2}
                  dot={false}
                  name={source.toUpperCase()}
                  connectNulls
                />
              ))}
          </LineChart>
        </ResponsiveContainer>
      </div>
    </div>
  )
}
