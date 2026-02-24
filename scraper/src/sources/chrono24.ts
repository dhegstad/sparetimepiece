import { chromium } from 'playwright'
import * as cheerio from 'cheerio'
import { randomUserAgent } from '../config.js'
import type { ScrapedPrice, WatchRef } from '../db.js'

export async function scrapeChrono24(watches: WatchRef[]): Promise<ScrapedPrice[]> {
  const results: ScrapedPrice[] = []
  const browser = await chromium.launch({ headless: true })

  try {
    for (const watch of watches) {
      try {
        const context = await browser.newContext({
          userAgent: randomUserAgent(),
          viewport: { width: 1920, height: 1080 },
        })
        const page = await context.newPage()

        const searchQuery = encodeURIComponent(
          `${watch.brands?.name || ''} ${watch.reference_number}`
        )
        await page.goto(`https://www.chrono24.com/search/index.htm?query=${searchQuery}`, {
          waitUntil: 'domcontentloaded',
          timeout: 30000,
        })

        // Wait for results
        await page.waitForSelector('.article-item-container, .js-article-item', {
          timeout: 10000,
        }).catch(() => {})

        const html = await page.content()
        const $ = cheerio.load(html)

        // Parse listing prices
        $('.article-item-container, .js-article-item').each((_, el) => {
          const priceText = $(el).find('.article-price, [class*="price"]').first().text().trim()
          const price = parsePriceUSD(priceText)

          if (price && price > 10000) {
            // minimum $100 to filter junk
            const conditionText = $(el).find('[class*="condition"]').text().toLowerCase()
            const condition = parseCondition(conditionText)
            const href = $(el).find('a[href]').first().attr('href')

            results.push({
              watchId: watch.id,
              source: 'chrono24',
              priceUsd: price,
              condition,
              listingUrl: href ? `https://www.chrono24.com${href}` : undefined,
            })
          }
        })

        await context.close()
        console.log(`[Chrono24] ${watch.reference_number}: found ${results.length} prices`)
      } catch (err) {
        console.error(`[Chrono24] Error scraping ${watch.reference_number}:`, err)
      }
    }
  } finally {
    await browser.close()
  }

  return results
}

function parsePriceUSD(text: string): number | null {
  // Match USD prices like "$12,345" or "US$12,345"
  const match = text.match(/(?:US?\$|USD)\s?([0-9,]+(?:\.\d{2})?)/)
  if (!match) return null
  const dollars = parseFloat(match[1].replace(/,/g, ''))
  if (isNaN(dollars)) return null
  return Math.round(dollars * 100) // convert to cents
}

function parseCondition(text: string): ScrapedPrice['condition'] {
  if (text.includes('new')) return 'new'
  if (text.includes('unworn')) return 'unworn'
  if (text.includes('very good')) return 'very_good'
  if (text.includes('good')) return 'good'
  if (text.includes('fair')) return 'fair'
  return 'very_good' // default
}
