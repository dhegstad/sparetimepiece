/**
 * Upload Watch Images to Supabase Storage
 *
 * Downloads images from brand CDN URLs stored in watches.image_url,
 * uploads them to a public `watch-images` bucket in Supabase Storage,
 * and updates the image_url column to point to the Supabase public URL.
 *
 * Prerequisites:
 *   - SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY env vars
 *
 * Usage:
 *   npx tsx scripts/upload-watch-images.ts
 */

import { createClient } from '@supabase/supabase-js'

const SUPABASE_URL = process.env.SUPABASE_URL
const SUPABASE_SERVICE_ROLE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY

if (!SUPABASE_URL || !SUPABASE_SERVICE_ROLE_KEY) {
  console.error('Missing SUPABASE_URL or SUPABASE_SERVICE_ROLE_KEY environment variables.')
  process.exit(1)
}

const supabase = createClient(SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY)

const BUCKET_NAME = 'watch-images'

async function ensureBucket() {
  const { data: buckets } = await supabase.storage.listBuckets()
  const exists = buckets?.some((b) => b.name === BUCKET_NAME)

  if (!exists) {
    const { error } = await supabase.storage.createBucket(BUCKET_NAME, {
      public: true,
      fileSizeLimit: 5 * 1024 * 1024, // 5MB
      allowedMimeTypes: ['image/webp', 'image/png', 'image/jpeg'],
    })
    if (error) throw new Error(`Failed to create bucket: ${error.message}`)
    console.log(`Created bucket: ${BUCKET_NAME}`)
  } else {
    console.log(`Bucket ${BUCKET_NAME} already exists`)
  }
}

function slugify(text: string): string {
  return text
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/(^-|-$)/g, '')
}

async function main() {
  await ensureBucket()

  const { data: watches, error } = await supabase
    .from('watches')
    .select('id, reference_number, image_url, brands(slug)')
    .not('image_url', 'is', null)

  if (error) throw error
  if (!watches?.length) {
    console.log('No watches with image URLs found.')
    return
  }

  console.log(`Processing ${watches.length} watches...`)

  let uploaded = 0
  let skipped = 0
  let failed = 0

  for (const watch of watches) {
    const brandsData = watch.brands as unknown as { slug: string }[] | { slug: string } | null
    const brandSlug = Array.isArray(brandsData) ? brandsData[0]?.slug ?? 'unknown' : brandsData?.slug ?? 'unknown'
    const refSlug = slugify(watch.reference_number)
    const storagePath = `${brandSlug}/${refSlug}.webp`

    // Check if already uploaded to Supabase
    if (watch.image_url?.includes(SUPABASE_URL!)) {
      skipped++
      continue
    }

    try {
      console.log(`  Downloading: ${watch.reference_number}...`)
      const response = await fetch(watch.image_url!)
      if (!response.ok) {
        console.warn(`  Skipping ${watch.reference_number}: HTTP ${response.status}`)
        failed++
        continue
      }

      const arrayBuffer = await response.arrayBuffer()
      const buffer = new Uint8Array(arrayBuffer)

      const { error: uploadError } = await supabase.storage
        .from(BUCKET_NAME)
        .upload(storagePath, buffer, {
          contentType: 'image/webp',
          upsert: true,
        })

      if (uploadError) {
        console.warn(`  Upload failed for ${watch.reference_number}: ${uploadError.message}`)
        failed++
        continue
      }

      const { data: publicUrl } = supabase.storage
        .from(BUCKET_NAME)
        .getPublicUrl(storagePath)

      const { error: updateError } = await supabase
        .from('watches')
        .update({ image_url: publicUrl.publicUrl })
        .eq('id', watch.id)

      if (updateError) {
        console.warn(`  DB update failed for ${watch.reference_number}: ${updateError.message}`)
        failed++
        continue
      }

      uploaded++
      console.log(`  Uploaded: ${storagePath}`)
    } catch (err) {
      console.warn(`  Error processing ${watch.reference_number}:`, err)
      failed++
    }
  }

  console.log(`\nDone: ${uploaded} uploaded, ${skipped} skipped, ${failed} failed`)
}

main().catch(console.error)
