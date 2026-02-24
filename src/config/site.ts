export const siteConfig = {
  name: 'Sparetimepiece',
  description: 'Track luxury watch prices, set alerts, and buy or sell on the marketplace.',
  url: process.env.NEXT_PUBLIC_SITE_URL || 'http://localhost:3000',
  brands: [
    'Rolex',
    'Patek Philippe',
    'Audemars Piguet',
    'Omega',
    'Cartier',
    'TAG Heuer',
    'IWC Schaffhausen',
    'Jaeger-LeCoultre',
    'Vacheron Constantin',
    'Breitling',
  ],
  nav: {
    main: [
      { label: 'Watches', href: '/watches' },
      { label: 'Brands', href: '/brands' },
      { label: 'Price Index', href: '/price-index' },
      { label: 'Marketplace', href: '/marketplace' },
    ],
    dashboard: [
      { label: 'Overview', href: '/dashboard' },
      { label: 'Watchlist', href: '/dashboard/watchlist' },
      { label: 'Alerts', href: '/dashboard/alerts' },
      { label: 'Listings', href: '/dashboard/listings' },
      { label: 'Messages', href: '/dashboard/messages' },
      { label: 'Settings', href: '/dashboard/settings' },
    ],
  },
} as const
