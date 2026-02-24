-- ============================================================
-- Sparetimepiece — Initial Database Schema
-- ============================================================

-- Enable required extensions
create extension if not exists "uuid-ossp";
create extension if not exists "pg_trgm";

-- ============================================================
-- 1. Brands
-- ============================================================
create table public.brands (
  id uuid primary key default uuid_generate_v4(),
  name text not null unique,
  slug text not null unique,
  logo_url text,
  description text,
  country text default 'Switzerland',
  founded_year integer,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index idx_brands_slug on public.brands (slug);

-- ============================================================
-- 2. Watches
-- ============================================================
create table public.watches (
  id uuid primary key default uuid_generate_v4(),
  brand_id uuid not null references public.brands(id) on delete cascade,
  reference_number text not null,
  model_name text not null,
  collection text,
  case_material text,
  case_diameter_mm numeric(5,1),
  movement_type text check (movement_type in ('automatic', 'manual', 'quartz')),
  caliber text,
  water_resistance_m integer,
  dial_color text,
  bracelet_material text,
  retail_price_usd integer, -- stored in cents
  current_market_price_usd integer, -- stored in cents
  price_trend_30d numeric(5,2), -- percentage change
  image_url text,
  view_count integer not null default 0,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (brand_id, reference_number)
);

create index idx_watches_brand on public.watches (brand_id);
create index idx_watches_reference on public.watches (reference_number);
create index idx_watches_model_name_trgm on public.watches using gin (model_name gin_trgm_ops);
create index idx_watches_price on public.watches (current_market_price_usd);

-- ============================================================
-- 3. Price History
-- ============================================================
create table public.price_history (
  id uuid primary key default uuid_generate_v4(),
  watch_id uuid not null references public.watches(id) on delete cascade,
  source text not null, -- 'chrono24', 'ebay', 'watchcharts'
  price_usd integer not null, -- cents
  condition text check (condition in ('new', 'unworn', 'very_good', 'good', 'fair')),
  listing_url text,
  scraped_at timestamptz not null default now()
);

create index idx_price_history_watch on public.price_history (watch_id);
create index idx_price_history_scraped on public.price_history (scraped_at);
create index idx_price_history_watch_scraped on public.price_history (watch_id, scraped_at desc);

-- ============================================================
-- 4. Price Aggregates
-- ============================================================
create table public.price_aggregates (
  id uuid primary key default uuid_generate_v4(),
  watch_id uuid not null references public.watches(id) on delete cascade,
  period text not null check (period in ('daily', 'weekly', 'monthly')),
  period_start date not null,
  avg_price_usd integer, -- cents
  min_price_usd integer,
  max_price_usd integer,
  median_price_usd integer,
  sample_count integer not null default 0,
  source text, -- null = all sources combined
  created_at timestamptz not null default now(),
  unique (watch_id, period, period_start, source)
);

create index idx_price_agg_watch_period on public.price_aggregates (watch_id, period, period_start);

-- ============================================================
-- 5. Profiles (extends auth.users)
-- ============================================================
create table public.profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  username text unique,
  full_name text,
  avatar_url text,
  bio text,
  location text,
  notification_email boolean not null default true,
  notification_push boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index idx_profiles_username on public.profiles (username);

-- ============================================================
-- 6. Listings (Marketplace)
-- ============================================================
create table public.listings (
  id uuid primary key default uuid_generate_v4(),
  seller_id uuid not null references public.profiles(id) on delete cascade,
  watch_id uuid references public.watches(id) on delete set null,
  title text not null,
  description text,
  price_usd integer not null, -- cents
  condition text not null check (condition in ('new', 'unworn', 'very_good', 'good', 'fair')),
  has_box boolean not null default false,
  has_papers boolean not null default false,
  year_of_purchase integer,
  location text,
  status text not null default 'active' check (status in ('draft', 'active', 'sold', 'removed')),
  view_count integer not null default 0,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index idx_listings_seller on public.listings (seller_id);
create index idx_listings_watch on public.listings (watch_id);
create index idx_listings_status on public.listings (status);
create index idx_listings_price on public.listings (price_usd) where status = 'active';

-- ============================================================
-- 7. Listing Images
-- ============================================================
create table public.listing_images (
  id uuid primary key default uuid_generate_v4(),
  listing_id uuid not null references public.listings(id) on delete cascade,
  storage_path text not null,
  display_order integer not null default 0,
  created_at timestamptz not null default now()
);

create index idx_listing_images_listing on public.listing_images (listing_id);

-- ============================================================
-- 8. Price Alerts
-- ============================================================
create table public.price_alerts (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid not null references public.profiles(id) on delete cascade,
  watch_id uuid not null references public.watches(id) on delete cascade,
  target_price_usd integer not null, -- cents
  direction text not null check (direction in ('above', 'below')),
  is_active boolean not null default true,
  last_triggered_at timestamptz,
  created_at timestamptz not null default now(),
  unique (user_id, watch_id, direction)
);

create index idx_alerts_user on public.price_alerts (user_id);
create index idx_alerts_active on public.price_alerts (is_active) where is_active = true;

-- ============================================================
-- 9. Watchlist Items
-- ============================================================
create table public.watchlist_items (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid not null references public.profiles(id) on delete cascade,
  watch_id uuid not null references public.watches(id) on delete cascade,
  notes text,
  created_at timestamptz not null default now(),
  unique (user_id, watch_id)
);

create index idx_watchlist_user on public.watchlist_items (user_id);

-- ============================================================
-- 10. Messages
-- ============================================================
create table public.messages (
  id uuid primary key default uuid_generate_v4(),
  listing_id uuid not null references public.listings(id) on delete cascade,
  sender_id uuid not null references public.profiles(id) on delete cascade,
  recipient_id uuid not null references public.profiles(id) on delete cascade,
  content text not null,
  is_read boolean not null default false,
  created_at timestamptz not null default now()
);

create index idx_messages_listing on public.messages (listing_id);
create index idx_messages_sender on public.messages (sender_id);
create index idx_messages_recipient on public.messages (recipient_id);
create index idx_messages_unread on public.messages (recipient_id, is_read) where is_read = false;

-- ============================================================
-- 11. Saved Searches
-- ============================================================
create table public.saved_searches (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid not null references public.profiles(id) on delete cascade,
  name text not null,
  filters jsonb not null default '{}',
  notify boolean not null default false,
  created_at timestamptz not null default now()
);

create index idx_saved_searches_user on public.saved_searches (user_id);

-- ============================================================
-- 12. Scrape Runs
-- ============================================================
create table public.scrape_runs (
  id uuid primary key default uuid_generate_v4(),
  source text not null,
  status text not null default 'running' check (status in ('running', 'completed', 'failed')),
  records_found integer not null default 0,
  records_inserted integer not null default 0,
  records_skipped integer not null default 0,
  error_message text,
  started_at timestamptz not null default now(),
  completed_at timestamptz
);

create index idx_scrape_runs_source on public.scrape_runs (source, started_at desc);

-- ============================================================
-- Functions & Triggers
-- ============================================================

-- Auto-create profile on user signup
create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer set search_path = ''
as $$
begin
  insert into public.profiles (id, username, full_name, avatar_url)
  values (
    new.id,
    new.raw_user_meta_data ->> 'username',
    coalesce(new.raw_user_meta_data ->> 'full_name', new.raw_user_meta_data ->> 'name'),
    new.raw_user_meta_data ->> 'avatar_url'
  );
  return new;
end;
$$;

create trigger on_auth_user_created
  after insert on auth.users
  for each row execute procedure public.handle_new_user();

-- Updated_at trigger function
create or replace function public.update_updated_at()
returns trigger
language plpgsql
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

create trigger update_brands_updated_at
  before update on public.brands
  for each row execute procedure public.update_updated_at();

create trigger update_watches_updated_at
  before update on public.watches
  for each row execute procedure public.update_updated_at();

create trigger update_profiles_updated_at
  before update on public.profiles
  for each row execute procedure public.update_updated_at();

create trigger update_listings_updated_at
  before update on public.listings
  for each row execute procedure public.update_updated_at();

-- Increment view count (atomic)
create or replace function public.increment_view_count(table_name text, row_id uuid)
returns void
language plpgsql
security definer
as $$
begin
  if table_name = 'watches' then
    update public.watches set view_count = view_count + 1 where id = row_id;
  elsif table_name = 'listings' then
    update public.listings set view_count = view_count + 1 where id = row_id;
  end if;
end;
$$;

-- Aggregate daily prices
create or replace function public.aggregate_daily_prices(target_date date default current_date)
returns void
language plpgsql
security definer
as $$
begin
  insert into public.price_aggregates (watch_id, period, period_start, avg_price_usd, min_price_usd, max_price_usd, median_price_usd, sample_count, source)
  select
    ph.watch_id,
    'daily',
    target_date,
    avg(ph.price_usd)::integer,
    min(ph.price_usd),
    max(ph.price_usd),
    percentile_cont(0.5) within group (order by ph.price_usd)::integer,
    count(*),
    ph.source
  from public.price_history ph
  where ph.scraped_at >= target_date
    and ph.scraped_at < target_date + interval '1 day'
  group by ph.watch_id, ph.source
  on conflict (watch_id, period, period_start, source) do update set
    avg_price_usd = excluded.avg_price_usd,
    min_price_usd = excluded.min_price_usd,
    max_price_usd = excluded.max_price_usd,
    median_price_usd = excluded.median_price_usd,
    sample_count = excluded.sample_count;

  -- Also aggregate across all sources
  insert into public.price_aggregates (watch_id, period, period_start, avg_price_usd, min_price_usd, max_price_usd, median_price_usd, sample_count, source)
  select
    ph.watch_id,
    'daily',
    target_date,
    avg(ph.price_usd)::integer,
    min(ph.price_usd),
    max(ph.price_usd),
    percentile_cont(0.5) within group (order by ph.price_usd)::integer,
    count(*),
    null
  from public.price_history ph
  where ph.scraped_at >= target_date
    and ph.scraped_at < target_date + interval '1 day'
  group by ph.watch_id
  on conflict (watch_id, period, period_start, source) do update set
    avg_price_usd = excluded.avg_price_usd,
    min_price_usd = excluded.min_price_usd,
    max_price_usd = excluded.max_price_usd,
    median_price_usd = excluded.median_price_usd,
    sample_count = excluded.sample_count;
end;
$$;

-- ============================================================
-- Row Level Security
-- ============================================================

-- Brands: public read
alter table public.brands enable row level security;
create policy "Brands are viewable by everyone" on public.brands
  for select using (true);
create policy "Brands are editable by service role only" on public.brands
  for all using (auth.role() = 'service_role');

-- Watches: public read
alter table public.watches enable row level security;
create policy "Watches are viewable by everyone" on public.watches
  for select using (true);
create policy "Watches are editable by service role only" on public.watches
  for all using (auth.role() = 'service_role');

-- Price History: public read
alter table public.price_history enable row level security;
create policy "Price history is viewable by everyone" on public.price_history
  for select using (true);
create policy "Price history is writable by service role only" on public.price_history
  for insert using (auth.role() = 'service_role');

-- Price Aggregates: public read
alter table public.price_aggregates enable row level security;
create policy "Price aggregates are viewable by everyone" on public.price_aggregates
  for select using (true);
create policy "Price aggregates are writable by service role only" on public.price_aggregates
  for all using (auth.role() = 'service_role');

-- Profiles: public read, own write
alter table public.profiles enable row level security;
create policy "Profiles are viewable by everyone" on public.profiles
  for select using (true);
create policy "Users can update own profile" on public.profiles
  for update using (auth.uid() = id);

-- Listings: public read active, own CRUD
alter table public.listings enable row level security;
create policy "Active listings are viewable by everyone" on public.listings
  for select using (status = 'active' or seller_id = auth.uid());
create policy "Users can create own listings" on public.listings
  for insert with check (seller_id = auth.uid());
create policy "Users can update own listings" on public.listings
  for update using (seller_id = auth.uid());
create policy "Users can delete own listings" on public.listings
  for delete using (seller_id = auth.uid());

-- Listing Images
alter table public.listing_images enable row level security;
create policy "Listing images viewable with listing" on public.listing_images
  for select using (
    exists (
      select 1 from public.listings l
      where l.id = listing_id and (l.status = 'active' or l.seller_id = auth.uid())
    )
  );
create policy "Users can manage images on own listings" on public.listing_images
  for all using (
    exists (
      select 1 from public.listings l
      where l.id = listing_id and l.seller_id = auth.uid()
    )
  );

-- Price Alerts: own only
alter table public.price_alerts enable row level security;
create policy "Users can view own alerts" on public.price_alerts
  for select using (user_id = auth.uid());
create policy "Users can create own alerts" on public.price_alerts
  for insert with check (user_id = auth.uid());
create policy "Users can update own alerts" on public.price_alerts
  for update using (user_id = auth.uid());
create policy "Users can delete own alerts" on public.price_alerts
  for delete using (user_id = auth.uid());

-- Watchlist: own only
alter table public.watchlist_items enable row level security;
create policy "Users can view own watchlist" on public.watchlist_items
  for select using (user_id = auth.uid());
create policy "Users can manage own watchlist" on public.watchlist_items
  for all using (user_id = auth.uid());

-- Messages: participants only
alter table public.messages enable row level security;
create policy "Users can view own messages" on public.messages
  for select using (sender_id = auth.uid() or recipient_id = auth.uid());
create policy "Users can send messages" on public.messages
  for insert with check (sender_id = auth.uid());
create policy "Recipients can mark messages read" on public.messages
  for update using (recipient_id = auth.uid());

-- Saved Searches: own only
alter table public.saved_searches enable row level security;
create policy "Users can view own saved searches" on public.saved_searches
  for select using (user_id = auth.uid());
create policy "Users can manage own saved searches" on public.saved_searches
  for all using (user_id = auth.uid());

-- Scrape Runs: service role only
alter table public.scrape_runs enable row level security;
create policy "Scrape runs viewable by service role" on public.scrape_runs
  for select using (auth.role() = 'service_role');
create policy "Scrape runs writable by service role" on public.scrape_runs
  for all using (auth.role() = 'service_role');
