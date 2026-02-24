'use client'

import { createBrowserClient } from '@supabase/ssr'
import type { SupabaseClient } from '@supabase/supabase-js'
import type { Database } from '@/types/database'

const url = process.env.NEXT_PUBLIC_SUPABASE_URL ?? ''
const key = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY ?? ''
const isConfigured = url.startsWith('http') && key.length > 0

function createStubClient(): SupabaseClient<Database> {
  const emptyResult = { data: null, error: null, count: 0 }
  const chainable: any = new Proxy({}, {
    get(_target, prop) {
      if (prop === 'then') return (resolve: any) => resolve(emptyResult)
      return (..._args: any[]) => chainable
    },
  })

  return {
    from: () => chainable,
    rpc: () => Promise.resolve(emptyResult),
    auth: {
      getUser: () => Promise.resolve({ data: { user: null }, error: null }),
      getSession: () => Promise.resolve({ data: { session: null }, error: null }),
      onAuthStateChange: () => ({ data: { subscription: { unsubscribe: () => {} } } }),
    },
    storage: { from: () => chainable },
    channel: () => ({ on: () => ({ subscribe: () => {} }) }),
  } as unknown as SupabaseClient<Database>
}

export function createClient(): SupabaseClient<Database> {
  if (!isConfigured) return createStubClient()
  return createBrowserClient<Database>(url, key)
}
