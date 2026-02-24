import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import type { SupabaseClient } from '@supabase/supabase-js'
import type { Database } from '@/types/database'

const url = process.env.NEXT_PUBLIC_SUPABASE_URL ?? ''
const key = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY ?? ''
const isConfigured = url.startsWith('http') && key.length > 0

// Stub that returns empty results for all queries when Supabase isn't configured
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

export async function createClient(): Promise<SupabaseClient<Database>> {
  if (!isConfigured) return createStubClient()

  const cookieStore = await cookies()

  return createServerClient<Database>(
    url,
    key,
    {
      cookies: {
        getAll() {
          return cookieStore.getAll()
        },
        setAll(cookiesToSet) {
          try {
            cookiesToSet.forEach(({ name, value, options }) =>
              cookieStore.set(name, value, options)
            )
          } catch {
            // The `setAll` method was called from a Server Component.
          }
        },
      },
    }
  )
}
