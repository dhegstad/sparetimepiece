import { ImageResponse } from 'next/og'
import { NextRequest } from 'next/server'

export const runtime = 'edge'

export async function GET(request: NextRequest) {
  const { searchParams } = request.nextUrl
  const title = searchParams.get('title') || 'Sparetimepiece'
  const subtitle = searchParams.get('subtitle') || 'Watch Price Tracking & Marketplace'
  const price = searchParams.get('price') || ''

  return new ImageResponse(
    (
      <div
        style={{
          height: '100%',
          width: '100%',
          display: 'flex',
          flexDirection: 'column',
          alignItems: 'center',
          justifyContent: 'center',
          backgroundColor: '#09090b',
          color: '#fafafa',
          fontFamily: 'system-ui',
        }}
      >
        <div
          style={{
            display: 'flex',
            flexDirection: 'column',
            alignItems: 'center',
            justifyContent: 'center',
            padding: '40px',
          }}
        >
          <div style={{ fontSize: 24, opacity: 0.7, marginBottom: 16 }}>
            Sparetimepiece
          </div>
          <div
            style={{
              fontSize: 56,
              fontWeight: 'bold',
              textAlign: 'center',
              maxWidth: 900,
              lineHeight: 1.2,
            }}
          >
            {title}
          </div>
          <div
            style={{
              fontSize: 28,
              opacity: 0.7,
              marginTop: 16,
              textAlign: 'center',
            }}
          >
            {subtitle}
          </div>
          {price && (
            <div
              style={{
                fontSize: 48,
                fontWeight: 'bold',
                marginTop: 24,
                color: '#22c55e',
              }}
            >
              {price}
            </div>
          )}
        </div>
      </div>
    ),
    {
      width: 1200,
      height: 630,
    }
  )
}
