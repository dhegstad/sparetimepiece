-- Add nickname column to watches for common name search (e.g. "Pepsi", "Batman", "Hulk")
alter table public.watches add column if not exists nickname text;

-- Trigram index for fuzzy nickname search
create index if not exists idx_watches_nickname_trgm on public.watches using gin (nickname gin_trgm_ops);
