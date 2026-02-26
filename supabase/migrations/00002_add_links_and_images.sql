-- ============================================================
-- Migration: Add links and images support
-- Adds website_url to brands, brand_page_url to watches,
-- and creates watch_market_links table
-- ============================================================

-- Add website URL to brands
alter table public.brands add column if not exists website_url text;

-- Add brand page URL to watches (link to specific watch on brand's official site)
alter table public.watches add column if not exists brand_page_url text;

-- ============================================================
-- Watch Market Links — multiple retailer links per watch
-- ============================================================
create table public.watch_market_links (
  id uuid primary key default uuid_generate_v4(),
  watch_id uuid not null references public.watches(id) on delete cascade,
  source text not null,                -- 'chrono24', 'ebay', 'bezel', 'crown_caliber', 'bobs_watches'
  source_display_name text not null,   -- 'Chrono24', 'eBay', 'Bezel', etc.
  url text not null,
  is_active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index idx_watch_market_links_watch on public.watch_market_links (watch_id);
create index idx_watch_market_links_source on public.watch_market_links (source);

-- Updated_at trigger
create trigger update_watch_market_links_updated_at
  before update on public.watch_market_links
  for each row execute procedure public.update_updated_at();

-- RLS policies
alter table public.watch_market_links enable row level security;

create policy "Market links are viewable by everyone" on public.watch_market_links
  for select using (true);

create policy "Market links are editable by service role only" on public.watch_market_links
  for all using (auth.role() = 'service_role');
