import * as cheerio from 'cheerio'
import { randomUserAgent } from '../config.js'
import type { ScrapedPrice, WatchRef } from '../db.js'

export async function scrapeEbay(watches: WatchRef[]): Promise<ScrapedPrice[]> {
  const results: ScrapedPrice[] = []

  for (const watch of watches) {
    try {
      const searchQuery = encodeURIComponent(
        `${watch.brands?.name || ''} ${watch.reference_number}`
      )
      // Fetch completed/sold listings
      const url = `https://www.ebay.com/sch/i.html?_nkw=${searchQuery}&LH_Complete=1&LH_Sold=1&_sacat=31387`

      const response = await fetch(url, {
        headers: {
          'User-Agent': randomUserAgent(),
          Accept: 'text/html,application/xhtml+xml',
          'Accept-Language': 'en-US,en;q=0.9',
        },
      })

      if (!response.ok) {
        console.error(`[eBay] HTTP ${response.status} for ${watch.reference_number}`)
        continue
      }

      const html = await response.text()
      const $ = cheerio.load(html)

      $('.s-item').each((_, el) => {
        const priceText = $(el).find('.s-item__price').first().text().trim()
        const price = parsePriceUSD(priceText)

        if (price && price > 10000) {
          const href = $(el).find('.s-item__link').attr('href')

          results.push({
            watchId: watch.id,
            source: 'ebay',
            priceUsd: price,
            condition: 'very_good', // eBay sold listings default
            listingUrl: href,
          })
        }
      })

      console.log(`[eBay] ${watch.reference_number}: found ${results.length} prices`)
    } catch (err) {
      console.error(`[eBay] Error scraping ${watch.reference_number}:`, err)
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
