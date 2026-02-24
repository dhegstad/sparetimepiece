import 'dotenv/config'
import {
  getWatchesForScraping,
  isDuplicate,
  insertPrices,
  updateWatchPrice,
  startScrapeRun,
  completeScrapeRun,
  failScrapeRun,
  supabase,
  type ScrapedPrice,
} from './db.js'
import { createQueue, withRetry } from './queue.js'
import { scrapeChrono24 } from './sources/chrono24.js'
import { scrapeEbay } from './sources/ebay.js'
import { scrapeWatchCharts } from './sources/watchcharts.js'

type SourceName = 'chrono24' | 'ebay' | 'watchcharts'

const scrapers: Record<SourceName, (watches: Awaited<ReturnType<typeof getWatchesForScraping>>) => Promise<ScrapedPrice[]>> = {
  chrono24: scrapeChrono24,
  ebay: scrapeEbay,
  watchcharts: scrapeWatchCharts,
}

async function runSource(source: SourceName) {
  console.log(`\n=== Starting scrape: ${source} ===`)
  const runId = await startScrapeRun(source)

  try {
    const watches = await getWatchesForScraping()
    console.log(`Found ${watches.length} watches to scrape`)

    const queue = createQueue()
    const allPrices: ScrapedPrice[] = []

    // Process watches in batches via queue
    const batchSize = 5
    for (let i = 0; i < watches.length; i += batchSize) {
      const batch = watches.slice(i, i + batchSize)
      queue.add(async () => {
        const prices = await withRetry(() => scrapers[source](batch))
        allPrices.push(...prices)
      })
    }

    await queue.onIdle()

    // Dedup and insert
    let inserted = 0
    let skipped = 0
    const toInsert: ScrapedPrice[] = []

    for (const price of allPrices) {
      const dup = await isDuplicate(price.watchId, price.source, price.priceUsd)
      if (dup) {
        skipped++
        continue
      }
      toInsert.push(price)
    }

    if (toInsert.length > 0) {
      // Batch insert in chunks of 100
      for (let i = 0; i < toInsert.length; i += 100) {
        const chunk = toInsert.slice(i, i + 100)
        await insertPrices(chunk)
        inserted += chunk.length
      }

      // Update current market prices (median of today's prices per watch)
      const pricesByWatch = new Map<string, number[]>()
      for (const p of toInsert) {
        if (!pricesByWatch.has(p.watchId)) pricesByWatch.set(p.watchId, [])
        pricesByWatch.get(p.watchId)!.push(p.priceUsd)
      }

      for (const [watchId, prices] of pricesByWatch) {
        prices.sort((a, b) => a - b)
        const median = prices[Math.floor(prices.length / 2)]
        await updateWatchPrice(watchId, median)
      }
    }

    // Run daily aggregation
    await supabase.rpc('aggregate_daily_prices')

    await completeScrapeRun(runId, {
      recordsFound: allPrices.length,
      recordsInserted: inserted,
      recordsSkipped: skipped,
    })

    console.log(`=== Completed ${source}: ${allPrices.length} found, ${inserted} inserted, ${skipped} skipped ===\n`)
  } catch (err) {
    const message = err instanceof Error ? err.message : String(err)
    console.error(`=== Failed ${source}: ${message} ===`)
    await failScrapeRun(runId, message)
  }
}

async function main() {
  const args = process.argv.slice(2)
  const sourceArg = args.find((a) => a.startsWith('--source='))?.split('=')[1]
    || (args.indexOf('--source') !== -1 ? args[args.indexOf('--source') + 1] : null)

  if (sourceArg && sourceArg in scrapers) {
    await runSource(sourceArg as SourceName)
  } else {
    // Run all sources
    for (const source of Object.keys(scrapers) as SourceName[]) {
      await runSource(source)
    }
  }
}

main().catch(console.error)
