import { createClient } from '@/lib/supabase/server'

export async function getWatches(params?: {
  brand?: string
  search?: string
  minPrice?: number
  maxPrice?: number
  material?: string
  sort?: string
  limit?: number
  offset?: number
}) {
  const supabase = await createClient()
  let query = supabase
    .from('watches')
    .select('*, brands!inner(*)', { count: 'exact' })

  if (params?.brand) {
    query = query.eq('brands.slug', params.brand)
  }

  if (params?.search) {
    query = query.or(`model_name.ilike.%${params.search}%,reference_number.ilike.%${params.search}%`)
  }

  if (params?.minPrice) {
    query = query.gte('current_market_price_usd', params.minPrice)
  }

  if (params?.maxPrice) {
    query = query.lte('current_market_price_usd', params.maxPrice)
  }

  if (params?.material) {
    query = query.ilike('case_material', `%${params.material}%`)
  }

  const sortField = params?.sort === 'price_asc' ? 'current_market_price_usd'
    : params?.sort === 'price_desc' ? 'current_market_price_usd'
    : params?.sort === 'trend' ? 'price_trend_30d'
    : 'model_name'

  const ascending = params?.sort !== 'price_desc' && params?.sort !== 'trend'

  query = query
    .order(sortField, { ascending })
    .range(params?.offset ?? 0, (params?.offset ?? 0) + (params?.limit ?? 24) - 1)

  const { data, count, error } = await query

  if (error) throw error
  return { watches: data ?? [], total: count ?? 0 }
}

export async function getWatchByRef(ref: string) {
  const supabase = await createClient()
  const { data, error } = await supabase
    .from('watches')
    .select('*, brands(*)')
    .eq('reference_number', ref)
    .single()

  if (error) throw error
  return data
}

export async function getPriceHistory(watchId: string, days: number = 90) {
  const supabase = await createClient()
  const since = new Date()
  since.setDate(since.getDate() - days)

  const { data, error } = await supabase
    .from('price_history')
    .select('*')
    .eq('watch_id', watchId)
    .gte('scraped_at', since.toISOString())
    .order('scraped_at', { ascending: true })

  if (error) throw error
  return data ?? []
}

export async function getPriceAggregates(watchId: string, period: 'daily' | 'weekly' | 'monthly' = 'daily', days: number = 365) {
  const supabase = await createClient()
  const since = new Date()
  since.setDate(since.getDate() - days)

  const { data, error } = await supabase
    .from('price_aggregates')
    .select('*')
    .eq('watch_id', watchId)
    .eq('period', period)
    .is('source', null)
    .gte('period_start', since.toISOString().split('T')[0])
    .order('period_start', { ascending: true })

  if (error) throw error
  return data ?? []
}

export async function getBrands() {
  const supabase = await createClient()
  const { data, error } = await supabase
    .from('brands')
    .select('*')
    .order('name')

  if (error) throw error
  return data ?? []
}

export async function getBrandBySlug(slug: string) {
  const supabase = await createClient()
  const { data, error } = await supabase
    .from('brands')
    .select('*')
    .eq('slug', slug)
    .single()

  if (error) throw error
  return data
}

export async function getWatchesByBrand(brandId: string) {
  const supabase = await createClient()
  const { data, error } = await supabase
    .from('watches')
    .select('*, brands(*)')
    .eq('brand_id', brandId)
    .order('current_market_price_usd', { ascending: false })

  if (error) throw error
  return data ?? []
}
