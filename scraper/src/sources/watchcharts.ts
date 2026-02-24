import * as cheerio from 'cheerio'
import { randomUserAgent } from '../config.js'
import type { ScrapedPrice, WatchRef } from '../db.js'

export async function scrapeWatchCharts(watches: WatchRef[]): Promise<ScrapedPrice[]> {
  const results: ScrapedPrice[] = []

  for (const watch of watches) {
    try {
      const slug = watch.brands?.slug || ''
      const ref = watch.reference_number.toLowerCase().replace(/[^a-z0-9]/g, '-')
      const url = `https://watchcharts.com/watch/${slug}/${ref}`

      const response = await fetch(url, {
        headers: {
          'User-Agent': randomUserAgent(),
          Accept: 'text/html,application/xhtml+xml',
          'Accept-Language': 'en-US,en;q=0.9',
        },
      })

      if (!response.ok) {
        console.error(`[WatchCharts] HTTP ${response.status} for ${watch.reference_number}`)
        continue
      }

      const html = await response.text()
      const $ = cheerio.load(html)

      // Look for market price data on the page
      const priceText = $('[data-market-price], .market-price, .price-value')
        .first()
        .text()
        .trim()
      const price = parsePriceUSD(priceText)

      if (price && price > 10000) {
        results.push({
          watchId: watch.id,
          source: 'watchcharts',
          priceUsd: price,
          condition: 'unworn',
          listingUrl: url,
        })
      }

      console.log(
        `[WatchCharts] ${watch.reference_number}: ${price ? 'found price' : 'no price found'}`
      )
    } catch (err) {
      console.error(`[WatchCharts] Error scraping ${watch.reference_number}:`, err)
    }
  }

  return results
}

function parsePriceUSD(text: string): number | null {
  const match = text.match(/\$([0-9,]+(?:\.\d{2})?)/)
  if (!match) return null
  const dollars = parseFloat(match[1].replace(/,/g, ''))
  if (isNaN(dollars)) return null
  return Math.round(dollars * 100)
}
