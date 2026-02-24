import { createClient } from '@/lib/supabase/server'

export async function getDashboardStats(userId: string) {
  const supabase = await createClient()

  const [watchlistRes, alertsRes, listingsRes, unreadRes] = await Promise.all([
    supabase.from('watchlist_items').select('id', { count: 'exact' }).eq('user_id', userId),
    supabase.from('price_alerts').select('id', { count: 'exact' }).eq('user_id', userId).eq('is_active', true),
    supabase.from('listings').select('id', { count: 'exact' }).eq('seller_id', userId).neq('status', 'removed'),
    supabase.from('messages').select('id', { count: 'exact' }).eq('recipient_id', userId).eq('is_read', false),
  ])

  return {
    watchlistCount: watchlistRes.count ?? 0,
    activeAlerts: alertsRes.count ?? 0,
    listingCount: listingsRes.count ?? 0,
    unreadMessages: unreadRes.count ?? 0,
  }
}

export async function getWatchlist(userId: string) {
  const supabase = await createClient()
  const { data, error } = await supabase
    .from('watchlist_items')
    .select('*, watches(*, brands(*))')
    .eq('user_id', userId)
    .order('created_at', { ascending: false })

  if (error) throw error
  return data ?? []
}

export async function getAlerts(userId: string) {
  const supabase = await createClient()
  const { data, error } = await supabase
    .from('price_alerts')
    .select('*, watches(*, brands(*))')
    .eq('user_id', userId)
    .order('created_at', { ascending: false })

  if (error) throw error
  return data ?? []
}

export async function getMessages(userId: string) {
  const supabase = await createClient()
  const { data, error } = await supabase
    .from('messages')
    .select('*, listings(title), sender:profiles!messages_sender_id_fkey(username, avatar_url), recipient:profiles!messages_recipient_id_fkey(username, avatar_url)')
    .or(`sender_id.eq.${userId},recipient_id.eq.${userId}`)
    .order('created_at', { ascending: false })

  if (error) throw error
  return data ?? []
}

export async function getProfile(userId: string) {
  const supabase = await createClient()
  const { data, error } = await supabase
    .from('profiles')
    .select('*')
    .eq('id', userId)
    .single()

  if (error) throw error
  return data
}
