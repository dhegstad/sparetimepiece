-- ============================================================
-- ROLEX EXPANSION — Datejust, Day-Date, and additional variants
-- These are ADDITIONAL watches not in the main seed.sql
-- ============================================================
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  -- ══════════════════════════════════════════════════════════════
  -- DATEJUST 36 — Oystersteel · Cal 3235 · 100m
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000001', '126200-0001', 'Datejust 36', null, 'Datejust', 'Oystersteel', 36.0, 'automatic', '3235', 100, 'Silver', 'Oyster', 770000, 690000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126200-0005', 'Datejust 36', null, 'Datejust', 'Oystersteel', 36.0, 'automatic', '3235', 100, 'Black', 'Oyster', 770000, 700000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126200-0006', 'Datejust 36', null, 'Datejust', 'Oystersteel', 36.0, 'automatic', '3235', 100, 'Blue', 'Oyster', 770000, 720000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126200-0019', 'Datejust 36', 'Mint Green', 'Datejust', 'Oystersteel', 36.0, 'automatic', '3235', 100, 'Mint Green', 'Oyster', 770000, 850000, 1.2, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126200-0020', 'Datejust 36', null, 'Datejust', 'Oystersteel', 36.0, 'automatic', '3235', 100, 'Bright Blue', 'Oyster', 770000, 820000, 0.9, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126200-0022', 'Datejust 36', null, 'Datejust', 'Oystersteel', 36.0, 'automatic', '3235', 100, 'Silver Palm', 'Oyster', 770000, 810000, 0.8, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126200-0023', 'Datejust 36', null, 'Datejust', 'Oystersteel', 36.0, 'automatic', '3235', 100, 'Olive Green Palm', 'Oyster', 770000, 830000, 1.0, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126200-0025', 'Datejust 36', null, 'Datejust', 'Oystersteel', 36.0, 'automatic', '3235', 100, 'Slate', 'Oyster', 770000, 750000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126200-0030', 'Datejust 36', null, 'Datejust', 'Oystersteel', 36.0, 'automatic', '3235', 100, 'White', 'Jubilee', 770000, 710000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126200-0031', 'Datejust 36', null, 'Datejust', 'Oystersteel', 36.0, 'automatic', '3235', 100, 'Blue', 'Jubilee', 770000, 730000, 0.5, null, null),
  -- ── Datejust 36 Steel/Rolesor ──
  ('b0000000-0000-0000-0000-000000000001', '126231-0015', 'Datejust 36', null, 'Datejust', 'Oystersteel/Everose Gold', 36.0, 'automatic', '3235', 100, 'Chocolate', 'Jubilee', 1325000, 1100000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126231-0016', 'Datejust 36', null, 'Datejust', 'Oystersteel/Everose Gold', 36.0, 'automatic', '3235', 100, 'Silver Palm', 'Jubilee', 1325000, 1120000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126231-0029', 'Datejust 36', null, 'Datejust', 'Oystersteel/Everose Gold', 36.0, 'automatic', '3235', 100, 'Rosé', 'Oyster', 1145000, 980000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126231-0031', 'Datejust 36', null, 'Datejust', 'Oystersteel/Everose Gold', 36.0, 'automatic', '3235', 100, 'Chocolate Fluted', 'Oyster', 1145000, 990000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126233-0015', 'Datejust 36', null, 'Datejust', 'Oystersteel/Yellow Gold', 36.0, 'automatic', '3235', 100, 'Champagne', 'Jubilee', 1375000, 1150000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126233-0016', 'Datejust 36', null, 'Datejust', 'Oystersteel/Yellow Gold', 36.0, 'automatic', '3235', 100, 'Champagne Palm', 'Jubilee', 1375000, 1170000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126233-0025', 'Datejust 36', null, 'Datejust', 'Oystersteel/Yellow Gold', 36.0, 'automatic', '3235', 100, 'Silver', 'Oyster', 1195000, 1010000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126233-0035', 'Datejust 36', null, 'Datejust', 'Oystersteel/Yellow Gold', 36.0, 'automatic', '3235', 100, 'Black', 'Oyster', 1195000, 1020000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126234-0015', 'Datejust 36', null, 'Datejust', 'Oystersteel/White Gold Bezel', 36.0, 'automatic', '3235', 100, 'Silver', 'Jubilee', 1025000, 900000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126234-0017', 'Datejust 36', null, 'Datejust', 'Oystersteel/White Gold Bezel', 36.0, 'automatic', '3235', 100, 'Black', 'Jubilee', 1025000, 910000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126234-0019', 'Datejust 36', null, 'Datejust', 'Oystersteel/White Gold Bezel', 36.0, 'automatic', '3235', 100, 'Blue', 'Jubilee', 1025000, 930000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126234-0025', 'Datejust 36', null, 'Datejust', 'Oystersteel/White Gold Bezel', 36.0, 'automatic', '3235', 100, 'Mint Green', 'Jubilee', 1025000, 1050000, 1.1, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126234-0032', 'Datejust 36', null, 'Datejust', 'Oystersteel/White Gold Bezel', 36.0, 'automatic', '3235', 100, 'Blue Fluted', 'Oyster', 960000, 870000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126234-0051', 'Datejust 36', null, 'Datejust', 'Oystersteel/White Gold Bezel', 36.0, 'automatic', '3235', 100, 'Bright Blue', 'Jubilee', 1025000, 1040000, 0.9, null, null),
  -- ══════════════════════════════════════════════════════════════
  -- DATEJUST 41 — Oystersteel · Cal 3235 · 100m
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000001', '126300-0001', 'Datejust 41', null, 'Datejust', 'Oystersteel', 41.0, 'automatic', '3235', 100, 'Silver', 'Oyster', 835000, 750000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126300-0005', 'Datejust 41', null, 'Datejust', 'Oystersteel', 41.0, 'automatic', '3235', 100, 'Black', 'Oyster', 835000, 760000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126300-0006', 'Datejust 41', null, 'Datejust', 'Oystersteel', 41.0, 'automatic', '3235', 100, 'Blue', 'Oyster', 835000, 780000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126300-0012', 'Datejust 41', null, 'Datejust', 'Oystersteel', 41.0, 'automatic', '3235', 100, 'Slate', 'Oyster', 835000, 800000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126300-0013', 'Datejust 41', null, 'Datejust', 'Oystersteel', 41.0, 'automatic', '3235', 100, 'Blue', 'Jubilee', 835000, 790000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126300-0014', 'Datejust 41', null, 'Datejust', 'Oystersteel', 41.0, 'automatic', '3235', 100, 'Silver', 'Jubilee', 835000, 760000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126300-0019', 'Datejust 41', 'Wimbledon', 'Datejust', 'Oystersteel', 41.0, 'automatic', '3235', 100, 'Slate/Green Roman', 'Jubilee', 835000, 920000, 1.5, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126300-0023', 'Datejust 41', 'Mint Green', 'Datejust', 'Oystersteel', 41.0, 'automatic', '3235', 100, 'Mint Green', 'Oyster', 835000, 910000, 1.2, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126300-0024', 'Datejust 41', null, 'Datejust', 'Oystersteel', 41.0, 'automatic', '3235', 100, 'Bright Blue', 'Oyster', 835000, 890000, 0.9, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126300-0028', 'Datejust 41', null, 'Datejust', 'Oystersteel', 41.0, 'automatic', '3235', 100, 'Olive Green Palm', 'Jubilee', 835000, 900000, 1.1, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126300-0029', 'Datejust 41', null, 'Datejust', 'Oystersteel', 41.0, 'automatic', '3235', 100, 'Silver Palm', 'Jubilee', 835000, 870000, 0.8, null, null),
  -- ── Datejust 41 Rolesor ──
  ('b0000000-0000-0000-0000-000000000001', '126331-0001', 'Datejust 41', null, 'Datejust', 'Oystersteel/Everose Gold', 41.0, 'automatic', '3235', 100, 'Chocolate', 'Oyster', 1455000, 1200000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126331-0002', 'Datejust 41', null, 'Datejust', 'Oystersteel/Everose Gold', 41.0, 'automatic', '3235', 100, 'Chocolate', 'Jubilee', 1635000, 1350000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126331-0016', 'Datejust 41', null, 'Datejust', 'Oystersteel/Everose Gold', 41.0, 'automatic', '3235', 100, 'Sundust', 'Jubilee', 1635000, 1360000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126331-0020', 'Datejust 41', null, 'Datejust', 'Oystersteel/Everose Gold', 41.0, 'automatic', '3235', 100, 'Slate', 'Jubilee', 1635000, 1370000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126333-0001', 'Datejust 41', null, 'Datejust', 'Oystersteel/Yellow Gold', 41.0, 'automatic', '3235', 100, 'Champagne', 'Oyster', 1510000, 1250000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126333-0002', 'Datejust 41', null, 'Datejust', 'Oystersteel/Yellow Gold', 41.0, 'automatic', '3235', 100, 'Champagne', 'Jubilee', 1690000, 1400000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126333-0010', 'Datejust 41', null, 'Datejust', 'Oystersteel/Yellow Gold', 41.0, 'automatic', '3235', 100, 'Black', 'Jubilee', 1690000, 1410000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126333-0013', 'Datejust 41', null, 'Datejust', 'Oystersteel/Yellow Gold', 41.0, 'automatic', '3235', 100, 'Silver', 'Jubilee', 1690000, 1390000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126334-0001', 'Datejust 41', null, 'Datejust', 'Oystersteel/White Gold Bezel', 41.0, 'automatic', '3235', 100, 'White', 'Oyster', 1095000, 950000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126334-0002', 'Datejust 41', null, 'Datejust', 'Oystersteel/White Gold Bezel', 41.0, 'automatic', '3235', 100, 'Blue', 'Jubilee', 1275000, 1100000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126334-0004', 'Datejust 41', null, 'Datejust', 'Oystersteel/White Gold Bezel', 41.0, 'automatic', '3235', 100, 'Blue', 'Oyster', 1095000, 960000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126334-0010', 'Datejust 41', null, 'Datejust', 'Oystersteel/White Gold Bezel', 41.0, 'automatic', '3235', 100, 'Black', 'Jubilee', 1275000, 1080000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126334-0014', 'Datejust 41', 'Wimbledon Fluted', 'Datejust', 'Oystersteel/White Gold Bezel', 41.0, 'automatic', '3235', 100, 'Slate/Green Roman', 'Jubilee', 1275000, 1350000, 1.8, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126334-0023', 'Datejust 41', null, 'Datejust', 'Oystersteel/White Gold Bezel', 41.0, 'automatic', '3235', 100, 'Bright Blue', 'Jubilee', 1275000, 1200000, 0.8, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126334-0025', 'Datejust 41', null, 'Datejust', 'Oystersteel/White Gold Bezel', 41.0, 'automatic', '3235', 100, 'Mint Green', 'Jubilee', 1275000, 1280000, 1.0, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126334-0026', 'Datejust 41', null, 'Datejust', 'Oystersteel/White Gold Bezel', 41.0, 'automatic', '3235', 100, 'Silver Fluted', 'Jubilee', 1275000, 1090000, 0.4, null, null),
  -- ══════════════════════════════════════════════════════════════
  -- DAY-DATE 36 — Full Gold · Cal 3255 · 100m
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000001', '128238-0069', 'Day-Date 36', null, 'Day-Date', '18k Yellow Gold', 36.0, 'automatic', '3255', 100, 'Champagne', 'President', 3800000, 3200000, -0.2, null, null),
  ('b0000000-0000-0000-0000-000000000001', '128238-0071', 'Day-Date 36', null, 'Day-Date', '18k Yellow Gold', 36.0, 'automatic', '3255', 100, 'Green', 'President', 3800000, 3400000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000001', '128238-0077', 'Day-Date 36', null, 'Day-Date', '18k Yellow Gold', 36.0, 'automatic', '3255', 100, 'Turquoise', 'President', 3800000, 3800000, 1.5, null, null),
  ('b0000000-0000-0000-0000-000000000001', '128238-0080', 'Day-Date 36', null, 'Day-Date', '18k Yellow Gold', 36.0, 'automatic', '3255', 100, 'Silver', 'President', 3800000, 3150000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000001', '128238-0081', 'Day-Date 36', null, 'Day-Date', '18k Yellow Gold', 36.0, 'automatic', '3255', 100, 'Black', 'President', 3800000, 3250000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000001', '128235-0055', 'Day-Date 36', null, 'Day-Date', '18k Everose Gold', 36.0, 'automatic', '3255', 100, 'Chocolate', 'President', 3900000, 3300000, -0.1, null, null),
  ('b0000000-0000-0000-0000-000000000001', '128235-0060', 'Day-Date 36', null, 'Day-Date', '18k Everose Gold', 36.0, 'automatic', '3255', 100, 'Eisenkiesel', 'President', 3900000, 3350000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000001', '128235-0061', 'Day-Date 36', null, 'Day-Date', '18k Everose Gold', 36.0, 'automatic', '3255', 100, 'Rose Stripe', 'President', 3900000, 3400000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000001', '128239-0039', 'Day-Date 36', null, 'Day-Date', '18k White Gold', 36.0, 'automatic', '3255', 100, 'Blue', 'President', 4000000, 3500000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000001', '128239-0040', 'Day-Date 36', null, 'Day-Date', '18k White Gold', 36.0, 'automatic', '3255', 100, 'Silver', 'President', 4000000, 3400000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000001', '128239-0060', 'Day-Date 36', null, 'Day-Date', '18k White Gold', 36.0, 'automatic', '3255', 100, 'Meteorite', 'President', 4200000, 4000000, 0.8, null, null),
  ('b0000000-0000-0000-0000-000000000001', '128236-0001', 'Day-Date 36', null, 'Day-Date', '950 Platinum', 36.0, 'automatic', '3255', 100, 'Ice Blue', 'President', 6400000, 5800000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000001', '128236-0003', 'Day-Date 36', null, 'Day-Date', '950 Platinum', 36.0, 'automatic', '3255', 100, 'Ice Blue/Diamonds', 'President', 7200000, 6500000, 0.4, null, null),
  -- ══════════════════════════════════════════════════════════════
  -- DAY-DATE 40 — Full Gold · Cal 3255 · 100m
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000001', '228238-0042', 'Day-Date 40', null, 'Day-Date', '18k Yellow Gold', 40.0, 'automatic', '3255', 100, 'Champagne', 'President', 4100000, 3500000, -0.1, null, null),
  ('b0000000-0000-0000-0000-000000000001', '228238-0061', 'Day-Date 40', null, 'Day-Date', '18k Yellow Gold', 40.0, 'automatic', '3255', 100, 'Green', 'President', 4100000, 3700000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000001', '228238-0059', 'Day-Date 40', null, 'Day-Date', '18k Yellow Gold', 40.0, 'automatic', '3255', 100, 'Silver', 'President', 4100000, 3450000, -0.2, null, null),
  ('b0000000-0000-0000-0000-000000000001', '228238-0060', 'Day-Date 40', null, 'Day-Date', '18k Yellow Gold', 40.0, 'automatic', '3255', 100, 'Black', 'President', 4100000, 3550000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000001', '228238-0063', 'Day-Date 40', null, 'Day-Date', '18k Yellow Gold', 40.0, 'automatic', '3255', 100, 'Turquoise', 'President', 4100000, 4100000, 1.5, null, null),
  ('b0000000-0000-0000-0000-000000000001', '228235-0044', 'Day-Date 40', null, 'Day-Date', '18k Everose Gold', 40.0, 'automatic', '3255', 100, 'Chocolate', 'President', 4200000, 3600000, -0.1, null, null),
  ('b0000000-0000-0000-0000-000000000001', '228235-0045', 'Day-Date 40', null, 'Day-Date', '18k Everose Gold', 40.0, 'automatic', '3255', 100, 'Sundust', 'President', 4200000, 3650000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000001', '228235-0061', 'Day-Date 40', null, 'Day-Date', '18k Everose Gold', 40.0, 'automatic', '3255', 100, 'Eisenkiesel', 'President', 4200000, 3700000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000001', '228239-0039', 'Day-Date 40', null, 'Day-Date', '18k White Gold', 40.0, 'automatic', '3255', 100, 'Blue', 'President', 4300000, 3800000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000001', '228239-0040', 'Day-Date 40', null, 'Day-Date', '18k White Gold', 40.0, 'automatic', '3255', 100, 'Silver', 'President', 4300000, 3700000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000001', '228239-0058', 'Day-Date 40', null, 'Day-Date', '18k White Gold', 40.0, 'automatic', '3255', 100, 'Black', 'President', 4300000, 3750000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000001', '228239-0060', 'Day-Date 40', null, 'Day-Date', '18k White Gold', 40.0, 'automatic', '3255', 100, 'Meteorite', 'President', 4500000, 4200000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000001', '228236-0001', 'Day-Date 40', null, 'Day-Date', '950 Platinum', 40.0, 'automatic', '3255', 100, 'Ice Blue', 'President', 6800000, 6200000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000001', '228236-0012', 'Day-Date 40', null, 'Day-Date', '950 Platinum', 40.0, 'automatic', '3255', 100, 'Ice Blue/Diamonds', 'President', 7500000, 6800000, 0.4, null, null),
  -- ══════════════════════════════════════════════════════════════
  -- OYSTER PERPETUAL additional refs
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000001', '124300-0001', 'Oyster Perpetual 41', null, 'Oyster Perpetual', 'Oystersteel', 41.0, 'automatic', '3230', 100, 'Silver', 'Oyster', 630000, 600000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000001', '124300-0002', 'Oyster Perpetual 41', null, 'Oyster Perpetual', 'Oystersteel', 41.0, 'automatic', '3230', 100, 'Black', 'Oyster', 630000, 610000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000001', '124300-0003', 'Oyster Perpetual 41', null, 'Oyster Perpetual', 'Oystersteel', 41.0, 'automatic', '3230', 100, 'Blue', 'Oyster', 630000, 640000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000001', '124300-0006', 'Oyster Perpetual 41', null, 'Oyster Perpetual', 'Oystersteel', 41.0, 'automatic', '3230', 100, 'Bright Blue', 'Oyster', 630000, 800000, 2.0, null, null),
  ('b0000000-0000-0000-0000-000000000001', '124300-0007', 'Oyster Perpetual 41', null, 'Oyster Perpetual', 'Oystersteel', 41.0, 'automatic', '3230', 100, 'Green', 'Oyster', 630000, 850000, 2.5, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126000-0001', 'Oyster Perpetual 36', null, 'Oyster Perpetual', 'Oystersteel', 36.0, 'automatic', '3230', 100, 'Silver', 'Oyster', 595000, 560000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126000-0002', 'Oyster Perpetual 36', null, 'Oyster Perpetual', 'Oystersteel', 36.0, 'automatic', '3230', 100, 'Black', 'Oyster', 595000, 570000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126000-0003', 'Oyster Perpetual 36', null, 'Oyster Perpetual', 'Oystersteel', 36.0, 'automatic', '3230', 100, 'Blue', 'Oyster', 595000, 590000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126000-0006', 'Oyster Perpetual 36', 'Tiffany OP36', 'Oyster Perpetual', 'Oystersteel', 36.0, 'automatic', '3230', 100, 'Turquoise Blue', 'Oyster', 595000, 1200000, 3.5, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126000-0007', 'Oyster Perpetual 36', null, 'Oyster Perpetual', 'Oystersteel', 36.0, 'automatic', '3230', 100, 'Green', 'Oyster', 595000, 750000, 1.8, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126000-0009', 'Oyster Perpetual 36', null, 'Oyster Perpetual', 'Oystersteel', 36.0, 'automatic', '3230', 100, 'Yellow', 'Oyster', 595000, 680000, 1.0, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126000-0010', 'Oyster Perpetual 36', null, 'Oyster Perpetual', 'Oystersteel', 36.0, 'automatic', '3230', 100, 'Coral Red', 'Oyster', 595000, 700000, 1.2, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126000-0011', 'Oyster Perpetual 36', null, 'Oyster Perpetual', 'Oystersteel', 36.0, 'automatic', '3230', 100, 'Candy Pink', 'Oyster', 595000, 690000, 1.1, null, null),
  ('b0000000-0000-0000-0000-000000000001', '277200-0001', 'Oyster Perpetual 31', null, 'Oyster Perpetual', 'Oystersteel', 31.0, 'automatic', '2232', 100, 'Silver', 'Oyster', 555000, 510000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000001', '277200-0003', 'Oyster Perpetual 31', null, 'Oyster Perpetual', 'Oystersteel', 31.0, 'automatic', '2232', 100, 'Blue', 'Oyster', 555000, 530000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000001', '277200-0006', 'Oyster Perpetual 31', null, 'Oyster Perpetual', 'Oystersteel', 31.0, 'automatic', '2232', 100, 'Green', 'Oyster', 555000, 600000, 1.0, null, null),
  ('b0000000-0000-0000-0000-000000000001', '276200-0001', 'Oyster Perpetual 28', null, 'Oyster Perpetual', 'Oystersteel', 28.0, 'automatic', '2232', 100, 'Silver', 'Oyster', 530000, 490000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000001', '276200-0003', 'Oyster Perpetual 28', null, 'Oyster Perpetual', 'Oystersteel', 28.0, 'automatic', '2232', 100, 'Blue', 'Oyster', 530000, 500000, 0.3, null, null),
  -- ══════════════════════════════════════════════════════════════
  -- ADDITIONAL SKY-DWELLER refs
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000001', '336934-0001', 'Sky-Dweller', null, 'Sky-Dweller', 'Oystersteel/White Gold Bezel', 42.0, 'automatic', '9001', 100, 'Blue', 'Oyster', 1670000, 1850000, 1.5, null, null),
  ('b0000000-0000-0000-0000-000000000001', '336934-0002', 'Sky-Dweller', null, 'Sky-Dweller', 'Oystersteel/White Gold Bezel', 42.0, 'automatic', '9001', 100, 'Black', 'Oyster', 1670000, 1700000, 0.8, null, null),
  ('b0000000-0000-0000-0000-000000000001', '336934-0004', 'Sky-Dweller', null, 'Sky-Dweller', 'Oystersteel/White Gold Bezel', 42.0, 'automatic', '9001', 100, 'Silver', 'Jubilee', 1850000, 1900000, 1.0, null, null),
  ('b0000000-0000-0000-0000-000000000001', '336934-0006', 'Sky-Dweller', null, 'Sky-Dweller', 'Oystersteel/White Gold Bezel', 42.0, 'automatic', '9001', 100, 'Blue', 'Jubilee', 1850000, 2100000, 2.0, null, null),
  ('b0000000-0000-0000-0000-000000000001', '336935-0001', 'Sky-Dweller', null, 'Sky-Dweller', 'Oystersteel/Everose Gold', 42.0, 'automatic', '9001', 100, 'Chocolate', 'Jubilee', 2120000, 2000000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000001', '336938-0001', 'Sky-Dweller', null, 'Sky-Dweller', '18k Yellow Gold', 42.0, 'automatic', '9001', 100, 'Champagne', 'Oyster', 4650000, 4100000, -0.2, null, null),
  ('b0000000-0000-0000-0000-000000000001', '336938-0002', 'Sky-Dweller', null, 'Sky-Dweller', '18k Yellow Gold', 42.0, 'automatic', '9001', 100, 'Black', 'Oyster', 4650000, 4200000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000001', '336239-0002', 'Sky-Dweller', null, 'Sky-Dweller', '18k White Gold', 42.0, 'automatic', '9001', 100, 'Blue', 'Oysterflex', 4900000, 4600000, 0.5, null, null),
  -- ══════════════════════════════════════════════════════════════
  -- YACHT-MASTER additional refs
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000001', '226627-0001', 'Yacht-Master 42', null, 'Yacht-Master', '18k White Gold', 42.0, 'automatic', '3235', 100, 'Black', 'Oysterflex', 3150000, 2800000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000001', '226659-0002', 'Yacht-Master 42', null, 'Yacht-Master', '18k White Gold', 42.0, 'automatic', '3235', 100, 'Black', 'Oysterflex', 3150000, 2850000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126621-0001', 'Yacht-Master 40', null, 'Yacht-Master', 'Oystersteel/Everose Gold', 40.0, 'automatic', '3235', 100, 'Chocolate', 'Oyster', 1700000, 1500000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126621-0002', 'Yacht-Master 40', null, 'Yacht-Master', 'Oystersteel/Everose Gold', 40.0, 'automatic', '3235', 100, 'Black', 'Oysterflex', 1620000, 1450000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126622-0001', 'Yacht-Master 40', null, 'Yacht-Master', 'Oystersteel/Platinum Bezel', 40.0, 'automatic', '3235', 100, 'Rhodium', 'Oyster', 1350000, 1250000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000001', '126622-0002', 'Yacht-Master 40', null, 'Yacht-Master', 'Oystersteel/Platinum Bezel', 40.0, 'automatic', '3235', 100, 'Blue', 'Oyster', 1350000, 1280000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000001', '268655-0001', 'Yacht-Master 37', null, 'Yacht-Master', '18k Everose Gold', 37.0, 'automatic', '2236', 100, 'Black', 'Oysterflex', 2850000, 2400000, -0.2, null, null),
  ('b0000000-0000-0000-0000-000000000001', '268622-0002', 'Yacht-Master 37', null, 'Yacht-Master', 'Oystersteel/Platinum Bezel', 37.0, 'automatic', '2236', 100, 'Rhodium', 'Oyster', 1200000, 1080000, 0.3, null, null);
