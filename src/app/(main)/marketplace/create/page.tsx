'use client'

import { useState } from 'react'
import { createListing } from '@/lib/actions/listings'

export default function CreateListingPage() {
  const [error, setError] = useState<string | null>(null)
  const [loading, setLoading] = useState(false)
  const [step, setStep] = useState(1)
  const [hasBox, setHasBox] = useState(false)
  const [hasPapers, setHasPapers] = useState(false)

  async function handleSubmit(formData: FormData) {
    setLoading(true)
    setError(null)
    const result = await createListing(formData)
    if (result?.error) {
      setError(result.error)
      setLoading(false)
    }
  }

  return (
    <div className="max-w-[800px] mx-auto border-l border-r border-[#1D263B] min-h-screen">
      <div className="p-6 border-b border-[#1D263B]">
        <span className="label-gold">New Listing</span>
        <h1 className="text-3xl font-light uppercase mt-2">Sell a Watch</h1>
      </div>

      {/* Step Indicator */}
      <div className="flex border-b border-[#1D263B]">
        {['Details', 'Pricing', 'Review'].map((label, i) => (
          <button
            key={label}
            onClick={() => setStep(i + 1)}
            className={`flex-1 py-3 text-[10px] uppercase tracking-wider font-mono border-b-2 transition-colors ${
              step === i + 1
                ? 'border-b-[#C9A84C] text-[#C9A84C]'
                : step > i + 1
                  ? 'border-b-[#4CAF50] text-[#4CAF50]'
                  : 'border-b-transparent text-[#6E7B98]'
            }`}
          >
            {String(i + 1).padStart(2, '0')}. {label}
          </button>
        ))}
      </div>

      {error && (
        <div className="mx-6 mt-4 border border-[#F44336] bg-[rgba(244,67,54,0.05)] p-3 font-mono text-[11px] text-[#F44336]">
          {error}
        </div>
      )}

      <form action={handleSubmit}>
        {step === 1 && (
          <div className="p-6 space-y-6">
            <div>
              <label className="label-gold mb-2 block">Title</label>
              <input
                name="title"
                placeholder="e.g., Rolex Submariner 126610LN - Full Set 2023"
                required
                className="w-full bg-[#0E1528] border border-[#1D263B] text-foreground font-mono text-xs px-4 py-3 uppercase tracking-wider placeholder:text-[#6E7B98] focus:outline-none focus:border-[#C9A84C] transition-colors"
              />
            </div>
            <div>
              <label className="label-gold mb-2 block">Description</label>
              <textarea
                name="description"
                placeholder="Describe the watch, its condition, any notable features..."
                rows={5}
                className="w-full bg-[#0E1528] border border-[#1D263B] text-foreground font-mono text-xs px-4 py-3 placeholder:text-[#6E7B98] focus:outline-none focus:border-[#C9A84C] transition-colors resize-none"
              />
            </div>
            <div>
              <label className="label-gold mb-2 block">Condition</label>
              <select
                name="condition"
                required
                className="w-full bg-[#0E1528] border border-[#1D263B] text-foreground font-mono text-xs px-4 py-3 uppercase tracking-wider focus:outline-none focus:border-[#C9A84C] transition-colors"
              >
                <option value="">Select condition</option>
                <option value="new">New</option>
                <option value="unworn">Unworn</option>
                <option value="very_good">Very Good</option>
                <option value="good">Good</option>
                <option value="fair">Fair</option>
              </select>
            </div>
            <div className="grid grid-cols-2 gap-4">
              <div>
                <label className="label-gold mb-2 block">Year of Purchase</label>
                <input
                  name="year_of_purchase"
                  type="number"
                  placeholder="2023"
                  className="w-full bg-[#0E1528] border border-[#1D263B] text-foreground font-mono text-xs px-4 py-3 placeholder:text-[#6E7B98] focus:outline-none focus:border-[#C9A84C] transition-colors"
                />
              </div>
              <div>
                <label className="label-gold mb-2 block">Location</label>
                <input
                  name="location"
                  placeholder="New York, NY"
                  className="w-full bg-[#0E1528] border border-[#1D263B] text-foreground font-mono text-xs px-4 py-3 placeholder:text-[#6E7B98] focus:outline-none focus:border-[#C9A84C] transition-colors"
                />
              </div>
            </div>
            <button
              type="button"
              onClick={() => setStep(2)}
              className="w-full py-4 text-center uppercase font-mono text-xs tracking-wider border border-[#C9A84C] text-[#C9A84C] hover:bg-[#C9A84C] hover:text-[#0A0F1E] transition-all"
            >
              Continue to Pricing
            </button>
          </div>
        )}

        {step === 2 && (
          <div className="p-6 space-y-6">
            <div>
              <label className="label-gold mb-2 block">Price (USD)</label>
              <input
                name="price_usd"
                type="number"
                step="0.01"
                min="0"
                placeholder="15000.00"
                required
                className="w-full bg-[#0E1528] border border-[#1D263B] text-foreground font-mono text-xs px-4 py-3 placeholder:text-[#6E7B98] focus:outline-none focus:border-[#C9A84C] transition-colors"
              />
            </div>
            <div className="flex items-center justify-between p-4 border border-[#1D263B]">
              <span className="font-mono text-[11px] uppercase">Original Box Included</span>
              <input type="hidden" name="has_box" value={hasBox ? 'true' : 'false'} />
              <button
                type="button"
                onClick={() => setHasBox(!hasBox)}
                className={`w-10 h-5 border transition-all relative ${
                  hasBox ? 'border-[#C9A84C] bg-[#C9A84C]' : 'border-[#1D263B] bg-[#141C31]'
                }`}
              >
                <span className={`absolute top-0.5 w-3.5 h-3.5 transition-all ${
                  hasBox ? 'left-5 bg-[#0A0F1E]' : 'left-0.5 bg-[#6E7B98]'
                }`} />
              </button>
            </div>
            <div className="flex items-center justify-between p-4 border border-[#1D263B]">
              <span className="font-mono text-[11px] uppercase">Original Papers Included</span>
              <input type="hidden" name="has_papers" value={hasPapers ? 'true' : 'false'} />
              <button
                type="button"
                onClick={() => setHasPapers(!hasPapers)}
                className={`w-10 h-5 border transition-all relative ${
                  hasPapers ? 'border-[#C9A84C] bg-[#C9A84C]' : 'border-[#1D263B] bg-[#141C31]'
                }`}
              >
                <span className={`absolute top-0.5 w-3.5 h-3.5 transition-all ${
                  hasPapers ? 'left-5 bg-[#0A0F1E]' : 'left-0.5 bg-[#6E7B98]'
                }`} />
              </button>
            </div>
            <div className="flex gap-2">
              <button
                type="button"
                onClick={() => setStep(1)}
                className="flex-1 py-4 text-center uppercase font-mono text-xs tracking-wider border border-[#1D263B] text-[#6E7B98] hover:border-[#C9A84C] hover:text-[#C9A84C] transition-all"
              >
                Back
              </button>
              <button
                type="button"
                onClick={() => setStep(3)}
                className="flex-1 py-4 text-center uppercase font-mono text-xs tracking-wider border border-[#C9A84C] text-[#C9A84C] hover:bg-[#C9A84C] hover:text-[#0A0F1E] transition-all"
              >
                Review Listing
              </button>
            </div>
          </div>
        )}

        {step === 3 && (
          <div className="p-6 space-y-6">
            <div className="p-6 border border-[#1D263B]" style={{ background: 'rgba(201, 168, 76, 0.03)' }}>
              <span className="label-gold mb-2 block">Ready to Publish</span>
              <p className="text-[11px] text-foreground leading-relaxed">
                Your listing will be visible to all users once published.
                You can edit or remove it from your dashboard at any time.
              </p>
            </div>
            <div className="flex gap-2">
              <button
                type="button"
                onClick={() => setStep(2)}
                className="flex-1 py-4 text-center uppercase font-mono text-xs tracking-wider border border-[#1D263B] text-[#6E7B98] hover:border-[#C9A84C] hover:text-[#C9A84C] transition-all"
              >
                Back
              </button>
              <button
                type="submit"
                disabled={loading}
                className="flex-1 py-4 text-center uppercase font-mono text-xs tracking-wider bg-[#C9A84C] text-[#0A0F1E] border border-[#C9A84C] hover:bg-transparent hover:text-[#C9A84C] transition-all disabled:opacity-50"
              >
                {loading ? 'Publishing...' : 'Publish Listing'}
              </button>
            </div>
          </div>
        )}
      </form>
    </div>
  )
}
