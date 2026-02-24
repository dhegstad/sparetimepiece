import PQueue from 'p-queue'
import { config } from './config.js'

export function createQueue() {
  return new PQueue({
    concurrency: config.concurrency,
    interval: config.requestDelay,
    intervalCap: 1,
  })
}

export async function withRetry<T>(
  fn: () => Promise<T>,
  maxRetries = config.maxRetries
): Promise<T> {
  let lastError: Error | undefined
  for (let attempt = 0; attempt <= maxRetries; attempt++) {
    try {
      return await fn()
    } catch (err) {
      lastError = err instanceof Error ? err : new Error(String(err))
      if (attempt < maxRetries) {
        const delay = Math.pow(2, attempt) * 1000 + Math.random() * 1000
        console.log(`Retry ${attempt + 1}/${maxRetries} after ${Math.round(delay)}ms: ${lastError.message}`)
        await new Promise((resolve) => setTimeout(resolve, delay))
      }
    }
  }
  throw lastError
}
