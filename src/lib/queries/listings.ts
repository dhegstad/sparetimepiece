import { createClient } from '@/lib/supabase/server'

export async function getListings(params?: {
  brand?: string
  minPrice?: number
  maxPrice?: number
  condition?: 'new' | 'unworn' | 'very_good' | 'good' | 'fair'
  hasBox?: boolean
  hasPapers?: boolean
  search?: string
  sort?: string
  limit?: number
  offset?: number
}) {
  const supabase = await createClient()
  let query = supabase
    .from('listings')
    .select(
      '*, profiles(username, avatar_url), watches(*, brands(*)), listing_images(*)',
      { count: 'exact' }
    )
    .eq('status', 'active')

  if (params?.search) {
    query = query.ilike('title', `%${params.search}%`)
  }

  if (params?.minPrice) {
    query = query.gte('price_usd', params.minPrice)
  }

  if (params?.maxPrice) {
    query = query.lte('price_usd', params.maxPrice)
  }

  if (params?.condition) {
    query = query.eq('condition', params.condition)
  }

  if (params?.hasBox !== undefined) {
    query = query.eq('has_box', params.hasBox)
  }

  if (params?.hasPapers !== undefined) {
    query = query.eq('has_papers', params.hasPapers)
  }

  const sortField = params?.sort === 'price_asc' ? 'price_usd'
    : params?.sort === 'price_desc' ? 'price_usd'
    : 'created_at'

  const ascending = params?.sort === 'price_asc'

  query = query
    .order(sortField, { ascending })
    .range(params?.offset ?? 0, (params?.offset ?? 0) + (params?.limit ?? 24) - 1)

  const { data, count, error } = await query

  if (error) throw error
  return { listings: data ?? [], total: count ?? 0 }
}

export async function getListingById(id: string) {
  const supabase = await createClient()
  const { data, error } = await supabase
    .from('listings')
    .select(
      '*, profiles(id, username, avatar_url, created_at), watches(*, brands(*)), listing_images(*)'
    )
    .eq('id', id)
    .single()

  if (error) throw error
  return data
}

export async function getUserListings(userId: string) {
  const supabase = await createClient()
  const { data, error } = await supabase
    .from('listings')
    .select('*, watches(*, brands(*)), listing_images(*)')
    .eq('seller_id', userId)
    .order('created_at', { ascending: false })

  if (error) throw error
  return data ?? []
}
