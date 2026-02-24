'use server'

import { revalidatePath } from 'next/cache'
import { redirect } from 'next/navigation'
import { createClient } from '@/lib/supabase/server'
import { z } from 'zod'

const listingSchema = z.object({
  title: z.string().min(5).max(200),
  description: z.string().max(5000).optional(),
  price_usd: z.number().int().positive(),
  condition: z.enum(['new', 'unworn', 'very_good', 'good', 'fair']),
  has_box: z.boolean(),
  has_papers: z.boolean(),
  year_of_purchase: z.number().int().min(1900).max(2030).optional(),
  location: z.string().max(200).optional(),
  watch_id: z.string().uuid().optional(),
})

export async function createListing(formData: FormData) {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) return { error: 'You must be signed in' }

  const priceInput = formData.get('price_usd')
  const yearInput = formData.get('year_of_purchase')

  const parsed = listingSchema.safeParse({
    title: formData.get('title'),
    description: formData.get('description') || undefined,
    price_usd: priceInput ? Math.round(parseFloat(priceInput as string) * 100) : 0,
    condition: formData.get('condition'),
    has_box: formData.get('has_box') === 'true',
    has_papers: formData.get('has_papers') === 'true',
    year_of_purchase: yearInput ? parseInt(yearInput as string, 10) : undefined,
    location: formData.get('location') || undefined,
    watch_id: formData.get('watch_id') || undefined,
  })

  if (!parsed.success) {
    return { error: parsed.error.issues[0].message }
  }

  const { data: listing, error } = await supabase
    .from('listings')
    .insert({
      seller_id: user.id,
      ...parsed.data,
      status: 'active',
    })
    .select('id')
    .single()

  if (error) return { error: error.message }

  revalidatePath('/marketplace')
  redirect(`/marketplace/${listing.id}`)
}

export async function updateListing(id: string, formData: FormData) {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) return { error: 'You must be signed in' }

  const priceInput = formData.get('price_usd')
  const yearInput = formData.get('year_of_purchase')

  const updates: Record<string, unknown> = {}
  if (formData.get('title')) updates.title = formData.get('title')
  if (formData.get('description')) updates.description = formData.get('description')
  if (priceInput) updates.price_usd = Math.round(parseFloat(priceInput as string) * 100)
  if (formData.get('condition')) updates.condition = formData.get('condition')
  if (formData.has('has_box')) updates.has_box = formData.get('has_box') === 'true'
  if (formData.has('has_papers')) updates.has_papers = formData.get('has_papers') === 'true'
  if (yearInput) updates.year_of_purchase = parseInt(yearInput as string, 10)
  if (formData.get('location')) updates.location = formData.get('location')
  if (formData.get('status')) updates.status = formData.get('status')

  const { error } = await supabase
    .from('listings')
    .update(updates)
    .eq('id', id)
    .eq('seller_id', user.id)

  if (error) return { error: error.message }

  revalidatePath('/marketplace')
  revalidatePath(`/marketplace/${id}`)
  revalidatePath('/dashboard/listings')
}

export async function deleteListing(id: string) {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) return { error: 'You must be signed in' }

  const { error } = await supabase
    .from('listings')
    .update({ status: 'removed' })
    .eq('id', id)
    .eq('seller_id', user.id)

  if (error) return { error: error.message }

  revalidatePath('/marketplace')
  revalidatePath('/dashboard/listings')
}

export async function uploadListingImages(listingId: string, formData: FormData) {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) return { error: 'You must be signed in' }

  const files = formData.getAll('images') as File[]
  if (files.length === 0) return { error: 'No files provided' }
  if (files.length > 10) return { error: 'Maximum 10 images' }

  const uploadedPaths: string[] = []

  for (let i = 0; i < files.length; i++) {
    const file = files[i]
    if (file.size > 5 * 1024 * 1024) {
      return { error: `File ${file.name} exceeds 5MB limit` }
    }

    const ext = file.name.split('.').pop()
    const path = `listings/${listingId}/${Date.now()}_${i}.${ext}`

    const { error } = await supabase.storage
      .from('listing-images')
      .upload(path, file)

    if (error) return { error: `Failed to upload ${file.name}: ${error.message}` }
    uploadedPaths.push(path)
  }

  // Insert image records
  const rows = uploadedPaths.map((path, i) => ({
    listing_id: listingId,
    storage_path: path,
    display_order: i,
  }))

  const { error } = await supabase.from('listing_images').insert(rows)
  if (error) return { error: error.message }

  revalidatePath(`/marketplace/${listingId}`)
  return { success: true }
}
