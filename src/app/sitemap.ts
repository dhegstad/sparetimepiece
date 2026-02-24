import { MetadataRoute } from 'next'
import { createClient } from '@/lib/supabase/server'

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const baseUrl = process.env.NEXT_PUBLIC_SITE_URL || 'https://sparetimepiece.com'
  const supabase = await createClient()

  const { data: watches } = await supabase
    .from('watches')
    .select('reference_number, updated_at')

  const { data: brands } = await supabase
    .from('brands')
    .select('slug, updated_at')

  const staticPages: MetadataRoute.Sitemap = [
    { url: baseUrl, lastModified: new Date(), changeFrequency: 'daily', priority: 1 },
    { url: `${baseUrl}/watches`, lastModified: new Date(), changeFrequency: 'daily', priority: 0.9 },
    { url: `${baseUrl}/brands`, lastModified: new Date(), changeFrequency: 'weekly', priority: 0.8 },
    { url: `${baseUrl}/marketplace`, lastModified: new Date(), changeFrequency: 'daily', priority: 0.8 },
    { url: `${baseUrl}/price-index`, lastModified: new Date(), changeFrequency: 'daily', priority: 0.8 },
  ]

  const watchPages: MetadataRoute.Sitemap = (watches ?? []).map((w) => ({
    url: `${baseUrl}/watches/${w.reference_number}`,
    lastModified: new Date(w.updated_at),
    changeFrequency: 'daily' as const,
    priority: 0.7,
  }))

  const brandPages: MetadataRoute.Sitemap = (brands ?? []).map((b) => ({
    url: `${baseUrl}/brands/${b.slug}`,
    lastModified: new Date(b.updated_at),
    changeFrequency: 'weekly' as const,
    priority: 0.7,
  }))

  return [...staticPages, ...watchPages, ...brandPages]
}
