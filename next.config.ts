import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  images: {
    remotePatterns: [
      // Rolex
      { protocol: 'https', hostname: 'content.rolex.com' },
      // Patek Philippe
      { protocol: 'https', hostname: 'static.patek.com' },
      // Audemars Piguet
      { protocol: 'https', hostname: 'www.audemarspiguet.com' },
      // Omega
      { protocol: 'https', hostname: 'www.omegawatches.com' },
      // Cartier
      { protocol: 'https', hostname: 'www.cartier.com' },
      // TAG Heuer
      { protocol: 'https', hostname: 'www.tagheuer.com' },
      // IWC
      { protocol: 'https', hostname: 'www.iwc.com' },
      // Jaeger-LeCoultre
      { protocol: 'https', hostname: 'www.jaeger-lecoultre.com' },
      // Vacheron Constantin
      { protocol: 'https', hostname: 'www.vacheron-constantin.com' },
      // Breitling
      { protocol: 'https', hostname: 'www.breitling.com' },
      // Richard Mille
      { protocol: 'https', hostname: 'www.richardmille.com' },
      // Tissot
      { protocol: 'https', hostname: 'www.tissotwatches.com' },
      // Hermès
      { protocol: 'https', hostname: 'www.hermes.com' },
      // Tudor
      { protocol: 'https', hostname: 'www.tudorwatch.com' },
      // Hublot
      { protocol: 'https', hostname: 'www.hublot.com' },
      // Blancpain
      { protocol: 'https', hostname: 'www.blancpain.com' },
      // Supabase Storage (wildcard for any project)
      { protocol: 'https', hostname: '*.supabase.co' },
    ],
  },
};

export default nextConfig;
