-- ============================================================
-- Seed Data — Top 10 Swiss Luxury Watch Brands + Popular Models
-- Prices in USD cents
-- ============================================================

-- Brands
insert into public.brands (id, name, slug, description, founded_year) values
  ('b0000000-0000-0000-0000-000000000001', 'Rolex', 'rolex', 'The most recognized luxury watch brand in the world, known for precision and prestige.', 1905),
  ('b0000000-0000-0000-0000-000000000002', 'Patek Philippe', 'patek-philippe', 'The pinnacle of haute horlogerie, producing some of the most complicated and valuable timepieces.', 1839),
  ('b0000000-0000-0000-0000-000000000003', 'Audemars Piguet', 'audemars-piguet', 'Creators of the iconic Royal Oak, blending sporty elegance with fine watchmaking.', 1875),
  ('b0000000-0000-0000-0000-000000000004', 'Omega', 'omega', 'The Moonwatch brand, official timekeeper of the Olympics, combining heritage with innovation.', 1848),
  ('b0000000-0000-0000-0000-000000000005', 'Cartier', 'cartier', 'The jeweler of kings, creating iconic designs from Santos to Tank.', 1847),
  ('b0000000-0000-0000-0000-000000000006', 'TAG Heuer', 'tag-heuer', 'Swiss avant-garde since 1860, synonymous with motorsport chronographs.', 1860),
  ('b0000000-0000-0000-0000-000000000007', 'IWC Schaffhausen', 'iwc', 'Engineering excellence from Schaffhausen, known for pilot and Portuguese collections.', 1868),
  ('b0000000-0000-0000-0000-000000000008', 'Jaeger-LeCoultre', 'jaeger-lecoultre', 'The watchmakers'' watchmaker, creating movements for the most prestigious brands.', 1833),
  ('b0000000-0000-0000-0000-000000000009', 'Vacheron Constantin', 'vacheron-constantin', 'The oldest continuously operating watch manufacturer, epitome of Genevan craftsmanship.', 1755),
  ('b0000000-0000-0000-0000-000000000010', 'Breitling', 'breitling', 'Aviation-inspired chronographs built for professionals of air, sea, and land.', 1884);

-- Watches: Rolex
insert into public.watches (brand_id, reference_number, model_name, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d) values
  ('b0000000-0000-0000-0000-000000000001', '126710BLNR', 'GMT-Master II Batman', 'GMT-Master', 'Oystersteel', 40.0, 'automatic', '3285', 100, 'Black', 'Oyster', 1107500, 1550000, 2.3),
  ('b0000000-0000-0000-0000-000000000001', '126610LN', 'Submariner Date', 'Submariner', 'Oystersteel', 41.0, 'automatic', '3235', 300, 'Black', 'Oyster', 1005000, 1250000, -1.2),
  ('b0000000-0000-0000-0000-000000000001', '126500LN', 'Cosmograph Daytona', 'Daytona', 'Oystersteel', 40.0, 'automatic', '4131', 100, 'White', 'Oyster', 1590000, 2750000, 3.8),
  ('b0000000-0000-0000-0000-000000000001', '126334', 'Datejust 41', 'Datejust', 'Oystersteel/White Gold', 41.0, 'automatic', '3235', 100, 'Blue', 'Jubilee', 1230000, 1180000, -0.5),
  ('b0000000-0000-0000-0000-000000000001', '228235', 'Day-Date 40', 'Day-Date', '18k Everose Gold', 40.0, 'automatic', '3255', 100, 'Olive Green', 'President', 4000000, 4200000, 1.1);

-- Watches: Patek Philippe
insert into public.watches (brand_id, reference_number, model_name, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d) values
  ('b0000000-0000-0000-0000-000000000002', '5711/1A-010', 'Nautilus', 'Nautilus', 'Stainless Steel', 40.0, 'automatic', '26-330 SC', 120, 'Blue', 'Stainless Steel', 3570000, 12500000, -2.1),
  ('b0000000-0000-0000-0000-000000000002', '5167A-001', 'Aquanaut', 'Aquanaut', 'Stainless Steel', 40.0, 'automatic', '324 SC', 120, 'Black', 'Rubber', 2290000, 4500000, 0.8),
  ('b0000000-0000-0000-0000-000000000002', '5205R-010', 'Annual Calendar', 'Complications', '18k Rose Gold', 40.0, 'automatic', '324 S QA LU', 30, 'Blue', 'Leather', 4610000, 4800000, 1.5),
  ('b0000000-0000-0000-0000-000000000002', '5196G-001', 'Calatrava', 'Calatrava', '18k White Gold', 37.0, 'manual', '215 PS', 30, 'White', 'Leather', 2760000, 2500000, -0.3),
  ('b0000000-0000-0000-0000-000000000002', '5270P-001', 'Perpetual Calendar Chronograph', 'Grand Complications', 'Platinum', 41.0, 'manual', 'CH 29-535 PS Q', 30, 'Black', 'Leather', 19900000, 21000000, 2.8);

-- Watches: Audemars Piguet
insert into public.watches (brand_id, reference_number, model_name, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d) values
  ('b0000000-0000-0000-0000-000000000003', '15500ST.OO.1220ST.01', 'Royal Oak', 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4302', 50, 'Blue', 'Stainless Steel', 2950000, 4200000, 1.7),
  ('b0000000-0000-0000-0000-000000000003', '26331ST.OO.1220ST.01', 'Royal Oak Chronograph', 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '2385', 50, 'Blue', 'Stainless Steel', 3650000, 4800000, -0.9),
  ('b0000000-0000-0000-0000-000000000003', '15202ST.OO.1240ST.01', 'Royal Oak Jumbo Extra-Thin', 'Royal Oak', 'Stainless Steel', 39.0, 'automatic', '2121', 50, 'Blue', 'Stainless Steel', 3350000, 7500000, 4.2),
  ('b0000000-0000-0000-0000-000000000003', '26470ST.OO.A027CA.01', 'Royal Oak Offshore Chronograph', 'Royal Oak Offshore', 'Stainless Steel', 42.0, 'automatic', '3126/3840', 100, 'White', 'Rubber', 3100000, 2900000, -1.3),
  ('b0000000-0000-0000-0000-000000000003', '15510ST.OO.1320ST.07', 'Royal Oak 41mm', 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4302', 50, 'Green', 'Stainless Steel', 3050000, 4500000, 2.1);

-- Watches: Omega
insert into public.watches (brand_id, reference_number, model_name, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d) values
  ('b0000000-0000-0000-0000-000000000004', '310.30.42.50.01.001', 'Speedmaster Moonwatch Professional', 'Speedmaster', 'Stainless Steel', 42.0, 'manual', '3861', 50, 'Black', 'Stainless Steel', 695000, 620000, -0.8),
  ('b0000000-0000-0000-0000-000000000004', '210.30.42.20.03.001', 'Seamaster 300M', 'Seamaster', 'Stainless Steel', 42.0, 'automatic', '8800', 300, 'Blue', 'Stainless Steel', 575000, 480000, 0.5),
  ('b0000000-0000-0000-0000-000000000004', '234.30.41.21.03.001', 'Seamaster Planet Ocean', 'Seamaster', 'Stainless Steel', 39.5, 'automatic', '8800', 600, 'Blue', 'Stainless Steel', 690000, 550000, -0.3),
  ('b0000000-0000-0000-0000-000000000004', '131.33.41.21.03.001', 'Constellation', 'Constellation', 'Stainless Steel/Sedna Gold', 41.0, 'automatic', '8900', 50, 'Blue', 'Leather', 770000, 600000, 1.2),
  ('b0000000-0000-0000-0000-000000000004', '332.10.41.51.01.001', 'Speedmaster 57', 'Speedmaster', 'Stainless Steel', 40.5, 'automatic', '9906', 50, 'Black', 'Stainless Steel', 850000, 700000, 0.9);

-- Watches: Cartier
insert into public.watches (brand_id, reference_number, model_name, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d) values
  ('b0000000-0000-0000-0000-000000000005', 'WSSA0018', 'Santos de Cartier Medium', 'Santos', 'Stainless Steel', 35.1, 'automatic', '1847 MC', 100, 'Silver', 'Stainless Steel', 775000, 680000, 1.5),
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0065', 'Tank Must Large', 'Tank', 'Stainless Steel', 33.7, 'quartz', null, 30, 'Silver', 'Leather', 340000, 310000, 0.3),
  ('b0000000-0000-0000-0000-000000000005', 'WSBB0015', 'Ballon Bleu 42mm', 'Ballon Bleu', 'Stainless Steel', 42.0, 'automatic', '1847 MC', 30, 'Silver', 'Stainless Steel', 750000, 520000, -1.8),
  ('b0000000-0000-0000-0000-000000000005', 'WGSA0034', 'Santos-Dumont Large', 'Santos', '18k Rose Gold', 43.5, 'manual', '430 MC', 30, 'Silver', 'Leather', 1240000, 1100000, 0.7),
  ('b0000000-0000-0000-0000-000000000005', 'CRWSPA0037', 'Pasha de Cartier', 'Pasha', 'Stainless Steel', 41.0, 'automatic', '1847 MC', 100, 'Blue', 'Stainless Steel', 845000, 680000, -0.4);

-- Watches: TAG Heuer
insert into public.watches (brand_id, reference_number, model_name, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d) values
  ('b0000000-0000-0000-0000-000000000006', 'CBN2A1B.BA0643', 'Monaco', 'Monaco', 'Stainless Steel', 39.0, 'automatic', 'Heuer 02', 100, 'Blue', 'Stainless Steel', 695000, 550000, 0.4),
  ('b0000000-0000-0000-0000-000000000006', 'CBS2210.FC6534', 'Monaco Gulf Special Edition', 'Monaco', 'Stainless Steel', 39.0, 'automatic', 'Heuer 02', 100, 'Blue/Orange', 'Leather', 725000, 650000, 2.1),
  ('b0000000-0000-0000-0000-000000000006', 'CBE5110.FC8135', 'Carrera Chronograph', 'Carrera', 'Stainless Steel', 42.0, 'automatic', 'Heuer 02', 100, 'Black', 'Leather', 575000, 420000, -0.6),
  ('b0000000-0000-0000-0000-000000000006', 'WBP201A.BA0632', 'Aquaracer Professional 300', 'Aquaracer', 'Stainless Steel', 43.0, 'automatic', 'Calibre 5', 300, 'Blue', 'Stainless Steel', 295000, 240000, 0.2),
  ('b0000000-0000-0000-0000-000000000006', 'CAZ101AC.BA0842', 'Formula 1 Chronograph', 'Formula 1', 'Stainless Steel', 43.0, 'quartz', null, 200, 'Blue', 'Stainless Steel', 195000, 150000, -0.1);

-- Watches: IWC
insert into public.watches (brand_id, reference_number, model_name, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d) values
  ('b0000000-0000-0000-0000-000000000007', 'IW388101', 'Pilot Chronograph 41', 'Pilot', 'Stainless Steel', 41.0, 'automatic', '69385', 100, 'Blue', 'Stainless Steel', 825000, 680000, 0.6),
  ('b0000000-0000-0000-0000-000000000007', 'IW501001', 'Big Pilot 43', 'Big Pilot', 'Stainless Steel', 43.0, 'automatic', '52010', 100, 'Blue', 'Leather', 980000, 850000, 1.2),
  ('b0000000-0000-0000-0000-000000000007', 'IW371605', 'Portugieser Chronograph', 'Portugieser', 'Stainless Steel', 41.0, 'automatic', '69355', 30, 'Blue', 'Leather', 920000, 750000, -0.4),
  ('b0000000-0000-0000-0000-000000000007', 'IW328903', 'Pilot Mark XX', 'Pilot', 'Stainless Steel', 40.0, 'automatic', '32111', 100, 'Black', 'Leather', 545000, 460000, 0.8),
  ('b0000000-0000-0000-0000-000000000007', 'IW510103', 'Portugieser Annual Calendar', 'Portugieser', 'Stainless Steel', 44.2, 'automatic', '52850', 30, 'Blue', 'Leather', 1340000, 1100000, -0.7);

-- Watches: Jaeger-LeCoultre
insert into public.watches (brand_id, reference_number, model_name, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d) values
  ('b0000000-0000-0000-0000-000000000008', 'Q3828420', 'Reverso Classic Medium Thin', 'Reverso', 'Stainless Steel', 40.1, 'manual', '822/2', 30, 'Silver', 'Leather', 715000, 580000, 0.3),
  ('b0000000-0000-0000-0000-000000000008', 'Q3848420', 'Reverso Tribute Duoface', 'Reverso', 'Stainless Steel', 47.0, 'manual', '854 A/2', 30, 'Blue/Silver', 'Leather', 1200000, 1050000, 1.8),
  ('b0000000-0000-0000-0000-000000000008', 'Q1548420', 'Master Ultra Thin Moon', 'Master', 'Stainless Steel', 39.0, 'automatic', '925/1', 50, 'Blue', 'Leather', 1155000, 900000, -1.1),
  ('b0000000-0000-0000-0000-000000000008', 'Q9028480', 'Polaris Chronograph WT', 'Polaris', 'Stainless Steel', 44.0, 'automatic', '752', 200, 'Blue', 'Rubber', 1500000, 1200000, 0.5),
  ('b0000000-0000-0000-0000-000000000008', 'Q4148420', 'Master Control Calendar', 'Master', 'Stainless Steel', 40.0, 'automatic', '866 AA/1', 50, 'Silver', 'Leather', 1110000, 880000, -0.2);

-- Watches: Vacheron Constantin
insert into public.watches (brand_id, reference_number, model_name, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d) values
  ('b0000000-0000-0000-0000-000000000009', '4500V/110A-B483', 'Overseas', 'Overseas', 'Stainless Steel', 41.0, 'automatic', '5100', 150, 'Blue', 'Stainless Steel', 2700000, 3500000, 2.4),
  ('b0000000-0000-0000-0000-000000000009', '2000V/120G-B122', 'Overseas Chronograph', 'Overseas', '18k White Gold', 42.5, 'automatic', '5200', 150, 'Blue', 'Stainless Steel', 5500000, 4800000, -1.5),
  ('b0000000-0000-0000-0000-000000000009', '85180/000R-9248', 'Patrimony', 'Patrimony', '18k Rose Gold', 40.0, 'automatic', '2450 Q6', 30, 'Silver', 'Leather', 2600000, 2200000, 0.6),
  ('b0000000-0000-0000-0000-000000000009', '47040/000W-9500', 'Traditionelle', 'Traditionelle', '18k White Gold', 41.0, 'manual', '4400 AS', 30, 'Silver', 'Leather', 3150000, 2800000, -0.3),
  ('b0000000-0000-0000-0000-000000000009', '7900V/110A-B334', 'Overseas Ultra-Thin Perpetual Calendar', 'Overseas', 'Stainless Steel', 41.5, 'automatic', '1120 QP/1', 50, 'Blue', 'Stainless Steel', 9900000, 11000000, 3.1);

-- Watches: Breitling
insert into public.watches (brand_id, reference_number, model_name, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d) values
  ('b0000000-0000-0000-0000-000000000010', 'AB0138211B1A1', 'Navitimer B01 Chronograph 43', 'Navitimer', 'Stainless Steel', 43.0, 'automatic', 'B01', 30, 'Black', 'Stainless Steel', 980000, 750000, 0.9),
  ('b0000000-0000-0000-0000-000000000010', 'A17375211B2A1', 'Superocean Heritage 42', 'Superocean', 'Stainless Steel', 42.0, 'automatic', 'B20', 200, 'Blue', 'Stainless Steel', 570000, 420000, -0.5),
  ('b0000000-0000-0000-0000-000000000010', 'AB2010161C1A1', 'Chronomat B01 42', 'Chronomat', 'Stainless Steel', 42.0, 'automatic', 'B01', 200, 'Blue', 'Rouleaux', 870000, 650000, 0.3),
  ('b0000000-0000-0000-0000-000000000010', 'A13314101B1A1', 'Super Chronomat B01 44', 'Chronomat', 'Stainless Steel', 44.0, 'automatic', 'B01', 200, 'Black', 'Rouleaux', 1040000, 780000, -0.8),
  ('b0000000-0000-0000-0000-000000000010', 'A17316D21A1A1', 'Avenger Automatic 42', 'Avenger', 'Stainless Steel', 42.0, 'automatic', '17', 300, 'Black', 'Stainless Steel', 470000, 350000, 0.1);

-- Sample price history (last 90 days for Rolex Daytona)
do $$
declare
  daytona_id uuid;
  day_offset integer;
  base_price integer := 2650000;
begin
  select id into daytona_id from public.watches where reference_number = '126500LN';
  for day_offset in 0..89 loop
    insert into public.price_history (watch_id, source, price_usd, condition, scraped_at)
    values (
      daytona_id,
      'chrono24',
      base_price + (random() * 200000)::integer - 100000 + (day_offset * 1100),
      'unworn',
      now() - (day_offset || ' days')::interval + (random() * interval '12 hours')
    );
    insert into public.price_history (watch_id, source, price_usd, condition, scraped_at)
    values (
      daytona_id,
      'ebay',
      base_price + (random() * 300000)::integer - 150000 + (day_offset * 900) - 50000,
      'very_good',
      now() - (day_offset || ' days')::interval + (random() * interval '12 hours')
    );
  end loop;
end $$;

-- Sample price history for Nautilus
do $$
declare
  nautilus_id uuid;
  day_offset integer;
  base_price integer := 12800000;
begin
  select id into nautilus_id from public.watches where reference_number = '5711/1A-010';
  for day_offset in 0..89 loop
    insert into public.price_history (watch_id, source, price_usd, condition, scraped_at)
    values (
      nautilus_id,
      'chrono24',
      base_price + (random() * 500000)::integer - 250000 - (day_offset * 3500),
      'unworn',
      now() - (day_offset || ' days')::interval + (random() * interval '12 hours')
    );
  end loop;
end $$;

-- Sample price history for Royal Oak
do $$
declare
  ro_id uuid;
  day_offset integer;
  base_price integer := 4100000;
begin
  select id into ro_id from public.watches where reference_number = '15500ST.OO.1220ST.01';
  for day_offset in 0..89 loop
    insert into public.price_history (watch_id, source, price_usd, condition, scraped_at)
    values (
      ro_id,
      'chrono24',
      base_price + (random() * 200000)::integer - 100000 + (day_offset * 1200),
      'unworn',
      now() - (day_offset || ' days')::interval + (random() * interval '12 hours')
    );
  end loop;
end $$;
