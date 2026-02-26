-- ============================================================
-- Seed Data — 16 Luxury Watch Brands + Comprehensive Models
-- Prices in USD cents · nickname column for common names
-- ============================================================

-- Brands
insert into public.brands (id, name, slug, description, founded_year, website_url) values
  ('b0000000-0000-0000-0000-000000000001', 'Rolex', 'rolex', 'The most recognized luxury watch brand in the world, known for precision and prestige.', 1905, 'https://www.rolex.com'),
  ('b0000000-0000-0000-0000-000000000002', 'Patek Philippe', 'patek-philippe', 'The pinnacle of haute horlogerie, producing some of the most complicated and valuable timepieces.', 1839, 'https://www.patek.com'),
  ('b0000000-0000-0000-0000-000000000003', 'Audemars Piguet', 'audemars-piguet', 'Creators of the iconic Royal Oak, blending sporty elegance with fine watchmaking.', 1875, 'https://www.audemarspiguet.com'),
  ('b0000000-0000-0000-0000-000000000004', 'Omega', 'omega', 'The Moonwatch brand, official timekeeper of the Olympics, combining heritage with innovation.', 1848, 'https://www.omegawatches.com'),
  ('b0000000-0000-0000-0000-000000000005', 'Cartier', 'cartier', 'The jeweler of kings, creating iconic designs from Santos to Tank.', 1847, 'https://www.cartier.com'),
  ('b0000000-0000-0000-0000-000000000006', 'TAG Heuer', 'tag-heuer', 'Swiss avant-garde since 1860, synonymous with motorsport chronographs.', 1860, 'https://www.tagheuer.com'),
  ('b0000000-0000-0000-0000-000000000007', 'IWC Schaffhausen', 'iwc', 'Engineering excellence from Schaffhausen, known for pilot and Portuguese collections.', 1868, 'https://www.iwc.com'),
  ('b0000000-0000-0000-0000-000000000008', 'Jaeger-LeCoultre', 'jaeger-lecoultre', 'The watchmakers'' watchmaker, creating movements for the most prestigious brands.', 1833, 'https://www.jaeger-lecoultre.com'),
  ('b0000000-0000-0000-0000-000000000009', 'Vacheron Constantin', 'vacheron-constantin', 'The oldest continuously operating watch manufacturer, epitome of Genevan craftsmanship.', 1755, 'https://www.vacheron-constantin.com'),
  ('b0000000-0000-0000-0000-000000000010', 'Breitling', 'breitling', 'Aviation-inspired chronographs built for professionals of air, sea, and land.', 1884, 'https://www.breitling.com'),
  ('b0000000-0000-0000-0000-000000000011', 'Richard Mille', 'richard-mille', 'Ultra-luxury avant-garde watchmaking with Formula 1-inspired materials and design.', 2001, 'https://www.richardmille.com'),
  ('b0000000-0000-0000-0000-000000000012', 'Tissot', 'tissot', 'Accessible Swiss excellence since 1853, offering remarkable value in every price segment.', 1853, 'https://www.tissotwatches.com'),
  ('b0000000-0000-0000-0000-000000000013', 'Hermès', 'hermes', 'Where Parisian haute couture meets Swiss watchmaking, known for elegant designs and artisan dials.', 1837, 'https://www.hermes.com'),
  ('b0000000-0000-0000-0000-000000000014', 'Tudor', 'tudor', 'Rolex''s sibling brand offering robust tool watches with exceptional value.', 1926, 'https://www.tudorwatch.com'),
  ('b0000000-0000-0000-0000-000000000015', 'Hublot', 'hublot', 'The Art of Fusion — bold, contemporary luxury combining unusual materials.', 1980, 'https://www.hublot.com'),
  ('b0000000-0000-0000-0000-000000000016', 'Blancpain', 'blancpain', 'The oldest watch brand in the world, creator of the legendary Fifty Fathoms diver.', 1735, 'https://www.blancpain.com');


-- ============================================================
-- SUBMARINER (7 current production refs)
-- Cal 3230 (no-date) / 3235 (date) · 300m WR · 41mm
-- ============================================================
INSERT INTO public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) VALUES
  -- Submariner No Date - Steel
  ('b0000000-0000-0000-0000-000000000001', '124060', 'Submariner', NULL, 'Submariner', 'Oystersteel', 41.0, 'automatic', '3230', 300, 'Black', 'Oyster', 1005000, 1180000, 0.5, NULL, 'https://www.rolex.com/watches/submariner/m124060-0001'),
  -- Submariner Date - Steel Black
  ('b0000000-0000-0000-0000-000000000001', '126610LN', 'Submariner Date', NULL, 'Submariner', 'Oystersteel', 41.0, 'automatic', '3235', 300, 'Black', 'Oyster', 1135000, 1300000, -0.8, NULL, 'https://www.rolex.com/watches/submariner/m126610ln-0001'),
  -- Submariner Date - Steel Green Bezel (Starbucks)
  ('b0000000-0000-0000-0000-000000000001', '126610LV', 'Submariner Date', 'Starbucks', 'Submariner', 'Oystersteel', 41.0, 'automatic', '3235', 300, 'Black', 'Oyster', 1135000, 1480000, 1.5, NULL, 'https://www.rolex.com/watches/submariner/m126610lv-0002'),
  -- Submariner Date - Two-Tone Yellow Gold/Steel Black
  ('b0000000-0000-0000-0000-000000000001', '126613LN', 'Submariner Date', NULL, 'Submariner', 'Oystersteel/Yellow Gold', 41.0, 'automatic', '3235', 300, 'Black', 'Oyster', 1890000, 1750000, -0.5, NULL, 'https://www.rolex.com/watches/submariner/m126613ln-0003'),
  -- Submariner Date - Two-Tone Yellow Gold/Steel Blue (Bluesy)
  ('b0000000-0000-0000-0000-000000000001', '126613LB', 'Submariner Date', 'Bluesy', 'Submariner', 'Oystersteel/Yellow Gold', 41.0, 'automatic', '3235', 300, 'Royal Blue', 'Oyster', 1890000, 1850000, 0.3, NULL, 'https://www.rolex.com/watches/submariner/m126613lb-0002'),
  -- Submariner Date - Full Yellow Gold Black
  ('b0000000-0000-0000-0000-000000000001', '126618LN', 'Submariner Date', NULL, 'Submariner', '18k Yellow Gold', 41.0, 'automatic', '3235', 300, 'Black', 'Oyster', 4400000, 3900000, -1.2, NULL, 'https://www.rolex.com/watches/submariner/m126618ln-0002'),
  -- Submariner Date - Full Yellow Gold Blue
  ('b0000000-0000-0000-0000-000000000001', '126618LB', 'Submariner Date', NULL, 'Submariner', '18k Yellow Gold', 41.0, 'automatic', '3235', 300, 'Royal Blue', 'Oyster', 4400000, 4100000, 0.2, NULL, 'https://www.rolex.com/watches/submariner/m126618lb-0003'),
  -- Submariner Date - White Gold Blue (Smurf)
  ('b0000000-0000-0000-0000-000000000001', '126619LB', 'Submariner Date', 'Smurf', 'Submariner', '18k White Gold', 41.0, 'automatic', '3235', 300, 'Blue', 'Oyster', 4400000, 3800000, -0.8, NULL, 'https://www.rolex.com/watches/submariner/m126619lb-0003'),

-- ============================================================
-- GMT-MASTER II (11 current production refs)
-- Cal 3285 · 100m WR · 40mm
-- ============================================================
  -- GMT-Master II - Steel Pepsi Jubilee
  ('b0000000-0000-0000-0000-000000000001', '126710BLRO-0001', 'GMT-Master II', 'Pepsi (Jubilee)', 'GMT-Master II', 'Oystersteel', 40.0, 'automatic', '3285', 100, 'Black', 'Jubilee', 1135000, 1850000, 2.5, NULL, 'https://www.rolex.com/watches/gmt-master-ii/m126710blro-0001'),
  -- GMT-Master II - Steel Pepsi Oyster
  ('b0000000-0000-0000-0000-000000000001', '126710BLRO-0002', 'GMT-Master II', 'Pepsi (Oyster)', 'GMT-Master II', 'Oystersteel', 40.0, 'automatic', '3285', 100, 'Black', 'Oyster', 1135000, 1780000, 2.2, NULL, 'https://www.rolex.com/watches/gmt-master-ii/m126710blro-0002'),
  -- GMT-Master II - Steel Batman Jubilee
  ('b0000000-0000-0000-0000-000000000001', '126710BLNR-0002', 'GMT-Master II', 'Batgirl (Jubilee)', 'GMT-Master II', 'Oystersteel', 40.0, 'automatic', '3285', 100, 'Black', 'Jubilee', 1135000, 1650000, 1.8, NULL, 'https://www.rolex.com/watches/gmt-master-ii/m126710blnr-0002'),
  -- GMT-Master II - Steel Batman Oyster
  ('b0000000-0000-0000-0000-000000000001', '126710BLNR-0003', 'GMT-Master II', 'Batman (Oyster)', 'GMT-Master II', 'Oystersteel', 40.0, 'automatic', '3285', 100, 'Black', 'Oyster', 1135000, 1600000, 1.5, NULL, 'https://www.rolex.com/watches/gmt-master-ii/m126710blnr-0003'),
  -- GMT-Master II - Steel Sprite/Destro Oyster (Left-Hand)
  ('b0000000-0000-0000-0000-000000000001', '126720VTNR-0001', 'GMT-Master II', 'Sprite / Destro (Oyster)', 'GMT-Master II', 'Oystersteel', 40.0, 'automatic', '3285', 100, 'Black', 'Oyster', 1135000, 1700000, 2.0, NULL, 'https://www.rolex.com/watches/gmt-master-ii/m126720vtnr-0001'),
  -- GMT-Master II - Steel Sprite/Destro Jubilee (Left-Hand)
  ('b0000000-0000-0000-0000-000000000001', '126720VTNR-0004', 'GMT-Master II', 'Sprite / Destro (Jubilee)', 'GMT-Master II', 'Oystersteel', 40.0, 'automatic', '3285', 100, 'Black', 'Jubilee', 1135000, 1750000, 2.3, NULL, 'https://www.rolex.com/watches/gmt-master-ii/m126720vtnr-0004'),
  -- GMT-Master II - Everose Rolesor Root Beer
  ('b0000000-0000-0000-0000-000000000001', '126711CHNR', 'GMT-Master II', 'Root Beer', 'GMT-Master II', 'Oystersteel/Everose Gold', 40.0, 'automatic', '3285', 100, 'Black', 'Oyster', 1775000, 1950000, 1.2, NULL, 'https://www.rolex.com/watches/gmt-master-ii/m126711chnr-0002'),
  -- GMT-Master II - Full Yellow Gold Grey/Black
  ('b0000000-0000-0000-0000-000000000001', '126718GRNR', 'GMT-Master II', NULL, 'GMT-Master II', '18k Yellow Gold', 40.0, 'automatic', '3285', 100, 'Black', 'Oyster', 4350000, 4500000, 0.8, NULL, 'https://www.rolex.com/watches/gmt-master-ii/m126718grnr-0001'),
  -- GMT-Master II - Full Everose Gold Brown/Black
  ('b0000000-0000-0000-0000-000000000001', '126715CHNR', 'GMT-Master II', 'Root Beer (Full Gold)', 'GMT-Master II', '18k Everose Gold', 40.0, 'automatic', '3285', 100, 'Black', 'Oysterflex', 4600000, 4200000, -0.5, NULL, 'https://www.rolex.com/watches/gmt-master-ii/m126715chnr-0001'),
  -- GMT-Master II - White Gold Pepsi Meteorite
  ('b0000000-0000-0000-0000-000000000001', '126719BLRO', 'GMT-Master II', 'Pepsi (White Gold)', 'GMT-Master II', '18k White Gold', 40.0, 'automatic', '3285', 100, 'Meteorite', 'Oyster', 4700000, 5200000, 1.5, NULL, 'https://www.rolex.com/watches/gmt-master-ii/m126719blro-0002'),
  -- GMT-Master II - White Gold Sprite Green dial (2025 new)
  ('b0000000-0000-0000-0000-000000000001', '126729VTNR', 'GMT-Master II', 'Sprite (White Gold)', 'GMT-Master II', '18k White Gold', 40.0, 'automatic', '3285', 100, 'Green', 'Oyster', 4805000, 5500000, 3.0, NULL, 'https://www.rolex.com/watches/gmt-master-ii/m126729vtnr-0001'),

-- ============================================================
-- COSMOGRAPH DAYTONA (12 current production refs)
-- Cal 4131 · 100m WR · 40mm
-- ============================================================
  -- Daytona - Steel White Dial
  ('b0000000-0000-0000-0000-000000000001', '126500LN-0001', 'Cosmograph Daytona', NULL, 'Daytona', 'Oystersteel', 40.0, 'automatic', '4131', 100, 'White', 'Oyster', 1690000, 2800000, 3.5, NULL, 'https://www.rolex.com/watches/cosmograph-daytona/m126500ln-0001'),
  -- Daytona - Steel Black Dial (Panda)
  ('b0000000-0000-0000-0000-000000000001', '126500LN-0002', 'Cosmograph Daytona', 'Panda', 'Daytona', 'Oystersteel', 40.0, 'automatic', '4131', 100, 'Black', 'Oyster', 1690000, 2850000, 3.8, NULL, 'https://www.rolex.com/watches/cosmograph-daytona/m126500ln-0002'),
  -- Daytona - Two-Tone Yellow Rolesor
  ('b0000000-0000-0000-0000-000000000001', '126503', 'Cosmograph Daytona', NULL, 'Daytona', 'Oystersteel/Yellow Gold', 40.0, 'automatic', '4131', 100, 'Champagne', 'Oyster', 2100000, 2000000, -0.5, NULL, 'https://www.rolex.com/watches/cosmograph-daytona/m126503-0004'),
  -- Daytona - Everose Gold Bracelet
  ('b0000000-0000-0000-0000-000000000001', '126505', 'Cosmograph Daytona', NULL, 'Daytona', '18k Everose Gold', 40.0, 'automatic', '4131', 100, 'Pink/Sundust', 'Oyster', 5050000, 4800000, -0.3, NULL, 'https://www.rolex.com/watches/cosmograph-daytona/m126505-0002'),
  -- Daytona - Platinum Ice Blue Brown Bezel
  ('b0000000-0000-0000-0000-000000000001', '126506', 'Cosmograph Daytona', 'Ice Blue Daytona', 'Daytona', '950 Platinum', 40.0, 'automatic', '4131', 100, 'Ice Blue', 'Oyster', 8450000, 10500000, 1.5, NULL, 'https://www.rolex.com/watches/cosmograph-daytona/m126506-0002'),
  -- Daytona - Yellow Gold Green Dial Bracelet
  ('b0000000-0000-0000-0000-000000000001', '126508', 'Cosmograph Daytona', 'John Mayer', 'Daytona', '18k Yellow Gold', 40.0, 'automatic', '4131', 100, 'Green', 'Oyster', 4840000, 11500000, 2.0, NULL, 'https://www.rolex.com/watches/cosmograph-daytona/m126508-0003'),
  -- Daytona - White Gold Bracelet
  ('b0000000-0000-0000-0000-000000000001', '126509', 'Cosmograph Daytona', NULL, 'Daytona', '18k White Gold', 40.0, 'automatic', '4131', 100, 'Black', 'Oyster', 4840000, 4400000, -0.5, NULL, 'https://www.rolex.com/watches/cosmograph-daytona/m126509-0001'),
  -- Daytona - Everose Gold Oysterflex Black Ceramic Bezel
  ('b0000000-0000-0000-0000-000000000001', '126515LN', 'Cosmograph Daytona', NULL, 'Daytona', '18k Everose Gold', 40.0, 'automatic', '4131', 100, 'Pink/Sundust', 'Oysterflex', 3810000, 3600000, -0.4, NULL, 'https://www.rolex.com/watches/cosmograph-daytona/m126515ln-0006'),
  -- Daytona - Yellow Gold Oysterflex Black Ceramic Bezel
  ('b0000000-0000-0000-0000-000000000001', '126518LN', 'Cosmograph Daytona', NULL, 'Daytona', '18k Yellow Gold', 40.0, 'automatic', '4131', 100, 'Champagne', 'Oysterflex', 3640000, 3500000, -0.2, NULL, 'https://www.rolex.com/watches/cosmograph-daytona/m126518ln-0012'),
  -- Daytona - White Gold Oysterflex Black Ceramic Bezel
  ('b0000000-0000-0000-0000-000000000001', '126519LN', 'Cosmograph Daytona', NULL, 'Daytona', '18k White Gold', 40.0, 'automatic', '4131', 100, 'Bright Black/Steel', 'Oysterflex', 3810000, 3500000, -0.3, NULL, 'https://www.rolex.com/watches/cosmograph-daytona/m126519ln-0002'),
  -- Daytona - Everose Rolesor (Two-Tone Rose)
  ('b0000000-0000-0000-0000-000000000001', '126501', 'Cosmograph Daytona', NULL, 'Daytona', 'Oystersteel/Everose Gold', 40.0, 'automatic', '4131', 100, 'Pink/Sundust', 'Oyster', 2100000, 2050000, 0.2, NULL, 'https://www.rolex.com/watches/cosmograph-daytona/m126501-0001'),
  -- Daytona - Le Mans Special Ref (Yellow Gold Green)
  ('b0000000-0000-0000-0000-000000000001', '126528LN', 'Cosmograph Daytona', 'Le Mans', 'Daytona', '18k Yellow Gold', 40.0, 'automatic', '4131', 100, 'Green/Black', 'Oysterflex', 3810000, 6000000, 2.5, NULL, 'https://www.rolex.com/watches/cosmograph-daytona/m126528ln-0002'),

-- ============================================================
-- DATEJUST 41 (8 base refs, key dial variants)
-- Cal 3235 · 100m WR · 41mm
-- ============================================================
  -- DJ41 - Oystersteel, Smooth Bezel, Oyster, Bright Black
  ('b0000000-0000-0000-0000-000000000001', '126300-0021', 'Datejust 41', NULL, 'Datejust', 'Oystersteel', 41.0, 'automatic', '3235', 100, 'Bright Black', 'Oyster', 900000, 870000, -0.3, NULL, 'https://www.rolex.com/watches/datejust/m126300-0021'),
  -- DJ41 - Oystersteel, Smooth Bezel, Oyster, Blue
  ('b0000000-0000-0000-0000-000000000001', '126300-0023', 'Datejust 41', NULL, 'Datejust', 'Oystersteel', 41.0, 'automatic', '3235', 100, 'Blue', 'Oyster', 900000, 890000, 0.2, NULL, 'https://www.rolex.com/watches/datejust/m126300-0023'),
  -- DJ41 - Oystersteel, Smooth Bezel, Oyster, Slate
  ('b0000000-0000-0000-0000-000000000001', '126300-0013', 'Datejust 41', NULL, 'Datejust', 'Oystersteel', 41.0, 'automatic', '3235', 100, 'Slate', 'Oyster', 900000, 860000, -0.2, NULL, 'https://www.rolex.com/watches/datejust/m126300-0013'),
  -- DJ41 - Oystersteel, Smooth Bezel, Oyster, Silver
  ('b0000000-0000-0000-0000-000000000001', '126300-0001', 'Datejust 41', NULL, 'Datejust', 'Oystersteel', 41.0, 'automatic', '3235', 100, 'Silver', 'Oyster', 900000, 850000, -0.1, NULL, 'https://www.rolex.com/watches/datejust/m126300-0001'),
  -- DJ41 - White Rolesor, Fluted Bezel, Jubilee, Blue
  ('b0000000-0000-0000-0000-000000000001', '126334-0032', 'Datejust 41', NULL, 'Datejust', 'Oystersteel/White Gold', 41.0, 'automatic', '3235', 100, 'Bright Blue', 'Jubilee', 1230000, 1200000, 0.5, NULL, 'https://www.rolex.com/watches/datejust/m126334-0032'),
  -- DJ41 - White Rolesor, Fluted Bezel, Jubilee, Mint Green
  ('b0000000-0000-0000-0000-000000000001', '126334-0030', 'Datejust 41', NULL, 'Datejust', 'Oystersteel/White Gold', 41.0, 'automatic', '3235', 100, 'Mint Green', 'Jubilee', 1230000, 1350000, 1.5, NULL, 'https://www.rolex.com/watches/datejust/m126334-0030'),
  -- DJ41 - White Rolesor, Fluted Bezel, Jubilee, Bright Black
  ('b0000000-0000-0000-0000-000000000001', '126334-0031', 'Datejust 41', NULL, 'Datejust', 'Oystersteel/White Gold', 41.0, 'automatic', '3235', 100, 'Bright Black', 'Jubilee', 1230000, 1180000, -0.3, NULL, 'https://www.rolex.com/watches/datejust/m126334-0031'),
  -- DJ41 - White Rolesor, Fluted Bezel, Oyster, Slate
  ('b0000000-0000-0000-0000-000000000001', '126334-0014', 'Datejust 41', NULL, 'Datejust', 'Oystersteel/White Gold', 41.0, 'automatic', '3235', 100, 'Slate', 'Oyster', 1150000, 1100000, -0.2, NULL, 'https://www.rolex.com/watches/datejust/m126334-0014'),
  -- DJ41 - White Rolesor, Fluted Bezel, Jubilee, White
  ('b0000000-0000-0000-0000-000000000001', '126334-0024', 'Datejust 41', NULL, 'Datejust', 'Oystersteel/White Gold', 41.0, 'automatic', '3235', 100, 'White', 'Jubilee', 1230000, 1150000, -0.1, NULL, 'https://www.rolex.com/watches/datejust/m126334-0024'),
  -- DJ41 - Yellow Rolesor, Fluted Bezel, Jubilee, Champagne
  ('b0000000-0000-0000-0000-000000000001', '126333-0010', 'Datejust 41', NULL, 'Datejust', 'Oystersteel/Yellow Gold', 41.0, 'automatic', '3235', 100, 'Champagne', 'Jubilee', 1700000, 1550000, -0.3, NULL, 'https://www.rolex.com/watches/datejust/m126333-0010'),
  -- DJ41 - Yellow Rolesor, Smooth Bezel, Oyster, Black
  ('b0000000-0000-0000-0000-000000000001', '126303-0012', 'Datejust 41', NULL, 'Datejust', 'Oystersteel/Yellow Gold', 41.0, 'automatic', '3235', 100, 'Black', 'Oyster', 1540000, 1400000, -0.5, NULL, 'https://www.rolex.com/watches/datejust/m126303-0012'),
  -- DJ41 - Everose Rolesor, Fluted Bezel, Jubilee, Chocolate
  ('b0000000-0000-0000-0000-000000000001', '126331-0016', 'Datejust 41', 'Wimbledon', 'Datejust', 'Oystersteel/Everose Gold', 41.0, 'automatic', '3235', 100, 'Slate/Green Roman', 'Jubilee', 1660000, 1550000, 0.5, NULL, 'https://www.rolex.com/watches/datejust/m126331-0016'),
  -- DJ41 - Everose Rolesor, Smooth Bezel, Oyster, Sundust
  ('b0000000-0000-0000-0000-000000000001', '126301-0010', 'Datejust 41', NULL, 'Datejust', 'Oystersteel/Everose Gold', 41.0, 'automatic', '3235', 100, 'Sundust', 'Oyster', 1540000, 1400000, -0.2, NULL, 'https://www.rolex.com/watches/datejust/m126301-0010'),

-- ============================================================
-- DATEJUST 36 (6 base refs, key dial variants)
-- Cal 3235 · 100m WR · 36mm
-- ============================================================
  -- DJ36 - Oystersteel, Smooth Bezel, Oyster, Blue
  ('b0000000-0000-0000-0000-000000000001', '126200-0006', 'Datejust 36', NULL, 'Datejust', 'Oystersteel', 36.0, 'automatic', '3235', 100, 'Blue', 'Oyster', 815000, 780000, -0.2, NULL, 'https://www.rolex.com/watches/datejust/m126200-0006'),
  -- DJ36 - Oystersteel, Smooth Bezel, Oyster, Silver
  ('b0000000-0000-0000-0000-000000000001', '126200-0001', 'Datejust 36', NULL, 'Datejust', 'Oystersteel', 36.0, 'automatic', '3235', 100, 'Silver', 'Oyster', 815000, 760000, -0.3, NULL, 'https://www.rolex.com/watches/datejust/m126200-0001'),
  -- DJ36 - Oystersteel, Smooth Bezel, Oyster, Black
  ('b0000000-0000-0000-0000-000000000001', '126200-0008', 'Datejust 36', NULL, 'Datejust', 'Oystersteel', 36.0, 'automatic', '3235', 100, 'Bright Black', 'Oyster', 815000, 770000, -0.1, NULL, 'https://www.rolex.com/watches/datejust/m126200-0008'),
  -- DJ36 - White Rolesor, Fluted Bezel, Jubilee, Blue
  ('b0000000-0000-0000-0000-000000000001', '126234-0015', 'Datejust 36', NULL, 'Datejust', 'Oystersteel/White Gold', 36.0, 'automatic', '3235', 100, 'Blue', 'Jubilee', 1090000, 1050000, 0.3, NULL, 'https://www.rolex.com/watches/datejust/m126234-0015'),
  -- DJ36 - White Rolesor, Fluted Bezel, Jubilee, Silver
  ('b0000000-0000-0000-0000-000000000001', '126234-0014', 'Datejust 36', NULL, 'Datejust', 'Oystersteel/White Gold', 36.0, 'automatic', '3235', 100, 'Silver', 'Jubilee', 1090000, 1000000, -0.1, NULL, 'https://www.rolex.com/watches/datejust/m126234-0014'),
  -- DJ36 - White Rolesor, Fluted Bezel, Oyster, Mint Green
  ('b0000000-0000-0000-0000-000000000001', '126234-0051', 'Datejust 36', NULL, 'Datejust', 'Oystersteel/White Gold', 36.0, 'automatic', '3235', 100, 'Mint Green', 'Oyster', 1010000, 1100000, 1.0, NULL, 'https://www.rolex.com/watches/datejust/m126234-0051'),
  -- DJ36 - Yellow Rolesor, Fluted Bezel, Jubilee, Champagne
  ('b0000000-0000-0000-0000-000000000001', '126233-0018', 'Datejust 36', NULL, 'Datejust', 'Oystersteel/Yellow Gold', 36.0, 'automatic', '3235', 100, 'Champagne', 'Jubilee', 1510000, 1350000, -0.5, NULL, 'https://www.rolex.com/watches/datejust/m126233-0018'),
  -- DJ36 - Everose Rolesor, Fluted Bezel, Jubilee, Sundust
  ('b0000000-0000-0000-0000-000000000001', '126231-0028', 'Datejust 36', NULL, 'Datejust', 'Oystersteel/Everose Gold', 36.0, 'automatic', '3235', 100, 'Sundust', 'Jubilee', 1510000, 1380000, 0.1, NULL, 'https://www.rolex.com/watches/datejust/m126231-0028'),
  -- DJ36 - Yellow Rolesor, Diamond Bezel, Jubilee
  ('b0000000-0000-0000-0000-000000000001', '126283RBR', 'Datejust 36', NULL, 'Datejust', 'Oystersteel/Yellow Gold', 36.0, 'automatic', '3235', 100, 'Champagne Diamond', 'Jubilee', 2205000, 2050000, -0.3, NULL, 'https://www.rolex.com/watches/datejust/m126283rbr-0026'),

-- ============================================================
-- DATEJUST 31 (4 base refs, key dial variants)
-- Cal 2236 · 100m WR · 31mm
-- ============================================================
  -- DJ31 - Oystersteel, Smooth Bezel, Oyster, Blue
  ('b0000000-0000-0000-0000-000000000001', '278240-0015', 'Datejust 31', NULL, 'Datejust', 'Oystersteel', 31.0, 'automatic', '2236', 100, 'Blue', 'Oyster', 730000, 700000, -0.2, NULL, 'https://www.rolex.com/watches/datejust/m278240-0015'),
  -- DJ31 - Oystersteel, Smooth Bezel, Oyster, Silver
  ('b0000000-0000-0000-0000-000000000001', '278240-0002', 'Datejust 31', NULL, 'Datejust', 'Oystersteel', 31.0, 'automatic', '2236', 100, 'Silver', 'Oyster', 730000, 680000, -0.3, NULL, 'https://www.rolex.com/watches/datejust/m278240-0002'),
  -- DJ31 - White Rolesor, Fluted Bezel, Jubilee, Blue
  ('b0000000-0000-0000-0000-000000000001', '278274-0036', 'Datejust 31', NULL, 'Datejust', 'Oystersteel/White Gold', 31.0, 'automatic', '2236', 100, 'Blue', 'Jubilee', 1040000, 1000000, 0.2, NULL, 'https://www.rolex.com/watches/datejust/m278274-0036'),
  -- DJ31 - White Rolesor, Fluted Bezel, Jubilee, MOP
  ('b0000000-0000-0000-0000-000000000001', '278274-0006', 'Datejust 31', NULL, 'Datejust', 'Oystersteel/White Gold', 31.0, 'automatic', '2236', 100, 'Mother of Pearl', 'Jubilee', 1175000, 1100000, 0.3, NULL, 'https://www.rolex.com/watches/datejust/m278274-0006'),
  -- DJ31 - Yellow Rolesor, Fluted Bezel, Jubilee, Champagne
  ('b0000000-0000-0000-0000-000000000001', '278273-0025', 'Datejust 31', NULL, 'Datejust', 'Oystersteel/Yellow Gold', 31.0, 'automatic', '2236', 100, 'Champagne', 'Jubilee', 1430000, 1300000, -0.4, NULL, 'https://www.rolex.com/watches/datejust/m278273-0025'),
  -- DJ31 - Everose Rolesor, Fluted Bezel, Jubilee, Sundust
  ('b0000000-0000-0000-0000-000000000001', '278271-0004', 'Datejust 31', NULL, 'Datejust', 'Oystersteel/Everose Gold', 31.0, 'automatic', '2236', 100, 'Sundust', 'Jubilee', 1430000, 1320000, -0.2, NULL, 'https://www.rolex.com/watches/datejust/m278271-0004'),

-- ============================================================
-- DAY-DATE 40 (4 base refs)
-- Cal 3255 · 100m WR · 40mm · President bracelet
-- ============================================================
  -- DD40 - Yellow Gold, Champagne
  ('b0000000-0000-0000-0000-000000000001', '228238-0003', 'Day-Date 40', NULL, 'Day-Date', '18k Yellow Gold', 40.0, 'automatic', '3255', 100, 'Champagne', 'President', 4800000, 3800000, -1.2, NULL, 'https://www.rolex.com/watches/day-date/m228238-0003'),
  -- DD40 - Yellow Gold, Green
  ('b0000000-0000-0000-0000-000000000001', '228238-0061', 'Day-Date 40', NULL, 'Day-Date', '18k Yellow Gold', 40.0, 'automatic', '3255', 100, 'Green', 'President', 4800000, 4500000, 1.0, NULL, 'https://www.rolex.com/watches/day-date/m228238-0061'),
  -- DD40 - Everose Gold, Olive Green Roman
  ('b0000000-0000-0000-0000-000000000001', '228235-0025', 'Day-Date 40', NULL, 'Day-Date', '18k Everose Gold', 40.0, 'automatic', '3255', 100, 'Olive Green', 'President', 5160000, 4300000, 0.5, NULL, 'https://www.rolex.com/watches/day-date/m228235-0025'),
  -- DD40 - Everose Gold, Sundust
  ('b0000000-0000-0000-0000-000000000001', '228235-0013', 'Day-Date 40', NULL, 'Day-Date', '18k Everose Gold', 40.0, 'automatic', '3255', 100, 'Sundust', 'President', 5160000, 4100000, -0.3, NULL, 'https://www.rolex.com/watches/day-date/m228235-0013'),
  -- DD40 - White Gold, Silver
  ('b0000000-0000-0000-0000-000000000001', '228239-0046', 'Day-Date 40', NULL, 'Day-Date', '18k White Gold', 40.0, 'automatic', '3255', 100, 'Silver', 'President', 5160000, 4200000, -0.5, NULL, 'https://www.rolex.com/watches/day-date/m228239-0046'),
  -- DD40 - White Gold, Bright Blue
  ('b0000000-0000-0000-0000-000000000001', '228239-0060', 'Day-Date 40', NULL, 'Day-Date', '18k White Gold', 40.0, 'automatic', '3255', 100, 'Bright Blue', 'President', 5160000, 4400000, 0.3, NULL, 'https://www.rolex.com/watches/day-date/m228239-0060'),
  -- DD40 - Platinum, Ice Blue
  ('b0000000-0000-0000-0000-000000000001', '228206-0001', 'Day-Date 40', NULL, 'Day-Date', '950 Platinum', 40.0, 'automatic', '3255', 100, 'Ice Blue', 'President', 7355000, 6800000, -0.8, NULL, 'https://www.rolex.com/watches/day-date/m228206-0001'),
  -- DD40 - White Gold, Diamond Bezel
  ('b0000000-0000-0000-0000-000000000001', '228349RBR', 'Day-Date 40', NULL, 'Day-Date', '18k White Gold', 40.0, 'automatic', '3255', 100, 'Bright Blue', 'President', 6960000, 6200000, -0.3, NULL, 'https://www.rolex.com/watches/day-date/m228349rbr-0036'),

-- ============================================================
-- DAY-DATE 36 (4 base refs)
-- Cal 3255 · 100m WR · 36mm · President bracelet
-- ============================================================
  -- DD36 - Yellow Gold, Champagne
  ('b0000000-0000-0000-0000-000000000001', '128238-0069', 'Day-Date 36', NULL, 'Day-Date', '18k Yellow Gold', 36.0, 'automatic', '3255', 100, 'Champagne', 'President', 4370000, 3500000, -1.0, NULL, 'https://www.rolex.com/watches/day-date/m128238-0069'),
  -- DD36 - Yellow Gold, Green
  ('b0000000-0000-0000-0000-000000000001', '128238-0082', 'Day-Date 36', NULL, 'Day-Date', '18k Yellow Gold', 36.0, 'automatic', '3255', 100, 'Green', 'President', 4370000, 4000000, 0.8, NULL, 'https://www.rolex.com/watches/day-date/m128238-0082'),
  -- DD36 - Everose Gold, Sundust
  ('b0000000-0000-0000-0000-000000000001', '128235-0036', 'Day-Date 36', NULL, 'Day-Date', '18k Everose Gold', 36.0, 'automatic', '3255', 100, 'Sundust', 'President', 4720000, 3800000, -0.5, NULL, 'https://www.rolex.com/watches/day-date/m128235-0036'),
  -- DD36 - White Gold, Silver
  ('b0000000-0000-0000-0000-000000000001', '128239-0005', 'Day-Date 36', NULL, 'Day-Date', '18k White Gold', 36.0, 'automatic', '3255', 100, 'Silver', 'President', 4720000, 3800000, -0.6, NULL, 'https://www.rolex.com/watches/day-date/m128239-0005'),
  -- DD36 - Platinum, Ice Blue
  ('b0000000-0000-0000-0000-000000000001', '128236-0006', 'Day-Date 36', NULL, 'Day-Date', '950 Platinum', 36.0, 'automatic', '3255', 100, 'Ice Blue', 'President', 6885000, 6200000, -0.4, NULL, 'https://www.rolex.com/watches/day-date/m128236-0006'),

-- ============================================================
-- EXPLORER (3 current production refs)
-- ============================================================
  -- Explorer 36 - Steel Black
  ('b0000000-0000-0000-0000-000000000001', '124270', 'Explorer', NULL, 'Explorer', 'Oystersteel', 36.0, 'automatic', '3230', 100, 'Black', 'Oyster', 770000, 880000, 1.5, NULL, 'https://www.rolex.com/watches/explorer/m124270-0001'),
  -- Explorer 36 - Yellow Rolesor
  ('b0000000-0000-0000-0000-000000000001', '124273', 'Explorer', NULL, 'Explorer', 'Oystersteel/Yellow Gold', 36.0, 'automatic', '3230', 100, 'Black', 'Oyster', 1165000, 1200000, 0.8, NULL, 'https://www.rolex.com/watches/explorer/m124273-0001'),
  -- Explorer 40 - Steel Black (new 2023 ref)
  ('b0000000-0000-0000-0000-000000000001', '224270', 'Explorer 40', NULL, 'Explorer', 'Oystersteel', 40.0, 'automatic', '3230', 100, 'Black', 'Oyster', 815000, 950000, 1.2, NULL, 'https://www.rolex.com/watches/explorer/m224270-0001'),

-- ============================================================
-- EXPLORER II (2 current production refs)
-- Cal 3285 · 100m WR · 42mm
-- ============================================================
  -- Explorer II - White Dial (Polar)
  ('b0000000-0000-0000-0000-000000000001', '226570-0001', 'Explorer II', 'Polar', 'Explorer', 'Oystersteel', 42.0, 'automatic', '3285', 100, 'White', 'Oyster', 1005000, 1150000, 0.8, NULL, 'https://www.rolex.com/watches/explorer/m226570-0001'),
  -- Explorer II - Black Dial
  ('b0000000-0000-0000-0000-000000000001', '226570-0002', 'Explorer II', NULL, 'Explorer', 'Oystersteel', 42.0, 'automatic', '3285', 100, 'Black', 'Oyster', 1005000, 1050000, 0.3, NULL, 'https://www.rolex.com/watches/explorer/m226570-0002'),

-- ============================================================
-- SEA-DWELLER (1 current production ref)
-- Cal 3235 · 1220m WR · 43mm
-- ============================================================
  -- Sea-Dweller - Steel Black
  ('b0000000-0000-0000-0000-000000000001', '126600', 'Sea-Dweller', 'Red Sea-Dweller', 'Sea-Dweller', 'Oystersteel', 43.0, 'automatic', '3235', 1220, 'Black', 'Oyster', 1370000, 1200000, -0.5, NULL, 'https://www.rolex.com/watches/sea-dweller/m126600-0002'),

-- ============================================================
-- DEEPSEA (3 current production refs)
-- Cal 3235 · 3900m WR · 44mm
-- ============================================================
  -- Deepsea - Black Dial
  ('b0000000-0000-0000-0000-000000000001', '136660-0004', 'Deepsea', NULL, 'Sea-Dweller', 'Oystersteel', 44.0, 'automatic', '3235', 3900, 'Black', 'Oyster', 1530000, 1450000, -0.3, NULL, 'https://www.rolex.com/watches/sea-dweller/m136660-0004'),
  -- Deepsea - D-Blue James Cameron Dial
  ('b0000000-0000-0000-0000-000000000001', '136660-0003', 'Deepsea', 'D-Blue / James Cameron', 'Sea-Dweller', 'Oystersteel', 44.0, 'automatic', '3235', 3900, 'D-Blue', 'Oyster', 1530000, 1650000, 1.5, NULL, 'https://www.rolex.com/watches/sea-dweller/m136660-0003'),

-- ============================================================
-- DEEPSEA CHALLENGE (1 current production ref)
-- Cal 3230 · 11000m WR · 50mm
-- ============================================================
  -- Deepsea Challenge - Titanium Black
  ('b0000000-0000-0000-0000-000000000001', '126067', 'Deepsea Challenge', NULL, 'Sea-Dweller', 'RLX Titanium', 50.0, 'automatic', '3230', 11000, 'Black', 'Oyster (Titanium)', 2910000, 3500000, 0.8, NULL, 'https://www.rolex.com/watches/sea-dweller/m126067-0001'),

-- ============================================================
-- YACHT-MASTER 37 (3 current production refs)
-- Cal 2236 · 100m WR · 37mm
-- ============================================================
  -- YM37 - Everose Rolesor, Chocolate Dial, Oyster
  ('b0000000-0000-0000-0000-000000000001', '268621-0003', 'Yacht-Master 37', NULL, 'Yacht-Master', 'Oystersteel/Everose Gold', 37.0, 'automatic', '2236', 100, 'Chocolate', 'Oyster', 1615000, 1400000, -0.5, NULL, 'https://www.rolex.com/watches/yacht-master/m268621-0003'),
  -- YM37 - Everose Gold, Oysterflex
  ('b0000000-0000-0000-0000-000000000001', '268655-0007', 'Yacht-Master 37', NULL, 'Yacht-Master', '18k Everose Gold', 37.0, 'automatic', '2236', 100, 'Black', 'Oysterflex', 2900000, 2500000, -0.3, NULL, 'https://www.rolex.com/watches/yacht-master/m268655-0007'),
  -- YM37 - Everose Gold, Oysterflex, Pave Diamond
  ('b0000000-0000-0000-0000-000000000001', '268655-0018', 'Yacht-Master 37', NULL, 'Yacht-Master', '18k Everose Gold', 37.0, 'automatic', '2236', 100, 'Pave Diamond', 'Oysterflex', 3650000, 3200000, -0.2, NULL, 'https://www.rolex.com/watches/yacht-master/m268655-0018'),

-- ============================================================
-- YACHT-MASTER 40 (3 current production refs)
-- Cal 3235 · 100m WR · 40mm
-- ============================================================
  -- YM40 - Rolesium (Steel/Platinum), Rhodium Dial
  ('b0000000-0000-0000-0000-000000000001', '126622-0001', 'Yacht-Master 40', NULL, 'Yacht-Master', 'Oystersteel/Platinum', 40.0, 'automatic', '3235', 100, 'Bright Rhodium', 'Oyster', 1315000, 1400000, 0.5, NULL, 'https://www.rolex.com/watches/yacht-master/m126622-0001'),
  -- YM40 - Rolesium (Steel/Platinum), Blue Dial
  ('b0000000-0000-0000-0000-000000000001', '126622-0002', 'Yacht-Master 40', NULL, 'Yacht-Master', 'Oystersteel/Platinum', 40.0, 'automatic', '3235', 100, 'Blue', 'Oyster', 1315000, 1350000, 0.2, NULL, 'https://www.rolex.com/watches/yacht-master/m126622-0002'),
  -- YM40 - Everose Rolesor, Chocolate Dial
  ('b0000000-0000-0000-0000-000000000001', '126621-0001', 'Yacht-Master 40', NULL, 'Yacht-Master', 'Oystersteel/Everose Gold', 40.0, 'automatic', '3235', 100, 'Chocolate', 'Oyster', 1665000, 1500000, -0.3, NULL, 'https://www.rolex.com/watches/yacht-master/m126621-0001'),
  -- YM40 - Full Everose Gold, Oysterflex
  ('b0000000-0000-0000-0000-000000000001', '126655-0002', 'Yacht-Master 40', NULL, 'Yacht-Master', '18k Everose Gold', 40.0, 'automatic', '3235', 100, 'Black', 'Oysterflex', 3590000, 3000000, -0.8, NULL, 'https://www.rolex.com/watches/yacht-master/m126655-0002'),

-- ============================================================
-- YACHT-MASTER 42 (4 current production refs)
-- Cal 3235 · 100m WR · 42mm
-- ============================================================
  -- YM42 - RLX Titanium, Black Dial, Oyster
  ('b0000000-0000-0000-0000-000000000001', '226627-0001', 'Yacht-Master 42', NULL, 'Yacht-Master', 'RLX Titanium', 42.0, 'automatic', '3235', 100, 'Black', 'Oyster (Titanium)', 2720000, 3200000, 1.5, NULL, 'https://www.rolex.com/watches/yacht-master/m226627-0001'),
  -- YM42 - White Gold, Black Dial, Oysterflex
  ('b0000000-0000-0000-0000-000000000001', '226659-0002', 'Yacht-Master 42', NULL, 'Yacht-Master', '18k White Gold', 42.0, 'automatic', '3235', 100, 'Black', 'Oysterflex', 3500000, 2900000, -1.0, NULL, 'https://www.rolex.com/watches/yacht-master/m226659-0002'),
  -- YM42 - Yellow Gold, Black Dial, Oysterflex
  ('b0000000-0000-0000-0000-000000000001', '226658-0001', 'Yacht-Master 42', NULL, 'Yacht-Master', '18k Yellow Gold', 42.0, 'automatic', '3235', 100, 'Black', 'Oysterflex', 3650000, 3100000, -0.5, NULL, 'https://www.rolex.com/watches/yacht-master/m226658-0001'),
  -- YM42 - Everose Gold, Black Dial, Oysterflex
  ('b0000000-0000-0000-0000-000000000001', '226655-0002', 'Yacht-Master 42', NULL, 'Yacht-Master', '18k Everose Gold', 42.0, 'automatic', '3235', 100, 'Black', 'Oysterflex', 3650000, 3100000, -0.4, NULL, 'https://www.rolex.com/watches/yacht-master/m226655-0002'),

-- ============================================================
-- SKY-DWELLER (5 base refs)
-- Cal 9002 · 100m WR · 42mm
-- ============================================================
  -- Sky-Dweller - White Rolesor, Blue Dial, Jubilee
  ('b0000000-0000-0000-0000-000000000001', '336934-0006', 'Sky-Dweller', NULL, 'Sky-Dweller', 'Oystersteel/White Gold', 42.0, 'automatic', '9002', 100, 'Bright Blue', 'Jubilee', 1775000, 2200000, 2.5, NULL, 'https://www.rolex.com/watches/sky-dweller/m336934-0006'),
  -- Sky-Dweller - White Rolesor, Black Dial, Oyster
  ('b0000000-0000-0000-0000-000000000001', '336934-0001', 'Sky-Dweller', NULL, 'Sky-Dweller', 'Oystersteel/White Gold', 42.0, 'automatic', '9002', 100, 'Black', 'Oyster', 1705000, 1950000, 1.5, NULL, 'https://www.rolex.com/watches/sky-dweller/m336934-0001'),
  -- Sky-Dweller - White Rolesor, Mint Green, Jubilee
  ('b0000000-0000-0000-0000-000000000001', '336934-0003', 'Sky-Dweller', NULL, 'Sky-Dweller', 'Oystersteel/White Gold', 42.0, 'automatic', '9002', 100, 'Mint Green', 'Jubilee', 1775000, 2400000, 3.0, NULL, 'https://www.rolex.com/watches/sky-dweller/m336934-0003'),
  -- Sky-Dweller - White Rolesor, White Dial, Oyster
  ('b0000000-0000-0000-0000-000000000001', '336934-0004', 'Sky-Dweller', NULL, 'Sky-Dweller', 'Oystersteel/White Gold', 42.0, 'automatic', '9002', 100, 'White', 'Oyster', 1705000, 1800000, 0.5, NULL, 'https://www.rolex.com/watches/sky-dweller/m336934-0004'),
  -- Sky-Dweller - Yellow Rolesor, Black Dial, Oyster
  ('b0000000-0000-0000-0000-000000000001', '336933-0001', 'Sky-Dweller', NULL, 'Sky-Dweller', 'Oystersteel/Yellow Gold', 42.0, 'automatic', '9002', 100, 'Black', 'Oyster', 2350000, 2100000, -0.5, NULL, 'https://www.rolex.com/watches/sky-dweller/m336933-0001'),
  -- Sky-Dweller - Yellow Rolesor, Champagne, Jubilee
  ('b0000000-0000-0000-0000-000000000001', '336933-0006', 'Sky-Dweller', NULL, 'Sky-Dweller', 'Oystersteel/Yellow Gold', 42.0, 'automatic', '9002', 100, 'Champagne', 'Jubilee', 2420000, 2200000, -0.2, NULL, 'https://www.rolex.com/watches/sky-dweller/m336933-0006'),
  -- Sky-Dweller - Everose Gold, Sundust, Oysterflex
  ('b0000000-0000-0000-0000-000000000001', '336935-0001', 'Sky-Dweller', NULL, 'Sky-Dweller', '18k Everose Gold', 42.0, 'automatic', '9002', 100, 'Sundust', 'Oysterflex', 5085000, 4500000, -0.5, NULL, 'https://www.rolex.com/watches/sky-dweller/m336935-0001'),
  -- Sky-Dweller - Yellow Gold, Champagne, Oysterflex
  ('b0000000-0000-0000-0000-000000000001', '336938-0001', 'Sky-Dweller', NULL, 'Sky-Dweller', '18k Yellow Gold', 42.0, 'automatic', '9002', 100, 'Champagne', 'Oysterflex', 4710000, 4200000, -0.3, NULL, 'https://www.rolex.com/watches/sky-dweller/m336938-0001'),
  -- Sky-Dweller - Yellow Gold, Champagne, Oyster Bracelet
  ('b0000000-0000-0000-0000-000000000001', '336938-0009', 'Sky-Dweller', NULL, 'Sky-Dweller', '18k Yellow Gold', 42.0, 'automatic', '9002', 100, 'Champagne', 'Oyster', 5500000, 4800000, -0.2, NULL, 'https://www.rolex.com/watches/sky-dweller/m336938-0009'),
  -- Sky-Dweller - White Gold, Blue, Oysterflex
  ('b0000000-0000-0000-0000-000000000001', '336239-0001', 'Sky-Dweller', NULL, 'Sky-Dweller', '18k White Gold', 42.0, 'automatic', '9002', 100, 'Bright Blue', 'Oysterflex', 5085000, 4700000, 0.5, NULL, 'https://www.rolex.com/watches/sky-dweller/m336239-0001'),

-- ============================================================
-- AIR-KING (1 current production ref)
-- Cal 3230 · 100m WR · 40mm
-- ============================================================
  -- Air-King - Steel Black/Green
  ('b0000000-0000-0000-0000-000000000001', '126900', 'Air-King', NULL, 'Air-King', 'Oystersteel', 40.0, 'automatic', '3230', 100, 'Black/Green', 'Oyster', 815000, 880000, 0.8, NULL, 'https://www.rolex.com/watches/air-king/m126900-0001'),

-- ============================================================
-- OYSTER PERPETUAL 41 (new ref 134300 for 2025)
-- Cal 3230 · 100m WR · 41mm
-- ============================================================
  -- OP41 - Pistachio Green (2025 new)
  ('b0000000-0000-0000-0000-000000000001', '134300-0001', 'Oyster Perpetual 41', NULL, 'Oyster Perpetual', 'Oystersteel', 41.0, 'automatic', '3230', 100, 'Pistachio Green', 'Oyster', 695000, 2200000, 5.0, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m134300-0001'),
  -- OP41 - Lavender (2025 new)
  ('b0000000-0000-0000-0000-000000000001', '134300-0002', 'Oyster Perpetual 41', NULL, 'Oyster Perpetual', 'Oystersteel', 41.0, 'automatic', '3230', 100, 'Lavender', 'Oyster', 695000, 1800000, 4.0, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m134300-0002'),
  -- OP41 - Beige (2025 new)
  ('b0000000-0000-0000-0000-000000000001', '134300-0003', 'Oyster Perpetual 41', NULL, 'Oyster Perpetual', 'Oystersteel', 41.0, 'automatic', '3230', 100, 'Beige', 'Oyster', 695000, 1500000, 3.5, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m134300-0003'),
  -- OP41 - Silver
  ('b0000000-0000-0000-0000-000000000001', '134300-0005', 'Oyster Perpetual 41', NULL, 'Oyster Perpetual', 'Oystersteel', 41.0, 'automatic', '3230', 100, 'Silver', 'Oyster', 695000, 700000, -0.5, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m134300-0005'),
  -- OP41 - Dark Green
  ('b0000000-0000-0000-0000-000000000001', '134300-0004', 'Oyster Perpetual 41', NULL, 'Oyster Perpetual', 'Oystersteel', 41.0, 'automatic', '3230', 100, 'Dark Green', 'Oyster', 695000, 900000, 1.0, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m134300-0004'),
  -- OP41 - Candy Pink
  ('b0000000-0000-0000-0000-000000000001', '134300-0006', 'Oyster Perpetual 41', NULL, 'Oyster Perpetual', 'Oystersteel', 41.0, 'automatic', '3230', 100, 'Candy Pink', 'Oyster', 695000, 1200000, 2.5, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m134300-0006'),

-- ============================================================
-- OYSTER PERPETUAL 36 (ref 126000)
-- Cal 3230 · 100m WR · 36mm
-- ============================================================
  -- OP36 - Green
  ('b0000000-0000-0000-0000-000000000001', '126000-0005', 'Oyster Perpetual 36', NULL, 'Oyster Perpetual', 'Oystersteel', 36.0, 'automatic', '3230', 100, 'Green', 'Oyster', 640000, 750000, 0.5, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m126000-0005'),
  -- OP36 - Turquoise Blue (Tiffany)
  ('b0000000-0000-0000-0000-000000000001', '126000-0006', 'Oyster Perpetual 36', 'Tiffany', 'Oyster Perpetual', 'Oystersteel', 36.0, 'automatic', '3230', 100, 'Turquoise Blue', 'Oyster', 640000, 1800000, -1.5, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m126000-0006'),
  -- OP36 - Silver
  ('b0000000-0000-0000-0000-000000000001', '126000-0001', 'Oyster Perpetual 36', NULL, 'Oyster Perpetual', 'Oystersteel', 36.0, 'automatic', '3230', 100, 'Silver', 'Oyster', 640000, 610000, -0.3, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m126000-0001'),
  -- OP36 - Black
  ('b0000000-0000-0000-0000-000000000001', '126000-0002', 'Oyster Perpetual 36', NULL, 'Oyster Perpetual', 'Oystersteel', 36.0, 'automatic', '3230', 100, 'Black', 'Oyster', 640000, 620000, -0.2, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m126000-0002'),
  -- OP36 - Blue
  ('b0000000-0000-0000-0000-000000000001', '126000-0003', 'Oyster Perpetual 36', NULL, 'Oyster Perpetual', 'Oystersteel', 36.0, 'automatic', '3230', 100, 'Blue', 'Oyster', 640000, 650000, 0.2, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m126000-0003'),

-- ============================================================
-- OYSTER PERPETUAL 34 (ref 124200)
-- Cal 2232 · 100m WR · 34mm
-- ============================================================
  -- OP34 - Blue
  ('b0000000-0000-0000-0000-000000000001', '124200-0003', 'Oyster Perpetual 34', NULL, 'Oyster Perpetual', 'Oystersteel', 34.0, 'automatic', '2232', 100, 'Blue', 'Oyster', 600000, 610000, 0.3, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m124200-0003'),
  -- OP34 - Silver
  ('b0000000-0000-0000-0000-000000000001', '124200-0001', 'Oyster Perpetual 34', NULL, 'Oyster Perpetual', 'Oystersteel', 34.0, 'automatic', '2232', 100, 'Silver', 'Oyster', 600000, 580000, -0.2, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m124200-0001'),
  -- OP34 - Black
  ('b0000000-0000-0000-0000-000000000001', '124200-0002', 'Oyster Perpetual 34', NULL, 'Oyster Perpetual', 'Oystersteel', 34.0, 'automatic', '2232', 100, 'Black', 'Oyster', 600000, 590000, -0.1, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m124200-0002'),

-- ============================================================
-- OYSTER PERPETUAL 31 (ref 277200)
-- Cal 2232 · 100m WR · 31mm
-- ============================================================
  -- OP31 - Blue
  ('b0000000-0000-0000-0000-000000000001', '277200-0003', 'Oyster Perpetual 31', NULL, 'Oyster Perpetual', 'Oystersteel', 31.0, 'automatic', '2232', 100, 'Blue', 'Oyster', 580000, 600000, 0.5, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m277200-0003'),
  -- OP31 - Turquoise Blue (Tiffany 31)
  ('b0000000-0000-0000-0000-000000000001', '277200-0006', 'Oyster Perpetual 31', 'Tiffany 31', 'Oyster Perpetual', 'Oystersteel', 31.0, 'automatic', '2232', 100, 'Turquoise Blue', 'Oyster', 580000, 1200000, -1.0, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m277200-0006'),
  -- OP31 - Silver
  ('b0000000-0000-0000-0000-000000000001', '277200-0001', 'Oyster Perpetual 31', NULL, 'Oyster Perpetual', 'Oystersteel', 31.0, 'automatic', '2232', 100, 'Silver', 'Oyster', 580000, 560000, -0.2, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m277200-0001'),
  -- OP31 - Coral Red
  ('b0000000-0000-0000-0000-000000000001', '277200-0008', 'Oyster Perpetual 31', NULL, 'Oyster Perpetual', 'Oystersteel', 31.0, 'automatic', '2232', 100, 'Coral Red', 'Oyster', 580000, 900000, 1.5, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m277200-0008'),
  -- OP31 - Black
  ('b0000000-0000-0000-0000-000000000001', '277200-0002', 'Oyster Perpetual 31', NULL, 'Oyster Perpetual', 'Oystersteel', 31.0, 'automatic', '2232', 100, 'Black', 'Oyster', 580000, 560000, -0.1, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m277200-0002'),

-- ============================================================
-- OYSTER PERPETUAL 28 (ref 276200)
-- Cal 2232 · 100m WR · 28mm
-- ============================================================
  -- OP28 - Silver
  ('b0000000-0000-0000-0000-000000000001', '276200-0001', 'Oyster Perpetual 28', NULL, 'Oyster Perpetual', 'Oystersteel', 28.0, 'automatic', '2232', 100, 'Silver', 'Oyster', 565000, 540000, -0.2, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m276200-0001'),
  -- OP28 - Black
  ('b0000000-0000-0000-0000-000000000001', '276200-0002', 'Oyster Perpetual 28', NULL, 'Oyster Perpetual', 'Oystersteel', 28.0, 'automatic', '2232', 100, 'Black', 'Oyster', 565000, 550000, -0.1, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m276200-0002'),
  -- OP28 - Blue
  ('b0000000-0000-0000-0000-000000000001', '276200-0003', 'Oyster Perpetual 28', NULL, 'Oyster Perpetual', 'Oystersteel', 28.0, 'automatic', '2232', 100, 'Blue', 'Oyster', 565000, 560000, 0.1, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m276200-0003'),
  -- OP28 - Lavender (2025 new)
  ('b0000000-0000-0000-0000-000000000001', '276200-0010', 'Oyster Perpetual 28', NULL, 'Oyster Perpetual', 'Oystersteel', 28.0, 'automatic', '2232', 100, 'Lavender', 'Oyster', 565000, 750000, 2.0, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m276200-0010'),

-- ============================================================
-- PERPETUAL 1908 (3 current production refs)
-- Cal 7140 · 50m WR · 39mm
-- ============================================================
  -- 1908 - Yellow Gold, White Dial
  ('b0000000-0000-0000-0000-000000000001', '52508-0006', 'Perpetual 1908', NULL, '1908', '18k Yellow Gold', 39.0, 'automatic', '7140', 50, 'White', 'Leather (Alligator)', 2500000, 2400000, -0.5, NULL, 'https://www.rolex.com/watches/perpetual-1908/m52508-0006'),
  -- 1908 - Yellow Gold, Black Dial
  ('b0000000-0000-0000-0000-000000000001', '52508-0002', 'Perpetual 1908', NULL, '1908', '18k Yellow Gold', 39.0, 'automatic', '7140', 50, 'Black', 'Leather (Alligator)', 2500000, 2350000, -0.3, NULL, 'https://www.rolex.com/watches/perpetual-1908/m52508-0002'),
  -- 1908 - White Gold, White Dial
  ('b0000000-0000-0000-0000-000000000001', '52509-0006', 'Perpetual 1908', NULL, '1908', '18k White Gold', 39.0, 'automatic', '7140', 50, 'White', 'Leather (Alligator)', 2420000, 2300000, -0.4, NULL, 'https://www.rolex.com/watches/perpetual-1908/m52509-0006'),
  -- 1908 - White Gold, Black Dial
  ('b0000000-0000-0000-0000-000000000001', '52509-0002', 'Perpetual 1908', NULL, '1908', '18k White Gold', 39.0, 'automatic', '7140', 50, 'Black', 'Leather (Alligator)', 2420000, 2250000, -0.3, NULL, 'https://www.rolex.com/watches/perpetual-1908/m52509-0002'),
  -- 1908 - Platinum, Ice Blue Dial
  ('b0000000-0000-0000-0000-000000000001', '52506-0002', 'Perpetual 1908', NULL, '1908', '950 Platinum', 39.0, 'automatic', '7140', 50, 'Ice Blue', 'Leather (Alligator)', 3090000, 3200000, 0.5, NULL, 'https://www.rolex.com/watches/perpetual-1908/m52506-0002'),

-- ============================================================
-- LAND-DWELLER (6 current production refs — NEW for 2025)
-- Cal 7135 (Dynapulse) · 100m WR · 36mm & 40mm
-- ============================================================
  -- Land-Dweller 40 - White Rolesor, White Dial
  ('b0000000-0000-0000-0000-000000000001', '127334', 'Land-Dweller 40', NULL, 'Land-Dweller', 'Oystersteel/White Gold', 40.0, 'automatic', '7135', 100, 'White', 'Integrated', 1490000, 2500000, 5.0, NULL, 'https://www.rolex.com/watches/land-dweller/m127334-0001'),
  -- Land-Dweller 40 - Everose Gold, Sundust Dial
  ('b0000000-0000-0000-0000-000000000001', '127335', 'Land-Dweller 40', NULL, 'Land-Dweller', '18k Everose Gold', 40.0, 'automatic', '7135', 100, 'Sundust', 'Integrated', 4760000, 6000000, 4.5, NULL, 'https://www.rolex.com/watches/land-dweller/m127335-0001'),
  -- Land-Dweller 40 - Platinum, Ice Blue Dial
  ('b0000000-0000-0000-0000-000000000001', '127336', 'Land-Dweller 40', NULL, 'Land-Dweller', '950 Platinum', 40.0, 'automatic', '7135', 100, 'Ice Blue', 'Integrated', 6350000, 8500000, 4.0, NULL, 'https://www.rolex.com/watches/land-dweller/m127336-0001'),
  -- Land-Dweller 36 - White Rolesor, White Dial
  ('b0000000-0000-0000-0000-000000000001', '127234', 'Land-Dweller 36', NULL, 'Land-Dweller', 'Oystersteel/White Gold', 36.0, 'automatic', '7135', 100, 'White', 'Integrated', 1400000, 2300000, 5.0, NULL, 'https://www.rolex.com/watches/land-dweller/m127234-0001'),
  -- Land-Dweller 36 - Everose Gold, Sundust Dial
  ('b0000000-0000-0000-0000-000000000001', '127235', 'Land-Dweller 36', NULL, 'Land-Dweller', '18k Everose Gold', 36.0, 'automatic', '7135', 100, 'Sundust', 'Integrated', 4360000, 5500000, 4.5, NULL, 'https://www.rolex.com/watches/land-dweller/m127235-0001'),
  -- Land-Dweller 36 - Platinum, Ice Blue Dial
  ('b0000000-0000-0000-0000-000000000001', '127236', 'Land-Dweller 36', NULL, 'Land-Dweller', '950 Platinum', 36.0, 'automatic', '7135', 100, 'Ice Blue', 'Integrated', 5980000, 8000000, 4.0, NULL, 'https://www.rolex.com/watches/land-dweller/m127236-0001');

-- ============================================================
-- ADDITIONAL ROLEX MODELS — Missing from initial catalog
-- Prices in USD cents · Feb 2026 data
-- ============================================================

-- ============================================================
-- GMT-MASTER II — Bruce Wayne (Grey/Black bezel, 2024 release)
-- Cal 3285 · 100m WR · 40mm
-- ============================================================
INSERT INTO public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) VALUES
  -- GMT-Master II - Bruce Wayne Jubilee
  ('b0000000-0000-0000-0000-000000000001', '126710GRNR-0003', 'GMT-Master II', 'Bruce Wayne (Jubilee)', 'GMT-Master II', 'Oystersteel', 40.0, 'automatic', '3285', 100, 'Black', 'Jubilee', 1180000, 1980000, 2.8, NULL, 'https://www.rolex.com/watches/gmt-master-ii/m126710grnr-0003'),
  -- GMT-Master II - Bruce Wayne Oyster
  ('b0000000-0000-0000-0000-000000000001', '126710GRNR-0004', 'GMT-Master II', 'Bruce Wayne (Oyster)', 'GMT-Master II', 'Oystersteel', 40.0, 'automatic', '3285', 100, 'Black', 'Oyster', 1110000, 1900000, 2.5, NULL, 'https://www.rolex.com/watches/gmt-master-ii/m126710grnr-0004');

-- ============================================================
-- SEA-DWELLER TWO-TONE (1 missing ref)
-- Cal 3235 · 1220m WR · 43mm
-- ============================================================
INSERT INTO public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) VALUES
  -- Sea-Dweller - Two-Tone Yellow Gold/Steel
  ('b0000000-0000-0000-0000-000000000001', '126603', 'Sea-Dweller', NULL, 'Sea-Dweller', 'Oystersteel/Yellow Gold', 43.0, 'automatic', '3235', 1220, 'Black', 'Oyster', 2030000, 1460000, -0.8, NULL, 'https://www.rolex.com/watches/sea-dweller/m126603-0001');

-- ============================================================
-- LADY-DATEJUST 28mm (current production refs)
-- Cal 2236 · 100m WR · 28mm
-- ============================================================
INSERT INTO public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) VALUES
  -- Lady-Datejust - Oystersteel, Silver, Oyster
  ('b0000000-0000-0000-0000-000000000001', '279160-0006', 'Lady-Datejust', NULL, 'Datejust', 'Oystersteel', 28.0, 'automatic', '2236', 100, 'Silver', 'Oyster', 685000, 650000, -0.3, NULL, 'https://www.rolex.com/watches/lady-datejust/m279160-0006'),
  -- Lady-Datejust - Oystersteel, Pink, Jubilee
  ('b0000000-0000-0000-0000-000000000001', '279160-0014', 'Lady-Datejust', NULL, 'Datejust', 'Oystersteel', 28.0, 'automatic', '2236', 100, 'Pink', 'Jubilee', 685000, 670000, 0.2, NULL, 'https://www.rolex.com/watches/lady-datejust/m279160-0014'),
  -- Lady-Datejust - Yellow Rolesor, Fluted Bezel, Champagne, Jubilee
  ('b0000000-0000-0000-0000-000000000001', '279173-0012', 'Lady-Datejust', NULL, 'Datejust', 'Oystersteel/Yellow Gold', 28.0, 'automatic', '2236', 100, 'Champagne', 'Jubilee', 1175000, 1050000, -0.3, NULL, 'https://www.rolex.com/watches/lady-datejust/m279173-0012'),
  -- Lady-Datejust - Yellow Rolesor, Fluted Bezel, Silver Diamond, Jubilee
  ('b0000000-0000-0000-0000-000000000001', '279173-0015', 'Lady-Datejust', NULL, 'Datejust', 'Oystersteel/Yellow Gold', 28.0, 'automatic', '2236', 100, 'Silver Diamond', 'Jubilee', 1310000, 1200000, 0.2, NULL, 'https://www.rolex.com/watches/lady-datejust/m279173-0015'),
  -- Lady-Datejust - White Rolesor, Fluted Bezel, Silver, Jubilee
  ('b0000000-0000-0000-0000-000000000001', '279174-0002', 'Lady-Datejust', NULL, 'Datejust', 'Oystersteel/White Gold', 28.0, 'automatic', '2236', 100, 'Silver', 'Jubilee', 1040000, 980000, -0.2, NULL, 'https://www.rolex.com/watches/lady-datejust/m279174-0002'),
  -- Lady-Datejust - White Rolesor, Fluted Bezel, MOP Diamond, Jubilee
  ('b0000000-0000-0000-0000-000000000001', '279174-0020', 'Lady-Datejust', NULL, 'Datejust', 'Oystersteel/White Gold', 28.0, 'automatic', '2236', 100, 'Mother of Pearl Diamond', 'Jubilee', 1350000, 1250000, 0.3, NULL, 'https://www.rolex.com/watches/lady-datejust/m279174-0020'),
  -- Lady-Datejust - Everose Rolesor, Fluted Bezel, Sundust, Jubilee
  ('b0000000-0000-0000-0000-000000000001', '279171-0002', 'Lady-Datejust', NULL, 'Datejust', 'Oystersteel/Everose Gold', 28.0, 'automatic', '2236', 100, 'Sundust', 'Jubilee', 1175000, 1100000, -0.2, NULL, 'https://www.rolex.com/watches/lady-datejust/m279171-0002'),
  -- Lady-Datejust - Full Yellow Gold, Fluted Bezel, Champagne, President
  ('b0000000-0000-0000-0000-000000000001', '279178-0001', 'Lady-Datejust', NULL, 'Datejust', '18k Yellow Gold', 28.0, 'automatic', '2236', 100, 'Champagne', 'President', 3550000, 3000000, -0.5, NULL, 'https://www.rolex.com/watches/lady-datejust/m279178-0001'),
  -- Lady-Datejust - Full Everose Gold, Fluted Bezel, Sundust, President
  ('b0000000-0000-0000-0000-000000000001', '279175-0003', 'Lady-Datejust', NULL, 'Datejust', '18k Everose Gold', 28.0, 'automatic', '2236', 100, 'Sundust', 'President', 3825000, 3200000, -0.3, NULL, 'https://www.rolex.com/watches/lady-datejust/m279175-0003'),
  -- Lady-Datejust - Full White Gold, Fluted Bezel, Silver, President
  ('b0000000-0000-0000-0000-000000000001', '279179-0002', 'Lady-Datejust', NULL, 'Datejust', '18k White Gold', 28.0, 'automatic', '2236', 100, 'Silver', 'President', 3825000, 3200000, -0.4, NULL, 'https://www.rolex.com/watches/lady-datejust/m279179-0002'),
  -- Lady-Datejust - Full Yellow Gold, Diamond Bezel, Champagne Diamond, President
  ('b0000000-0000-0000-0000-000000000001', '279138RBR', 'Lady-Datejust', NULL, 'Datejust', '18k Yellow Gold', 28.0, 'automatic', '2236', 100, 'Champagne Diamond', 'President', 4250000, 3800000, -0.2, NULL, 'https://www.rolex.com/watches/lady-datejust/m279138rbr-0003'),
  -- Lady-Datejust - Full Everose Gold, Diamond Bezel, Sundust Diamond, President
  ('b0000000-0000-0000-0000-000000000001', '279135RBR', 'Lady-Datejust', NULL, 'Datejust', '18k Everose Gold', 28.0, 'automatic', '2236', 100, 'Sundust Diamond', 'President', 4500000, 4000000, -0.3, NULL, 'https://www.rolex.com/watches/lady-datejust/m279135rbr-0001'),
  -- Lady-Datejust - Full White Gold, Diamond Bezel, Silver Diamond, President
  ('b0000000-0000-0000-0000-000000000001', '279139RBR', 'Lady-Datejust', NULL, 'Datejust', '18k White Gold', 28.0, 'automatic', '2236', 100, 'Silver Diamond', 'President', 4500000, 4000000, -0.3, NULL, 'https://www.rolex.com/watches/lady-datejust/m279139rbr-0002');

-- ============================================================
-- LAND-DWELLER — Diamond-set variants (4 additional refs)
-- Cal 7135 (Dynapulse) · 100m WR · 36mm & 40mm
-- ============================================================
INSERT INTO public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) VALUES
  -- Land-Dweller 40 - Everose Gold, Diamond Bezel & Dial
  ('b0000000-0000-0000-0000-000000000001', '127335-0002', 'Land-Dweller 40', NULL, 'Land-Dweller', '18k Everose Gold', 40.0, 'automatic', '7135', 100, 'Sundust Diamond', 'Integrated', 6200000, 8000000, 4.0, NULL, 'https://www.rolex.com/watches/land-dweller/m127335-0002'),
  -- Land-Dweller 40 - Platinum, Diamond Bezel & Dial
  ('b0000000-0000-0000-0000-000000000001', '127336-0002', 'Land-Dweller 40', NULL, 'Land-Dweller', '950 Platinum', 40.0, 'automatic', '7135', 100, 'Ice Blue Diamond', 'Integrated', 8500000, 11000000, 3.8, NULL, 'https://www.rolex.com/watches/land-dweller/m127336-0002'),
  -- Land-Dweller 36 - Everose Gold, Diamond Bezel & Dial
  ('b0000000-0000-0000-0000-000000000001', '127235-0002', 'Land-Dweller 36', NULL, 'Land-Dweller', '18k Everose Gold', 36.0, 'automatic', '7135', 100, 'Sundust Diamond', 'Integrated', 5700000, 7500000, 4.0, NULL, 'https://www.rolex.com/watches/land-dweller/m127235-0002'),
  -- Land-Dweller 36 - Platinum, Diamond Bezel & Dial
  ('b0000000-0000-0000-0000-000000000001', '127236-0002', 'Land-Dweller 36', NULL, 'Land-Dweller', '950 Platinum', 36.0, 'automatic', '7135', 100, 'Ice Blue Diamond', 'Integrated', 8000000, 10500000, 3.5, NULL, 'https://www.rolex.com/watches/land-dweller/m127236-0002');

-- ============================================================
-- ADDITIONAL DATEJUST DIAL VARIANTS
-- Expanding coverage of popular configurations
-- ============================================================
INSERT INTO public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) VALUES
  -- DJ41 - White Rolesor, Fluted Bezel, Jubilee, Palm Green
  ('b0000000-0000-0000-0000-000000000001', '126334-0027', 'Datejust 41', NULL, 'Datejust', 'Oystersteel/White Gold', 41.0, 'automatic', '3235', 100, 'Palm Green', 'Jubilee', 1230000, 1300000, 1.0, NULL, 'https://www.rolex.com/watches/datejust/m126334-0027'),
  -- DJ41 - Yellow Rolesor, Fluted Bezel, Jubilee, Black
  ('b0000000-0000-0000-0000-000000000001', '126333-0013', 'Datejust 41', NULL, 'Datejust', 'Oystersteel/Yellow Gold', 41.0, 'automatic', '3235', 100, 'Black', 'Jubilee', 1700000, 1500000, -0.2, NULL, 'https://www.rolex.com/watches/datejust/m126333-0013'),
  -- DJ41 - White Rolesor, Fluted Bezel, Oyster, Blue
  ('b0000000-0000-0000-0000-000000000001', '126334-0002', 'Datejust 41', NULL, 'Datejust', 'Oystersteel/White Gold', 41.0, 'automatic', '3235', 100, 'Blue', 'Oyster', 1150000, 1100000, 0.2, NULL, 'https://www.rolex.com/watches/datejust/m126334-0002'),
  -- DJ41 - Oystersteel, Smooth Bezel, Jubilee, Blue
  ('b0000000-0000-0000-0000-000000000001', '126300-0049', 'Datejust 41', NULL, 'Datejust', 'Oystersteel', 41.0, 'automatic', '3235', 100, 'Blue', 'Jubilee', 980000, 950000, 0.3, NULL, 'https://www.rolex.com/watches/datejust/m126300-0049'),
  -- DJ41 - Oystersteel, Smooth Bezel, Oyster, Green
  ('b0000000-0000-0000-0000-000000000001', '126300-0025', 'Datejust 41', NULL, 'Datejust', 'Oystersteel', 41.0, 'automatic', '3235', 100, 'Green', 'Oyster', 900000, 950000, 1.2, NULL, 'https://www.rolex.com/watches/datejust/m126300-0025'),
  -- DJ41 - Everose Rolesor, Fluted Bezel, Jubilee, Sundust
  ('b0000000-0000-0000-0000-000000000001', '126331-0010', 'Datejust 41', NULL, 'Datejust', 'Oystersteel/Everose Gold', 41.0, 'automatic', '3235', 100, 'Sundust', 'Jubilee', 1660000, 1500000, -0.2, NULL, 'https://www.rolex.com/watches/datejust/m126331-0010'),
  -- DJ36 - Oystersteel, Smooth Bezel, Jubilee, Mint Green
  ('b0000000-0000-0000-0000-000000000001', '126200-0040', 'Datejust 36', NULL, 'Datejust', 'Oystersteel', 36.0, 'automatic', '3235', 100, 'Mint Green', 'Jubilee', 895000, 900000, 0.5, NULL, 'https://www.rolex.com/watches/datejust/m126200-0040'),
  -- DJ36 - Oystersteel, Smooth Bezel, Oyster, Green
  ('b0000000-0000-0000-0000-000000000001', '126200-0025', 'Datejust 36', NULL, 'Datejust', 'Oystersteel', 36.0, 'automatic', '3235', 100, 'Green', 'Oyster', 815000, 830000, 0.8, NULL, 'https://www.rolex.com/watches/datejust/m126200-0025'),
  -- DJ36 - White Rolesor, Fluted Bezel, Jubilee, Bright Black
  ('b0000000-0000-0000-0000-000000000001', '126234-0046', 'Datejust 36', NULL, 'Datejust', 'Oystersteel/White Gold', 36.0, 'automatic', '3235', 100, 'Bright Black', 'Jubilee', 1090000, 1050000, -0.2, NULL, 'https://www.rolex.com/watches/datejust/m126234-0046'),
  -- DJ36 - White Rolesor, Fluted Bezel, Jubilee, Palm Green
  ('b0000000-0000-0000-0000-000000000001', '126234-0047', 'Datejust 36', NULL, 'Datejust', 'Oystersteel/White Gold', 36.0, 'automatic', '3235', 100, 'Palm Green', 'Jubilee', 1090000, 1150000, 1.0, NULL, 'https://www.rolex.com/watches/datejust/m126234-0047'),
  -- DJ31 - Oystersteel, Smooth Bezel, Oyster, Bright Black
  ('b0000000-0000-0000-0000-000000000001', '278240-0021', 'Datejust 31', NULL, 'Datejust', 'Oystersteel', 31.0, 'automatic', '2236', 100, 'Bright Black', 'Oyster', 730000, 710000, -0.1, NULL, 'https://www.rolex.com/watches/datejust/m278240-0021'),
  -- DJ31 - Oystersteel, Smooth Bezel, Oyster, Mint Green
  ('b0000000-0000-0000-0000-000000000001', '278240-0011', 'Datejust 31', NULL, 'Datejust', 'Oystersteel', 31.0, 'automatic', '2236', 100, 'Mint Green', 'Oyster', 730000, 750000, 0.5, NULL, 'https://www.rolex.com/watches/datejust/m278240-0011'),
  -- DJ31 - White Rolesor, Fluted Bezel, Jubilee, Mint Green
  ('b0000000-0000-0000-0000-000000000001', '278274-0037', 'Datejust 31', NULL, 'Datejust', 'Oystersteel/White Gold', 31.0, 'automatic', '2236', 100, 'Mint Green', 'Jubilee', 1040000, 1080000, 0.8, NULL, 'https://www.rolex.com/watches/datejust/m278274-0037');

-- ============================================================
-- ADDITIONAL DAY-DATE DIAL VARIANTS
-- ============================================================
INSERT INTO public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) VALUES
  -- DD40 - Yellow Gold, Black
  ('b0000000-0000-0000-0000-000000000001', '228238-0004', 'Day-Date 40', NULL, 'Day-Date', '18k Yellow Gold', 40.0, 'automatic', '3255', 100, 'Black', 'President', 4800000, 3900000, -0.8, NULL, 'https://www.rolex.com/watches/day-date/m228238-0004'),
  -- DD40 - Yellow Gold, Olive Green Roman
  ('b0000000-0000-0000-0000-000000000001', '228238-0042', 'Day-Date 40', NULL, 'Day-Date', '18k Yellow Gold', 40.0, 'automatic', '3255', 100, 'Olive Green', 'President', 4800000, 4200000, 0.5, NULL, 'https://www.rolex.com/watches/day-date/m228238-0042'),
  -- DD40 - Everose Gold, Chocolate
  ('b0000000-0000-0000-0000-000000000001', '228235-0045', 'Day-Date 40', NULL, 'Day-Date', '18k Everose Gold', 40.0, 'automatic', '3255', 100, 'Chocolate', 'President', 5160000, 4200000, -0.3, NULL, 'https://www.rolex.com/watches/day-date/m228235-0045'),
  -- DD40 - White Gold, Bright Blue Roman
  ('b0000000-0000-0000-0000-000000000001', '228239-0007', 'Day-Date 40', NULL, 'Day-Date', '18k White Gold', 40.0, 'automatic', '3255', 100, 'Bright Blue Roman', 'President', 5160000, 4500000, 0.5, NULL, 'https://www.rolex.com/watches/day-date/m228239-0007'),
  -- DD40 - White Gold, Olive Green
  ('b0000000-0000-0000-0000-000000000001', '228239-0033', 'Day-Date 40', NULL, 'Day-Date', '18k White Gold', 40.0, 'automatic', '3255', 100, 'Olive Green', 'President', 5160000, 4800000, 1.0, NULL, 'https://www.rolex.com/watches/day-date/m228239-0033'),
  -- DD40 - Everose Gold, Diamond Bezel, Sundust
  ('b0000000-0000-0000-0000-000000000001', '228345RBR', 'Day-Date 40', NULL, 'Day-Date', '18k Everose Gold', 40.0, 'automatic', '3255', 100, 'Sundust', 'President', 6960000, 6000000, -0.3, NULL, 'https://www.rolex.com/watches/day-date/m228345rbr-0007'),
  -- DD40 - Yellow Gold, Diamond Bezel, Champagne
  ('b0000000-0000-0000-0000-000000000001', '228348RBR', 'Day-Date 40', NULL, 'Day-Date', '18k Yellow Gold', 40.0, 'automatic', '3255', 100, 'Champagne', 'President', 6500000, 5800000, -0.3, NULL, 'https://www.rolex.com/watches/day-date/m228348rbr-0002'),
  -- DD40 - Platinum, Ice Blue, Baguette Hour Markers
  ('b0000000-0000-0000-0000-000000000001', '228206-0053', 'Day-Date 40', NULL, 'Day-Date', '950 Platinum', 40.0, 'automatic', '3255', 100, 'Ice Blue Baguette', 'President', 7700000, 7200000, -0.5, NULL, 'https://www.rolex.com/watches/day-date/m228206-0053'),
  -- DD36 - Everose Gold, Chocolate
  ('b0000000-0000-0000-0000-000000000001', '128235-0059', 'Day-Date 36', NULL, 'Day-Date', '18k Everose Gold', 36.0, 'automatic', '3255', 100, 'Chocolate', 'President', 4720000, 3900000, -0.3, NULL, 'https://www.rolex.com/watches/day-date/m128235-0059'),
  -- DD36 - White Gold, Blue
  ('b0000000-0000-0000-0000-000000000001', '128239-0059', 'Day-Date 36', NULL, 'Day-Date', '18k White Gold', 36.0, 'automatic', '3255', 100, 'Blue', 'President', 4720000, 4000000, 0.3, NULL, 'https://www.rolex.com/watches/day-date/m128239-0059'),
  -- DD36 - Yellow Gold, Diamond Bezel, Champagne
  ('b0000000-0000-0000-0000-000000000001', '128348RBR', 'Day-Date 36', NULL, 'Day-Date', '18k Yellow Gold', 36.0, 'automatic', '3255', 100, 'Champagne Diamond', 'President', 5990000, 5200000, -0.3, NULL, 'https://www.rolex.com/watches/day-date/m128348rbr-0026');

-- ============================================================
-- ADDITIONAL SKY-DWELLER VARIANTS
-- Cal 9002 · 100m WR · 42mm
-- ============================================================
INSERT INTO public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) VALUES
  -- Sky-Dweller - White Rolesor, Black Dial, Jubilee
  ('b0000000-0000-0000-0000-000000000001', '336934-0002', 'Sky-Dweller', NULL, 'Sky-Dweller', 'Oystersteel/White Gold', 42.0, 'automatic', '9002', 100, 'Black', 'Jubilee', 1775000, 2000000, 1.8, NULL, 'https://www.rolex.com/watches/sky-dweller/m336934-0002'),
  -- Sky-Dweller - White Rolesor, White Dial, Jubilee
  ('b0000000-0000-0000-0000-000000000001', '336934-0005', 'Sky-Dweller', NULL, 'Sky-Dweller', 'Oystersteel/White Gold', 42.0, 'automatic', '9002', 100, 'White', 'Jubilee', 1775000, 1850000, 0.8, NULL, 'https://www.rolex.com/watches/sky-dweller/m336934-0005'),
  -- Sky-Dweller - Yellow Rolesor, Champagne, Oyster
  ('b0000000-0000-0000-0000-000000000001', '336933-0004', 'Sky-Dweller', NULL, 'Sky-Dweller', 'Oystersteel/Yellow Gold', 42.0, 'automatic', '9002', 100, 'Champagne', 'Oyster', 2350000, 2150000, -0.3, NULL, 'https://www.rolex.com/watches/sky-dweller/m336933-0004'),
  -- Sky-Dweller - Yellow Rolesor, Black, Jubilee
  ('b0000000-0000-0000-0000-000000000001', '336933-0002', 'Sky-Dweller', NULL, 'Sky-Dweller', 'Oystersteel/Yellow Gold', 42.0, 'automatic', '9002', 100, 'Black', 'Jubilee', 2420000, 2200000, -0.2, NULL, 'https://www.rolex.com/watches/sky-dweller/m336933-0002'),
  -- Sky-Dweller - Everose Gold, Chocolate, Oysterflex
  ('b0000000-0000-0000-0000-000000000001', '336235-0001', 'Sky-Dweller', NULL, 'Sky-Dweller', '18k Everose Gold', 42.0, 'automatic', '9002', 100, 'Chocolate', 'Oysterflex', 5085000, 4600000, -0.3, NULL, 'https://www.rolex.com/watches/sky-dweller/m336235-0001'),
  -- Sky-Dweller - Everose Gold, Slate, Oysterflex
  ('b0000000-0000-0000-0000-000000000001', '336235-0002', 'Sky-Dweller', NULL, 'Sky-Dweller', '18k Everose Gold', 42.0, 'automatic', '9002', 100, 'Slate', 'Oysterflex', 5085000, 4500000, -0.5, NULL, 'https://www.rolex.com/watches/sky-dweller/m336235-0002');

-- ============================================================
-- ADDITIONAL YACHT-MASTER VARIANTS
-- ============================================================
INSERT INTO public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) VALUES
  -- YM40 - Everose Rolesor, Chocolate, Oysterflex
  ('b0000000-0000-0000-0000-000000000001', '126621-0002', 'Yacht-Master 40', NULL, 'Yacht-Master', 'Oystersteel/Everose Gold', 40.0, 'automatic', '3235', 100, 'Black', 'Oyster', 1665000, 1480000, -0.3, NULL, 'https://www.rolex.com/watches/yacht-master/m126621-0002'),
  -- YM40 - Full Everose Gold, Oysterflex, Pave Diamond
  ('b0000000-0000-0000-0000-000000000001', '126655-0005', 'Yacht-Master 40', NULL, 'Yacht-Master', '18k Everose Gold', 40.0, 'automatic', '3235', 100, 'Pave Diamond', 'Oysterflex', 5100000, 4500000, -0.2, NULL, 'https://www.rolex.com/watches/yacht-master/m126655-0005'),
  -- YM42 - RLX Titanium, Blue Dial, Oyster
  ('b0000000-0000-0000-0000-000000000001', '226627-0002', 'Yacht-Master 42', NULL, 'Yacht-Master', 'RLX Titanium', 42.0, 'automatic', '3235', 100, 'Blue', 'Oyster (Titanium)', 2720000, 3100000, 1.2, NULL, 'https://www.rolex.com/watches/yacht-master/m226627-0002');

-- ============================================================
-- ADDITIONAL OYSTER PERPETUAL DIAL VARIANTS
-- ============================================================
INSERT INTO public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) VALUES
  -- OP41 - Black
  ('b0000000-0000-0000-0000-000000000001', '134300-0007', 'Oyster Perpetual 41', NULL, 'Oyster Perpetual', 'Oystersteel', 41.0, 'automatic', '3230', 100, 'Black', 'Oyster', 695000, 700000, -0.2, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m134300-0007'),
  -- OP41 - Blue
  ('b0000000-0000-0000-0000-000000000001', '134300-0008', 'Oyster Perpetual 41', NULL, 'Oyster Perpetual', 'Oystersteel', 41.0, 'automatic', '3230', 100, 'Blue', 'Oyster', 695000, 710000, 0.2, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m134300-0008'),
  -- OP36 - Yellow
  ('b0000000-0000-0000-0000-000000000001', '126000-0004', 'Oyster Perpetual 36', NULL, 'Oyster Perpetual', 'Oystersteel', 36.0, 'automatic', '3230', 100, 'Yellow', 'Oyster', 640000, 1000000, 0.5, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m126000-0004'),
  -- OP36 - Coral Red
  ('b0000000-0000-0000-0000-000000000001', '126000-0008', 'Oyster Perpetual 36', NULL, 'Oyster Perpetual', 'Oystersteel', 36.0, 'automatic', '3230', 100, 'Coral Red', 'Oyster', 640000, 800000, 1.0, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m126000-0008'),
  -- OP36 - Candy Pink
  ('b0000000-0000-0000-0000-000000000001', '126000-0009', 'Oyster Perpetual 36', NULL, 'Oyster Perpetual', 'Oystersteel', 36.0, 'automatic', '3230', 100, 'Candy Pink', 'Oyster', 640000, 900000, 1.5, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m126000-0009'),
  -- OP34 - Green
  ('b0000000-0000-0000-0000-000000000001', '124200-0005', 'Oyster Perpetual 34', NULL, 'Oyster Perpetual', 'Oystersteel', 34.0, 'automatic', '2232', 100, 'Green', 'Oyster', 600000, 630000, 0.3, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m124200-0005'),
  -- OP31 - Green
  ('b0000000-0000-0000-0000-000000000001', '277200-0005', 'Oyster Perpetual 31', NULL, 'Oyster Perpetual', 'Oystersteel', 31.0, 'automatic', '2232', 100, 'Green', 'Oyster', 580000, 610000, 0.3, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m277200-0005'),
  -- OP28 - Coral Red
  ('b0000000-0000-0000-0000-000000000001', '276200-0008', 'Oyster Perpetual 28', NULL, 'Oyster Perpetual', 'Oystersteel', 28.0, 'automatic', '2232', 100, 'Coral Red', 'Oyster', 565000, 700000, 1.0, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m276200-0008'),
  -- OP28 - Green
  ('b0000000-0000-0000-0000-000000000001', '276200-0005', 'Oyster Perpetual 28', NULL, 'Oyster Perpetual', 'Oystersteel', 28.0, 'automatic', '2232', 100, 'Green', 'Oyster', 565000, 580000, 0.3, NULL, 'https://www.rolex.com/watches/oyster-perpetual/m276200-0005');

-- ============================================================
-- PATEK PHILIPPE — Complete Current Production Catalog 2025-2026
-- Plus discontinued legends for market tracking (~100 watches)
-- Prices in USD cents
-- ============================================================
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  -- NAUTILUS (Current Production)
  ('b0000000-0000-0000-0000-000000000002', '5811/1G-001', 'Nautilus', null, 'Nautilus', '18k White Gold', 41.0, 'automatic', '26-330 S C', 120, 'Blue-Black Gradient', '18k White Gold', 8976700, 15000000, 2.8, null, 'https://www.patek.com/en/collection/nautilus/5811-1G-001'),
  ('b0000000-0000-0000-0000-000000000002', '5811/1460G-001', 'Nautilus Haute Joaillerie', null, 'Nautilus', '18k White Gold', 41.0, 'automatic', '26-330 S C', 120, 'Diamond-Set Blue', '18k White Gold', 63631000, 70000000, 5.0, null, 'https://www.patek.com/en/collection/nautilus/5811-1460G-001'),
  ('b0000000-0000-0000-0000-000000000002', '5712/1R-001', 'Nautilus Moon Phase Power Reserve', null, 'Nautilus', '18k Rose Gold', 40.0, 'automatic', '240 PS IRM C LU', 120, 'Brown-Black Gradient', '18k Rose Gold', 11500000, 14000000, 3.5, null, 'https://www.patek.com/en/collection/nautilus/5712-1R-001'),
  ('b0000000-0000-0000-0000-000000000002', '5726/1A-014', 'Nautilus Annual Calendar', null, 'Nautilus', 'Stainless Steel', 40.5, 'automatic', '324 S QA LU 24H/303', 120, 'Blue-Black Gradient', 'Stainless Steel', 5350000, 12000000, 1.2, null, 'https://www.patek.com/en/collection/nautilus/5726-1A-014'),
  ('b0000000-0000-0000-0000-000000000002', '5740/1G-001', 'Nautilus Perpetual Calendar', null, 'Nautilus', '18k White Gold', 40.0, 'automatic', '240 Q', 30, 'Blue-Black Gradient', '18k White Gold', 14250000, 28000000, 3.5, null, 'https://www.patek.com/en/collection/nautilus/5740-1G-001'),
  ('b0000000-0000-0000-0000-000000000002', '5980/60G-001', 'Nautilus Chronograph', null, 'Nautilus', '18k White Gold', 40.5, 'automatic', 'CH 28-520 C', 120, 'Blue-Black Gradient', '18k White Gold', 12500000, 14000000, 1.8, null, 'https://www.patek.com/en/collection/nautilus/5980-60G-001'),
  ('b0000000-0000-0000-0000-000000000002', '5980/1R-001', 'Nautilus Chronograph', null, 'Nautilus', '18k Rose Gold', 40.5, 'automatic', 'CH 28-520 C', 120, 'Blue-Black Gradient', '18k Rose Gold', 10527000, 13500000, 2.0, null, 'https://www.patek.com/en/collection/nautilus/5980-1R-001'),
  ('b0000000-0000-0000-0000-000000000002', '5990/1A-011', 'Nautilus Travel Time Chronograph', null, 'Nautilus', 'Stainless Steel', 40.5, 'automatic', 'CH 28-520 C FUS', 120, 'Blue-Gray Gradient', 'Stainless Steel', 7300000, 13000000, 1.5, null, 'https://www.patek.com/en/collection/nautilus/5990-1A-011'),
  ('b0000000-0000-0000-0000-000000000002', '5990/1R-001', 'Nautilus Travel Time Chronograph', null, 'Nautilus', '18k Rose Gold', 40.5, 'automatic', 'CH 28-520 C FUS', 120, 'Blue-Black Gradient', '18k Rose Gold', 12632000, 16000000, 2.2, null, 'https://www.patek.com/en/collection/nautilus/5990-1R-001'),
  ('b0000000-0000-0000-0000-000000000002', '7118/1A-001', 'Nautilus Ladies', null, 'Nautilus', 'Stainless Steel', 35.2, 'automatic', '26-330 S C', 60, 'Blue Opaline', 'Stainless Steel', 3500000, 6500000, 1.8, null, 'https://www.patek.com/en/collection/nautilus/7118-1A-001'),
  ('b0000000-0000-0000-0000-000000000002', '7118/1A-011', 'Nautilus Ladies', null, 'Nautilus', 'Stainless Steel', 35.2, 'automatic', '26-330 S C', 60, 'Gray', 'Stainless Steel', 3500000, 5800000, 1.2, null, 'https://www.patek.com/en/collection/nautilus/7118-1A-011'),
  ('b0000000-0000-0000-0000-000000000002', '7118/1200A-001', 'Nautilus Ladies Diamond Bezel', null, 'Nautilus', 'Stainless Steel', 35.2, 'automatic', '26-330 S C', 60, 'Blue Opaline', 'Stainless Steel', 4450000, 7000000, 2.0, null, 'https://www.patek.com/en/collection/nautilus/7118-1200A-001'),
  ('b0000000-0000-0000-0000-000000000002', '7118/1200A-011', 'Nautilus Ladies Diamond Bezel', null, 'Nautilus', 'Stainless Steel', 35.2, 'automatic', '26-330 S C', 60, 'Olive Green', 'Stainless Steel', 4450000, 7200000, 2.5, null, 'https://www.patek.com/en/collection/nautilus/7118-1200A-011'),
  ('b0000000-0000-0000-0000-000000000002', '7118/1200R-001', 'Nautilus Ladies', null, 'Nautilus', '18k Rose Gold', 35.2, 'automatic', '26-330 S C', 60, 'Brown-Gray Gradient', '18k Rose Gold', 7450000, 9500000, 1.5, null, 'https://www.patek.com/en/collection/nautilus/7118-1200R-001'),
  ('b0000000-0000-0000-0000-000000000002', '7118/1453G-001', 'Nautilus Ladies Haute Joaillerie', null, 'Nautilus', '18k White Gold', 35.2, 'automatic', '26-330 S C', 60, 'Emerald Diamond Pave', '18k White Gold', 25000000, 28000000, 3.0, null, 'https://www.patek.com/en/collection/nautilus/7118-1453G-001'),
  ('b0000000-0000-0000-0000-000000000002', '7010/1G-013', 'Nautilus Ladies', null, 'Nautilus', '18k White Gold', 32.0, 'quartz', 'E 23-250 S C', 60, 'Azure Blue', '18k White Gold', 5998000, 6500000, 1.0, null, 'https://www.patek.com/en/collection/nautilus/7010-1G-013'),
  ('b0000000-0000-0000-0000-000000000002', '7010G-013', 'Nautilus Ladies', null, 'Nautilus', '18k White Gold', 32.0, 'quartz', 'E 23-250 S C', 60, 'Azure Blue', 'Leather', 4230000, 4500000, 0.8, null, 'https://www.patek.com/en/collection/nautilus/7010G-013'),
  -- AQUANAUT (Current Production)
  ('b0000000-0000-0000-0000-000000000002', '5167A-001', 'Aquanaut', null, 'Aquanaut', 'Stainless Steel', 40.8, 'automatic', '26-330 S C', 120, 'Black Embossed', 'Composite', 2445000, 5500000, 0.8, null, 'https://www.patek.com/en/collection/aquanaut/5167A-001'),
  ('b0000000-0000-0000-0000-000000000002', '5168G-001', 'Aquanaut', null, 'Aquanaut', '18k White Gold', 42.2, 'automatic', '26-330 S C', 120, 'Blue Embossed', 'Composite', 4910000, 8500000, 1.5, null, 'https://www.patek.com/en/collection/aquanaut/5168G-001'),
  ('b0000000-0000-0000-0000-000000000002', '5168G-010', 'Aquanaut', 'Khaki Green Aquanaut', 'Aquanaut', '18k White Gold', 42.2, 'automatic', '26-330 S C', 120, 'Khaki Green Embossed', 'Composite', 4910000, 9000000, 2.0, null, 'https://www.patek.com/en/collection/aquanaut/5168G-010'),
  ('b0000000-0000-0000-0000-000000000002', '5164G-001', 'Aquanaut Travel Time', null, 'Aquanaut', '18k White Gold', 40.8, 'automatic', '26-330 S C FUS', 120, 'Blue-Gray Embossed', 'Composite', 5650000, 8000000, 1.8, null, 'https://www.patek.com/en/collection/aquanaut/5164G-001'),
  ('b0000000-0000-0000-0000-000000000002', '5968A-001', 'Aquanaut Chronograph', null, 'Aquanaut', 'Stainless Steel', 42.2, 'automatic', 'CH 28-520 C FUS', 120, 'Black/Orange', 'Composite', 5090000, 10000000, 2.5, null, 'https://www.patek.com/en/collection/aquanaut/5968A-001'),
  ('b0000000-0000-0000-0000-000000000002', '5968G-001', 'Aquanaut Chronograph', null, 'Aquanaut', '18k White Gold', 42.2, 'automatic', 'CH 28-520 C FUS', 120, 'Blue Gradient', 'Composite', 7230000, 9500000, 1.5, null, 'https://www.patek.com/en/collection/aquanaut/5968G-001'),
  ('b0000000-0000-0000-0000-000000000002', '5968G-010', 'Aquanaut Chronograph', null, 'Aquanaut', '18k White Gold', 42.2, 'automatic', 'CH 28-520 C FUS', 120, 'Khaki Green', 'Composite', 7230000, 9000000, 1.2, null, 'https://www.patek.com/en/collection/aquanaut/5968G-010'),
  ('b0000000-0000-0000-0000-000000000002', '5261R-001', 'Aquanaut Luce Annual Calendar', null, 'Aquanaut', '18k Rose Gold', 38.8, 'automatic', '26-330 S QA LU', 120, 'Blue-Gray Embossed', 'Composite', 6186000, 16500000, 3.0, null, 'https://www.patek.com/en/collection/aquanaut/5261R-001'),
  ('b0000000-0000-0000-0000-000000000002', '5267/200A-001', 'Aquanaut Luce', null, 'Aquanaut', 'Stainless Steel', 38.8, 'quartz', 'E 23-250 S C', 120, 'Black Embossed', 'Composite', 2688800, 5200000, 1.8, null, 'https://www.patek.com/en/collection/aquanaut/5267-200A-001'),
  ('b0000000-0000-0000-0000-000000000002', '5267/200A-011', 'Aquanaut Luce', null, 'Aquanaut', 'Stainless Steel', 38.8, 'quartz', 'E 23-250 S C', 120, 'Olive Green Embossed', 'Composite', 2688800, 5000000, 1.5, null, 'https://www.patek.com/en/collection/aquanaut/5267-200A-011'),
  ('b0000000-0000-0000-0000-000000000002', '5267/200A-010', 'Aquanaut Luce', null, 'Aquanaut', 'Stainless Steel', 38.8, 'quartz', 'E 23-250 S C', 120, 'Gray Embossed', 'Composite', 2688800, 4800000, 1.2, null, 'https://www.patek.com/en/collection/aquanaut/5267-200A-010'),
  ('b0000000-0000-0000-0000-000000000002', '5268/200R-001', 'Aquanaut Luce Automatic', null, 'Aquanaut', '18k Rose Gold', 38.8, 'automatic', '26-330 S C', 120, 'Brown Embossed', 'Composite', 4910000, 6500000, 1.0, null, 'https://www.patek.com/en/collection/aquanaut/5268-200R-001'),
  ('b0000000-0000-0000-0000-000000000002', '5269/200R-001', 'Aquanaut Luce Travel Time', null, 'Aquanaut', '18k Rose Gold', 38.8, 'automatic', '26-330 S C FUS', 120, 'Brown-Black Embossed', 'Composite', 6210000, 8000000, 1.5, null, 'https://www.patek.com/en/collection/aquanaut/5269-200R-001'),
  -- CUBITUS (Current Production)
  ('b0000000-0000-0000-0000-000000000002', '5821/1A-001', 'Cubitus', null, 'Cubitus', 'Stainless Steel', 45.0, 'automatic', '26-330 S C', 30, 'Olive Green', 'Stainless Steel', 4124300, 9000000, 4.5, null, 'https://www.patek.com/en/collection/cubitus/5821-1A-001'),
  ('b0000000-0000-0000-0000-000000000002', '5821/1AR-001', 'Cubitus', null, 'Cubitus', 'Stainless Steel / 18k Rose Gold', 45.0, 'automatic', '26-330 S C', 30, 'Gray Gradient', 'Stainless Steel / 18k Rose Gold', 6127600, 11000000, 4.0, null, 'https://www.patek.com/en/collection/cubitus/5821-1AR-001'),
  ('b0000000-0000-0000-0000-000000000002', '5822P-001', 'Cubitus Grand Date Moon Phase', null, 'Cubitus', 'Platinum', 45.0, 'automatic', '240 PS CI J LU', 30, 'Charcoal Blue', 'Platinum', 8837800, 14000000, 3.8, null, 'https://www.patek.com/en/collection/cubitus/5822P-001'),
  ('b0000000-0000-0000-0000-000000000002', '7128/1R-001', 'Cubitus Ladies', null, 'Cubitus', '18k Rose Gold', 40.0, 'automatic', '26-330 S C', 30, 'Silvered', '18k Rose Gold', 6500000, 8000000, 3.0, null, 'https://www.patek.com/en/collection/cubitus/7128-1R-001'),
  -- CALATRAVA (Current Production)
  ('b0000000-0000-0000-0000-000000000002', '5227G-010', 'Calatrava', null, 'Calatrava', '18k White Gold', 39.0, 'automatic', '26-330 S C', 30, 'Charcoal Black', 'Leather', 4726000, 3800000, -0.5, null, 'https://www.patek.com/en/collection/calatrava/5227G-010'),
  ('b0000000-0000-0000-0000-000000000002', '5227G-001', 'Calatrava', null, 'Calatrava', '18k White Gold', 39.0, 'automatic', '26-330 S C', 30, 'Blue', 'Leather', 4726000, 3600000, -0.3, null, 'https://www.patek.com/en/collection/calatrava/5227G-001'),
  ('b0000000-0000-0000-0000-000000000002', '5227R-001', 'Calatrava', null, 'Calatrava', '18k Rose Gold', 39.0, 'automatic', '26-330 S C', 30, 'Silver', 'Leather', 4726000, 3500000, -0.4, null, 'https://www.patek.com/en/collection/calatrava/5227R-001'),
  ('b0000000-0000-0000-0000-000000000002', '5227J-001', 'Calatrava', null, 'Calatrava', '18k Yellow Gold', 39.0, 'automatic', '26-330 S C', 30, 'Ivory Lacquered', 'Leather', 4726000, 3300000, -0.2, null, 'https://www.patek.com/en/collection/calatrava/5227J-001'),
  ('b0000000-0000-0000-0000-000000000002', '6119G-001', 'Calatrava', null, 'Calatrava', '18k White Gold', 39.0, 'manual', '30-255 PS', 30, 'Charcoal Gray', 'Leather', 3751000, 4200000, 1.8, null, 'https://www.patek.com/en/collection/calatrava/6119G-001'),
  ('b0000000-0000-0000-0000-000000000002', '6119R-001', 'Calatrava', null, 'Calatrava', '18k Rose Gold', 39.0, 'manual', '30-255 PS', 30, 'Silvery Opaline', 'Leather', 3751000, 4000000, 1.5, null, 'https://www.patek.com/en/collection/calatrava/6119R-001'),
  ('b0000000-0000-0000-0000-000000000002', '5196G-001', 'Calatrava', null, 'Calatrava', '18k White Gold', 37.0, 'manual', '215 PS', 30, 'White', 'Leather', 2930000, 2500000, -0.3, null, 'https://www.patek.com/en/collection/calatrava/5196G-001'),
  ('b0000000-0000-0000-0000-000000000002', '5196R-001', 'Calatrava', null, 'Calatrava', '18k Rose Gold', 37.0, 'manual', '215 PS', 30, 'Silver', 'Leather', 2930000, 2400000, -0.5, null, 'https://www.patek.com/en/collection/calatrava/5196R-001'),
  ('b0000000-0000-0000-0000-000000000002', '5226G-001', 'Calatrava', null, 'Calatrava', '18k White Gold', 40.0, 'automatic', '26-330 S C', 30, 'Charcoal Gray Textured', 'Leather', 4726000, 4000000, 0.5, null, 'https://www.patek.com/en/collection/calatrava/5226G-001'),
  ('b0000000-0000-0000-0000-000000000002', '6007G-001', 'Calatrava', null, 'Calatrava', '18k White Gold', 40.0, 'automatic', '26-330 S C', 30, 'Blue-Black', 'Leather', 4438500, 4200000, 0.3, null, 'https://www.patek.com/en/collection/calatrava/6007G-001'),
  ('b0000000-0000-0000-0000-000000000002', '6196P-001', 'Calatrava', null, 'Calatrava', 'Platinum', 38.0, 'manual', '30-255 PS', 30, 'Opaline Rose-Gilt', 'Leather', 4950000, 5200000, 1.5, null, 'https://www.patek.com/en/collection/calatrava/6196P-001'),
  -- COMPLICATIONS (Current Production)
  ('b0000000-0000-0000-0000-000000000002', '5205G-013', 'Annual Calendar Moon Phase', null, 'Complications', '18k White Gold', 40.0, 'automatic', '324 S QA LU 24H/206', 30, 'Blue Sunburst', 'Leather', 6726500, 5500000, -0.5, null, 'https://www.patek.com/en/collection/complications/5205G-013'),
  ('b0000000-0000-0000-0000-000000000002', '5205R-011', 'Annual Calendar Moon Phase', null, 'Complications', '18k Rose Gold', 40.0, 'automatic', '324 S QA LU 24H/206', 30, 'Charcoal Gray', 'Leather', 6726500, 5800000, 0.5, null, 'https://www.patek.com/en/collection/complications/5205R-011'),
  ('b0000000-0000-0000-0000-000000000002', '5905/1A-001', 'Annual Calendar Flyback Chronograph', null, 'Complications', 'Stainless Steel', 42.0, 'automatic', 'CH 28-520 QA 24H', 30, 'Olive Green', 'Stainless Steel', 7838600, 10000000, 2.5, null, 'https://www.patek.com/en/collection/complications/5905-1A-001'),
  ('b0000000-0000-0000-0000-000000000002', '5905R-001', 'Annual Calendar Flyback Chronograph', null, 'Complications', '18k Rose Gold', 42.0, 'automatic', 'CH 28-520 QA 24H', 30, 'Brown', 'Leather', 8368300, 9500000, 1.8, null, 'https://www.patek.com/en/collection/complications/5905R-001'),
  ('b0000000-0000-0000-0000-000000000002', '5905R-010', 'Annual Calendar Flyback Chronograph', null, 'Complications', '18k Rose Gold', 42.0, 'automatic', 'CH 28-520 QA 24H', 30, 'Ebony Black', 'Leather', 8368300, 9200000, 1.2, null, 'https://www.patek.com/en/collection/complications/5905R-010'),
  ('b0000000-0000-0000-0000-000000000002', '5905P-001', 'Annual Calendar Flyback Chronograph', null, 'Complications', 'Platinum', 42.0, 'automatic', 'CH 28-520 QA 24H', 30, 'Blue', 'Leather', 8731000, 10500000, 1.5, null, 'https://www.patek.com/en/collection/complications/5905P-001'),
  ('b0000000-0000-0000-0000-000000000002', '5212A-001', 'Calatrava Weekly Calendar', null, 'Complications', 'Stainless Steel', 40.0, 'automatic', '26-330 S C J SE', 30, 'Blue', 'Leather', 4313500, 5000000, 1.0, null, 'https://www.patek.com/en/collection/complications/5212A-001'),
  ('b0000000-0000-0000-0000-000000000002', '5328G-001', 'Calatrava 8 Days', null, 'Complications', '18k White Gold', 41.0, 'manual', '31-505 8J PS IRM C J', 30, 'Slate', 'Leather', 7070000, 7500000, 1.5, null, 'https://www.patek.com/en/collection/complications/5328G-001'),
  ('b0000000-0000-0000-0000-000000000002', '5230P-001', 'World Time', null, 'Complications', 'Platinum', 38.5, 'automatic', '240 HU', 30, 'Blue', 'Leather', 7333000, 6500000, -0.5, null, 'https://www.patek.com/en/collection/complications/5230P-001'),
  ('b0000000-0000-0000-0000-000000000002', '5230R-012', 'World Time', null, 'Complications', '18k Rose Gold', 38.5, 'automatic', '240 HU', 30, 'Charcoal Gray', 'Leather', 5675000, 4500000, -0.8, null, 'https://www.patek.com/en/collection/complications/5230R-012'),
  ('b0000000-0000-0000-0000-000000000002', '5230G-014', 'World Time', null, 'Complications', '18k White Gold', 38.5, 'automatic', '240 HU', 30, 'Blue Lacquered', 'Leather', 5675000, 4800000, -0.3, null, 'https://www.patek.com/en/collection/complications/5230G-014'),
  ('b0000000-0000-0000-0000-000000000002', '5231J-001', 'World Time', null, 'Complications', '18k Yellow Gold', 38.5, 'automatic', '240 HU', 30, 'Cloisonne Enamel', 'Leather', 11750700, 11000000, 0.5, null, 'https://www.patek.com/en/collection/complications/5231J-001'),
  ('b0000000-0000-0000-0000-000000000002', '5231G-001', 'World Time', null, 'Complications', '18k White Gold', 38.5, 'automatic', '240 HU', 30, 'Cloisonne Enamel', 'Leather', 11750700, 10500000, 0.3, null, 'https://www.patek.com/en/collection/complications/5231G-001'),
  ('b0000000-0000-0000-0000-000000000002', '5935A-001', 'World Time Flyback Chronograph', null, 'Complications', 'Stainless Steel', 41.5, 'automatic', 'CH 28-520 HU', 30, 'Rose Opaline', 'Leather', 7164300, 6000000, -1.0, null, 'https://www.patek.com/en/collection/complications/5935A-001'),
  ('b0000000-0000-0000-0000-000000000002', '5172G-001', 'Chronograph', null, 'Complications', '18k White Gold', 41.0, 'manual', 'CH 29-535 PS', 30, 'Blue', 'Leather', 10626900, 9500000, -0.5, null, 'https://www.patek.com/en/collection/complications/5172G-001'),
  ('b0000000-0000-0000-0000-000000000002', '5172G-010', 'Chronograph', null, 'Complications', '18k White Gold', 41.0, 'manual', 'CH 29-535 PS', 30, 'Rose Gold-Toned', 'Leather', 10626900, 9000000, -0.3, null, 'https://www.patek.com/en/collection/complications/5172G-010'),
  ('b0000000-0000-0000-0000-000000000002', '5524G-010', 'Calatrava Pilot Travel Time', null, 'Complications', '18k White Gold', 42.0, 'automatic', '26-330 S C FUS', 60, 'Ivory Lacquered', 'Leather', 6092000, 5500000, 0.5, null, 'https://www.patek.com/en/collection/complications/5524G-010'),
  ('b0000000-0000-0000-0000-000000000002', '5524R-001', 'Calatrava Pilot Travel Time', null, 'Complications', '18k Rose Gold', 42.0, 'automatic', '26-330 S C FUS', 60, 'Brown', 'Leather', 6092000, 5000000, -0.5, null, 'https://www.patek.com/en/collection/complications/5524R-001'),
  ('b0000000-0000-0000-0000-000000000002', '7130G-016', 'Ladies World Time', null, 'Complications', '18k White Gold', 36.0, 'automatic', '240 HU', 30, 'Blue Lacquered', 'Leather', 6139000, 3800000, -1.5, null, 'https://www.patek.com/en/collection/complications/7130G-016'),
  ('b0000000-0000-0000-0000-000000000002', '4947/1A-001', 'Ladies Annual Calendar Moon Phase', null, 'Complications', 'Stainless Steel', 38.0, 'automatic', '324 S QA LU 24H/303', 30, 'Blue Sunburst', 'Stainless Steel', 5100000, 6000000, 1.5, null, 'https://www.patek.com/en/collection/complications/4947-1A-001'),
  ('b0000000-0000-0000-0000-000000000002', '4947G-010', 'Ladies Annual Calendar Moon Phase', null, 'Complications', '18k White Gold', 38.0, 'automatic', '324 S QA LU 24H/303', 30, 'Charcoal Gray', 'Leather', 6139000, 5500000, 0.8, null, 'https://www.patek.com/en/collection/complications/4947G-010'),
  ('b0000000-0000-0000-0000-000000000002', '4947R-001', 'Ladies Annual Calendar Moon Phase', null, 'Complications', '18k Rose Gold', 38.0, 'automatic', '324 S QA LU 24H/303', 30, 'Cream', 'Leather', 6139000, 5200000, 0.5, null, 'https://www.patek.com/en/collection/complications/4947R-001'),
  ('b0000000-0000-0000-0000-000000000002', '4948G-010', 'Ladies Annual Calendar', null, 'Complications', '18k White Gold', 38.0, 'automatic', '324 S QA LU 24H/303', 30, 'Blue', 'Leather', 9715000, 8500000, 0.3, null, 'https://www.patek.com/en/collection/complications/4948G-010'),
  ('b0000000-0000-0000-0000-000000000002', '5930G-001', 'World Time Chronograph', null, 'Complications', '18k White Gold', 39.5, 'automatic', 'CH 28-520 HU', 30, 'Blue', 'Leather', 9650000, 8000000, -0.5, null, 'https://www.patek.com/en/collection/complications/5930G-001'),
  ('b0000000-0000-0000-0000-000000000002', '5930P-001', 'World Time Chronograph', null, 'Complications', 'Platinum', 39.5, 'automatic', 'CH 28-520 HU', 30, 'Blue', 'Leather', 12945700, 11000000, -0.3, null, 'https://www.patek.com/en/collection/complications/5930P-001'),
  -- GRAND COMPLICATIONS (Current Production)
  ('b0000000-0000-0000-0000-000000000002', '5327G-001', 'Perpetual Calendar', null, 'Grand Complications', '18k White Gold', 39.0, 'automatic', '240 Q', 30, 'Royal Blue Sunburst', 'Leather', 11470900, 9500000, -0.5, null, 'https://www.patek.com/en/collection/grand-complications/5327G-001'),
  ('b0000000-0000-0000-0000-000000000002', '5327R-001', 'Perpetual Calendar', null, 'Grand Complications', '18k Rose Gold', 39.0, 'automatic', '240 Q', 30, 'Ivory Lacquered', 'Leather', 11470900, 9000000, -0.8, null, 'https://www.patek.com/en/collection/grand-complications/5327R-001'),
  ('b0000000-0000-0000-0000-000000000002', '5320G-001', 'Perpetual Calendar', null, 'Grand Complications', '18k White Gold', 40.0, 'automatic', '324 S Q', 30, 'Cream', 'Leather', 9650000, 10500000, 1.2, null, 'https://www.patek.com/en/collection/grand-complications/5320G-001'),
  ('b0000000-0000-0000-0000-000000000002', '5236P-001', 'In-Line Perpetual Calendar', null, 'Grand Complications', 'Platinum', 41.3, 'automatic', '31-260 PS QL', 30, 'Black Gradient', 'Leather', 16707900, 15000000, -0.5, null, 'https://www.patek.com/en/collection/grand-complications/5236P-001'),
  ('b0000000-0000-0000-0000-000000000002', '6159G-001', 'Perpetual Calendar Retrograde Date', null, 'Grand Complications', '18k White Gold', 39.5, 'automatic', '26-330 S QR', 30, 'Gray Metallized', 'Leather', 11784000, 13500000, 3.0, null, 'https://www.patek.com/en/collection/grand-complications/6159G-001'),
  ('b0000000-0000-0000-0000-000000000002', '5270/1R-001', 'Perpetual Calendar Chronograph', null, 'Grand Complications', '18k Rose Gold', 41.0, 'manual', 'CH 29-535 PS Q', 30, 'Ebony Black', '18k Rose Gold', 27900000, 25000000, 1.5, null, 'https://www.patek.com/en/collection/grand-complications/5270-1R-001'),
  ('b0000000-0000-0000-0000-000000000002', '5270P-001', 'Perpetual Calendar Chronograph', null, 'Grand Complications', 'Platinum', 41.0, 'manual', 'CH 29-535 PS Q', 30, 'Black', 'Leather', 24256100, 21000000, -0.5, null, 'https://www.patek.com/en/collection/grand-complications/5270P-001'),
  ('b0000000-0000-0000-0000-000000000002', '5270P-014', 'Perpetual Calendar Chronograph', null, 'Grand Complications', 'Platinum', 41.0, 'manual', 'CH 29-535 PS Q', 30, 'Green Sunburst', 'Leather', 24256100, 22000000, 1.0, null, 'https://www.patek.com/en/collection/grand-complications/5270P-014'),
  ('b0000000-0000-0000-0000-000000000002', '5270G-019', 'Perpetual Calendar Chronograph', null, 'Grand Complications', '18k White Gold', 41.0, 'manual', 'CH 29-535 PS Q', 30, 'Blue Sunburst', 'Leather', 21968000, 20000000, 0.5, null, 'https://www.patek.com/en/collection/grand-complications/5270G-019'),
  ('b0000000-0000-0000-0000-000000000002', '5370R-001', 'Split-Seconds Chronograph', null, 'Grand Complications', '18k Rose Gold', 41.0, 'manual', 'CHR 29-535 PS', 30, 'Grand Feu Brown Enamel', 'Leather', 28870000, 32000000, 4.0, null, 'https://www.patek.com/en/collection/grand-complications/5370R-001'),
  ('b0000000-0000-0000-0000-000000000002', '5078G-001', 'Minute Repeater', null, 'Grand Complications', '18k White Gold', 38.0, 'automatic', 'R 27 PS', 30, 'Black Enamel', 'Leather', 48000000, 44000000, 1.0, null, 'https://www.patek.com/en/collection/grand-complications/5078G-001'),
  ('b0000000-0000-0000-0000-000000000002', '5078G-010', 'Minute Repeater', null, 'Grand Complications', '18k White Gold', 38.0, 'automatic', 'R 27 PS', 30, 'Blue Enamel', 'Leather', 48000000, 48500000, 1.5, null, 'https://www.patek.com/en/collection/grand-complications/5078G-010'),
  ('b0000000-0000-0000-0000-000000000002', '5303R-001', 'Minute Repeater Tourbillon', null, 'Grand Complications', '18k Rose Gold', 42.0, 'manual', 'R TO 27 PS', 30, 'Openworked', 'Leather', 75000000, 85000000, 3.5, null, 'https://www.patek.com/en/collection/grand-complications/5303R-001'),
  ('b0000000-0000-0000-0000-000000000002', '5304/301R-001', 'Minute Repeater Tourbillon Perpetual Calendar', null, 'Grand Complications', '18k Rose Gold', 42.0, 'automatic', 'R TO 27 QR SID LU CL', 30, 'Openworked', 'Leather', 90000000, 95000000, 2.5, null, 'https://www.patek.com/en/collection/grand-complications/5304-301R-001'),
  ('b0000000-0000-0000-0000-000000000002', '5374G-001', 'Minute Repeater Perpetual Calendar', null, 'Grand Complications', '18k White Gold', 38.0, 'automatic', 'R 27 Q', 30, 'Grand Feu Blue Enamel', 'Leather', 65000000, 60000000, 0.8, null, 'https://www.patek.com/en/collection/grand-complications/5374G-001'),
  ('b0000000-0000-0000-0000-000000000002', '5374/300P-001', 'Minute Repeater Perpetual Calendar', null, 'Grand Complications', 'Platinum', 38.0, 'automatic', 'R 27 Q', 30, 'Grand Feu Blue Enamel', 'Leather', 141321300, 130000000, 1.0, null, 'https://www.patek.com/en/collection/grand-complications/5374-300P-001'),
  ('b0000000-0000-0000-0000-000000000002', '5308G-001', 'Quadruple Complication', null, 'Grand Complications', '18k White Gold', 42.0, 'automatic', 'R CHR 27 PS QI', 30, 'Ice Blue Sunburst', 'Leather', 123727000, 140000000, 5.0, null, 'https://www.patek.com/en/collection/grand-complications/5308G-001'),
  -- GOLDEN ELLIPSE (Current Production)
  ('b0000000-0000-0000-0000-000000000002', '5738R-001', 'Golden Ellipse', null, 'Golden Ellipse', '18k Rose Gold', 34.5, 'automatic', '240', 30, 'Ebony Black Sunburst', 'Leather', 3690000, 3500000, -0.3, null, 'https://www.patek.com/en/collection/golden-ellipse/5738R-001'),
  ('b0000000-0000-0000-0000-000000000002', '5738/1R-001', 'Golden Ellipse', null, 'Golden Ellipse', '18k Rose Gold', 34.5, 'automatic', '240', 30, 'Ebony Black Sunburst', '18k Rose Gold Mesh', 6500000, 7000000, 1.5, null, 'https://www.patek.com/en/collection/golden-ellipse/5738-1R-001'),
  ('b0000000-0000-0000-0000-000000000002', '5738P-001', 'Golden Ellipse', null, 'Golden Ellipse', 'Platinum', 34.5, 'automatic', '240', 30, 'Blue Sunburst', 'Leather', 4250000, 4500000, 0.8, null, 'https://www.patek.com/en/collection/golden-ellipse/5738P-001'),
  -- TWENTY~4 (Current Production)
  ('b0000000-0000-0000-0000-000000000002', '4910/1200A-001', 'Twenty~4', null, 'Twenty~4', 'Stainless Steel', 25.1, 'quartz', 'E 15', 30, 'Blue Sunburst', 'Stainless Steel', 1800500, 2200000, 0.5, null, 'https://www.patek.com/en/collection/twenty4/4910-1200A-001'),
  ('b0000000-0000-0000-0000-000000000002', '4910/1200A-010', 'Twenty~4', null, 'Twenty~4', 'Stainless Steel', 25.1, 'quartz', 'E 15', 30, 'Gray Sunburst', 'Stainless Steel', 1800500, 2100000, 0.3, null, 'https://www.patek.com/en/collection/twenty4/4910-1200A-010'),
  ('b0000000-0000-0000-0000-000000000002', '4910/1200A-011', 'Twenty~4', null, 'Twenty~4', 'Stainless Steel', 25.1, 'quartz', 'E 15', 30, 'Olive Green', 'Stainless Steel', 1597000, 2000000, 0.8, null, 'https://www.patek.com/en/collection/twenty4/4910-1200A-011'),
  ('b0000000-0000-0000-0000-000000000002', '4910/1201R-001', 'Twenty~4', null, 'Twenty~4', '18k Rose Gold', 25.1, 'quartz', 'E 15', 30, 'Silvery Sunburst', '18k Rose Gold', 5300000, 5500000, 0.5, null, 'https://www.patek.com/en/collection/twenty4/4910-1201R-001'),
  ('b0000000-0000-0000-0000-000000000002', '7300/1200A-001', 'Twenty~4 Automatic', null, 'Twenty~4', 'Stainless Steel', 36.0, 'automatic', '324 S C', 30, 'Blue Sunburst', 'Stainless Steel', 3288400, 3500000, 0.5, null, 'https://www.patek.com/en/collection/twenty4/7300-1200A-001'),
  ('b0000000-0000-0000-0000-000000000002', '7300/1200A-010', 'Twenty~4 Automatic', null, 'Twenty~4', 'Stainless Steel', 36.0, 'automatic', '324 S C', 30, 'Gray Sunburst', 'Stainless Steel', 3288400, 3200000, 0.3, null, 'https://www.patek.com/en/collection/twenty4/7300-1200A-010'),
  ('b0000000-0000-0000-0000-000000000002', '7300/1200A-011', 'Twenty~4 Automatic', null, 'Twenty~4', 'Stainless Steel', 36.0, 'automatic', '324 S C', 30, 'Olive Green', 'Stainless Steel', 3288400, 3400000, 0.8, null, 'https://www.patek.com/en/collection/twenty4/7300-1200A-011'),
  ('b0000000-0000-0000-0000-000000000002', '7300/1200R-010', 'Twenty~4 Automatic', null, 'Twenty~4', '18k Rose Gold', 36.0, 'automatic', '324 S C', 30, 'Brown Sunburst', '18k Rose Gold', 5964000, 5500000, -0.3, null, 'https://www.patek.com/en/collection/twenty4/7300-1200R-010'),
  ('b0000000-0000-0000-0000-000000000002', '7300/1200R-001', 'Twenty~4 Automatic', null, 'Twenty~4', '18k Rose Gold', 36.0, 'automatic', '324 S C', 30, 'Gray Sunburst', '18k Rose Gold', 5964000, 5200000, -0.5, null, 'https://www.patek.com/en/collection/twenty4/7300-1200R-001'),
  ('b0000000-0000-0000-0000-000000000002', '7340/1R-001', 'Twenty~4 Perpetual Calendar', null, 'Twenty~4', '18k Rose Gold', 36.0, 'automatic', '240 Q', 30, 'Silvered Shantung', '18k Rose Gold', 12019000, 14000000, 3.5, null, 'https://www.patek.com/en/collection/twenty4/7340-1R-001'),
  ('b0000000-0000-0000-0000-000000000002', '7340/1R-010', 'Twenty~4 Perpetual Calendar', null, 'Twenty~4', '18k Rose Gold', 36.0, 'automatic', '240 Q', 30, 'Olive Green Sunburst', '18k Rose Gold', 12019000, 14500000, 4.0, null, 'https://www.patek.com/en/collection/twenty4/7340-1R-010'),
  -- NAUTILUS (Additional Current Production)
  ('b0000000-0000-0000-0000-000000000002', '7118/1R-001', 'Nautilus Ladies', null, 'Nautilus', '18k Rose Gold', 35.2, 'automatic', '26-330 S C', 60, 'Silver Opaline', '18k Rose Gold', 6826500, 8500000, 1.5, null, 'https://www.patek.com/en/collection/nautilus/7118-1R-001'),
  ('b0000000-0000-0000-0000-000000000002', '7118/1R-010', 'Nautilus Ladies', null, 'Nautilus', '18k Rose Gold', 35.2, 'automatic', '26-330 S C', 60, 'Golden Brown Opaline', '18k Rose Gold', 6826500, 8200000, 1.2, null, 'https://www.patek.com/en/collection/nautilus/7118-1R-010'),
  ('b0000000-0000-0000-0000-000000000002', '7118/1300R-001', 'Nautilus Ladies Joaillerie', null, 'Nautilus', '18k Rose Gold', 35.2, 'automatic', '26-330 S C', 60, 'Brown Opaline Diamond Bezel', '18k Rose Gold', 11015000, 12000000, 2.0, null, 'https://www.patek.com/en/collection/nautilus/7118-1300R-001'),
  ('b0000000-0000-0000-0000-000000000002', '7010/1R-013', 'Nautilus Ladies', null, 'Nautilus', '18k Rose Gold', 32.0, 'quartz', 'E 23-250 S C', 60, 'Azure Blue', '18k Rose Gold', 4663500, 5000000, 1.0, null, 'https://www.patek.com/en/collection/nautilus/7010-1R-013'),
  -- CUBITUS (Additional Current Production - 2025 new 40mm)
  ('b0000000-0000-0000-0000-000000000002', '7128/1G-001', 'Cubitus', null, 'Cubitus', '18k White Gold', 40.0, 'automatic', '26-330 S C', 30, 'Blue-Gray Sunburst', '18k White Gold', 8394000, 10000000, 3.5, null, 'https://www.patek.com/en/collection/cubitus/7128-1G-001'),
  -- AQUANAUT (Additional Current Production)
  ('b0000000-0000-0000-0000-000000000002', '5268/200R-010', 'Aquanaut Luce Automatic', null, 'Aquanaut', '18k Rose Gold', 38.8, 'automatic', '26-330 S C', 120, 'Taupe Embossed', 'Composite', 4910000, 6200000, 1.0, null, 'https://www.patek.com/en/collection/aquanaut/5268-200R-010'),
  -- CALATRAVA (Additional Current Production - 2025 new)
  ('b0000000-0000-0000-0000-000000000002', '5224R-001', 'Calatrava Travel Time', null, 'Calatrava', '18k Rose Gold', 42.0, 'automatic', '26-330 S C FUS', 30, 'Blue Sunburst', 'Leather', 4799000, 5200000, 2.0, null, 'https://www.patek.com/en/collection/calatrava/5224R-001'),
  -- COMPLICATIONS (Additional Current Production)
  ('b0000000-0000-0000-0000-000000000002', '5326G-001', 'Annual Calendar Travel Time', null, 'Complications', '18k White Gold', 41.0, 'automatic', '31-260 PS QA LU FUS 24H', 30, 'Anthracite Textured', 'Leather', 9202300, 8500000, 0.5, null, 'https://www.patek.com/en/collection/complications/5326G-001'),
  ('b0000000-0000-0000-0000-000000000002', '4946R-001', 'Ladies Annual Calendar', null, 'Complications', '18k Rose Gold', 36.0, 'automatic', '324 S QA LU 24H/303', 30, 'Silvery White', 'Leather', 6114100, 5500000, 0.3, null, 'https://www.patek.com/en/collection/complications/4946R-001'),
  ('b0000000-0000-0000-0000-000000000002', '7130R-014', 'Ladies World Time', null, 'Complications', '18k Rose Gold', 36.0, 'automatic', '240 HU', 30, 'Charcoal Gray', 'Leather', 6139000, 4000000, -1.0, null, 'https://www.patek.com/en/collection/complications/7130R-014'),
  -- GRAND COMPLICATIONS (Additional Current Production)
  ('b0000000-0000-0000-0000-000000000002', '5270J-001', 'Perpetual Calendar Chronograph', null, 'Grand Complications', '18k Yellow Gold', 41.0, 'manual', 'CH 29-535 PS Q', 30, 'Silvery Opaline', 'Leather', 24027800, 22000000, 0.5, null, 'https://www.patek.com/en/collection/grand-complications/5270J-001'),
  ('b0000000-0000-0000-0000-000000000002', '5204G-001', 'Split-Seconds Chronograph Perpetual Calendar', null, 'Grand Complications', '18k White Gold', 40.0, 'manual', 'CHR 29-535 PS Q', 30, 'Olive Green Sunburst', 'Leather', 38097100, 35000000, 1.5, null, 'https://www.patek.com/en/collection/grand-complications/5204G-001'),
  ('b0000000-0000-0000-0000-000000000002', '5204P-011', 'Split-Seconds Chronograph Perpetual Calendar', null, 'Grand Complications', 'Platinum', 40.0, 'manual', 'CHR 29-535 PS Q', 30, 'Black', 'Leather', 34760000, 32000000, 0.8, null, 'https://www.patek.com/en/collection/grand-complications/5204P-011'),
  ('b0000000-0000-0000-0000-000000000002', '7140R-001', 'Ladies First Perpetual Calendar', null, 'Grand Complications', '18k Rose Gold', 35.1, 'automatic', '240 Q', 30, 'Silver Opaline', 'Leather', 12300000, 11000000, -0.5, null, 'https://www.patek.com/en/collection/grand-complications/7140R-001'),
  -- GOLDEN ELLIPSE (Additional Current Production)
  ('b0000000-0000-0000-0000-000000000002', '5738/51G-001', 'Golden Ellipse Haute Joaillerie', null, 'Golden Ellipse', '18k White Gold', 34.5, 'automatic', '240', 30, 'Diamond Pave', '18k White Gold', 12500000, 14000000, 2.0, null, 'https://www.patek.com/en/collection/golden-ellipse/5738-51G-001'),
  -- GONDOLO (Current Production)
  ('b0000000-0000-0000-0000-000000000002', '5200G-001', 'Gondolo 8 Days Day-Date', null, 'Gondolo', '18k White Gold', 32.4, 'manual', '28-20 REC 8J PS IRM C J', 30, 'Blue Sunburst', 'Leather', 7600000, 7000000, -0.5, null, 'https://www.patek.com/en/collection/gondolo/5200G-001'),
  ('b0000000-0000-0000-0000-000000000002', '5200G-010', 'Gondolo 8 Days Day-Date', null, 'Gondolo', '18k White Gold', 32.4, 'manual', '28-20 REC 8J PS IRM C J', 30, 'Silvery Opaline', 'Leather', 7600000, 6800000, -0.3, null, 'https://www.patek.com/en/collection/gondolo/5200G-010'),
  ('b0000000-0000-0000-0000-000000000002', '7042/100G-010', 'Gondolo Haute Joaillerie', null, 'Gondolo', '18k White Gold', 31.0, 'manual', '215', 30, 'Diamond Pave', 'Leather', 15000000, 16000000, 1.0, null, 'https://www.patek.com/en/collection/gondolo/7042-100G-010'),
  ('b0000000-0000-0000-0000-000000000002', '7042/100R-010', 'Gondolo Haute Joaillerie', null, 'Gondolo', '18k Rose Gold', 31.0, 'manual', '215', 30, 'Diamond Pearl', 'Leather', 15000000, 16500000, 1.2, null, 'https://www.patek.com/en/collection/gondolo/7042-100R-010'),
  ('b0000000-0000-0000-0000-000000000002', '7099R-001', 'Gondolo Ladies', null, 'Gondolo', '18k Rose Gold', 26.3, 'quartz', 'E 15', 30, 'Gray', 'Leather', 3200000, 3000000, -0.3, null, 'https://www.patek.com/en/collection/gondolo/7099R-001'),
  -- DISCONTINUED LEGENDS (Market Tracking)
  ('b0000000-0000-0000-0000-000000000002', '5711/1A-010', 'Nautilus', 'The Nautilus', 'Nautilus', 'Stainless Steel', 40.0, 'automatic', '26-330 S C', 120, 'Blue-Black Gradient', 'Stainless Steel', null, 12500000, -2.1, null, null),
  ('b0000000-0000-0000-0000-000000000002', '5711/1A-014', 'Nautilus', 'Tiffany Nautilus', 'Nautilus', 'Stainless Steel', 40.0, 'automatic', '26-330 S C', 120, 'Tiffany Blue', 'Stainless Steel', null, 30000000, 4.5, null, null),
  ('b0000000-0000-0000-0000-000000000002', '5712/1A-001', 'Nautilus Moon Phase Power Reserve', 'The Golden Eagle', 'Nautilus', 'Stainless Steel', 40.0, 'automatic', '240 PS IRM C LU', 120, 'Blue-Black Gradient', 'Stainless Steel', null, 14000000, 3.0, null, null),
  ('b0000000-0000-0000-0000-000000000002', '5980/1A-001', 'Nautilus Chronograph', null, 'Nautilus', 'Stainless Steel', 40.5, 'automatic', 'CH 28-520 C', 120, 'Blue-Black Gradient', 'Stainless Steel', null, 9000000, -0.5, null, null),
  ('b0000000-0000-0000-0000-000000000002', '5990/1A-001', 'Nautilus Travel Time Chronograph', null, 'Nautilus', 'Stainless Steel', 40.5, 'automatic', 'CH 28-520 C FUS', 120, 'Blue-Black Gradient', 'Stainless Steel', null, 11000000, 0.8, null, null),
  ('b0000000-0000-0000-0000-000000000002', '5164A-001', 'Aquanaut Travel Time', null, 'Aquanaut', 'Stainless Steel', 40.8, 'automatic', '324 S C FUS', 120, 'Black Embossed', 'Composite', null, 7500000, 1.5, null, null),
  ('b0000000-0000-0000-0000-000000000002', '3940G', 'Perpetual Calendar', null, 'Grand Complications', '18k White Gold', 36.0, 'automatic', '240 Q', 25, 'White', 'Leather', null, 7500000, 2.0, null, null),
  ('b0000000-0000-0000-0000-000000000002', '2526', 'Calatrava', 'First Auto Patek', 'Calatrava', '18k Yellow Gold', 35.5, 'automatic', '12-600 AT', 20, 'Cream Enamel', 'Leather', null, 4500000, 1.5, null, null);

-- ============================================================
-- AUDEMARS PIGUET — Complete Current Production Catalog 2025-2026
-- Plus key discontinued/vintage references (~200+ watches)
-- Prices in USD cents · Calibers verified against AP specs
-- ============================================================
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values

  -- ========================================
  -- ROYAL OAK SELFWINDING 41mm (Ref. 15510)
  -- Calibre 4302 · 50m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '15510ST.OO.1320ST.01', 'Royal Oak Selfwinding', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4302', 50, 'Silver', 'Stainless Steel', 3190000, 4500000, 1.2, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15510ST.OO.1320ST.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15510ST.OO.1320ST.02', 'Royal Oak Selfwinding', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4302', 50, 'Black', 'Stainless Steel', 3190000, 4400000, 0.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15510ST.OO.1320ST.02.html'),
  ('b0000000-0000-0000-0000-000000000003', '15510ST.OO.1320ST.03', 'Royal Oak Selfwinding', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4302', 50, 'Silver', 'Stainless Steel', 3190000, 4600000, 1.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15510ST.OO.1320ST.03.html'),
  ('b0000000-0000-0000-0000-000000000003', '15510ST.OO.1320ST.04', 'Royal Oak Selfwinding', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4302', 50, 'Khaki Green', 'Stainless Steel', 3190000, 4700000, 1.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15510ST.OO.1320ST.04.html'),
  ('b0000000-0000-0000-0000-000000000003', '15510ST.OO.1320ST.05', 'Royal Oak Selfwinding', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4302', 50, 'Grey', 'Stainless Steel', 3190000, 4300000, 0.9, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15510ST.OO.1320ST.05.html'),
  ('b0000000-0000-0000-0000-000000000003', '15510ST.OO.1320ST.06', 'Royal Oak Selfwinding', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4302', 50, 'Blue', 'Stainless Steel', 3190000, 4800000, 2.1, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15510ST.OO.1320ST.06.html'),
  ('b0000000-0000-0000-0000-000000000003', '15510ST.OO.1320ST.07', 'Royal Oak Selfwinding', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4302', 50, 'Black', 'Stainless Steel', 3190000, 4500000, 1.4, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15510ST.OO.1320ST.07.html'),
  ('b0000000-0000-0000-0000-000000000003', '15510ST.OO.1320ST.08', 'Royal Oak Selfwinding', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4302', 50, 'Khaki Green', 'Stainless Steel', 3190000, 4600000, 1.6, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15510ST.OO.1320ST.08.html'),
  ('b0000000-0000-0000-0000-000000000003', '15510ST.OO.1320ST.09', 'Royal Oak Selfwinding', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4302', 50, 'Green', 'Stainless Steel', 3190000, 4700000, 1.9, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15510ST.OO.1320ST.09.html'),
  ('b0000000-0000-0000-0000-000000000003', '15510ST.OO.1320ST.10', 'Royal Oak Selfwinding', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4302', 50, 'Grey', 'Stainless Steel', 3190000, 4400000, 1.1, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15510ST.OO.1320ST.10.html'),
  ('b0000000-0000-0000-0000-000000000003', '15510OR.OO.1320OR.01', 'Royal Oak Selfwinding', null, 'Royal Oak', '18k Rose Gold', 41.0, 'automatic', '4302', 50, 'Silver', '18k Rose Gold', 6100000, 5800000, -0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15510OR.OO.1320OR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15510OR.OO.1320OR.02', 'Royal Oak Selfwinding', null, 'Royal Oak', '18k Rose Gold', 41.0, 'automatic', '4302', 50, 'Blue', '18k Rose Gold', 6100000, 6200000, 0.3, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15510OR.OO.1320OR.02.html'),
  ('b0000000-0000-0000-0000-000000000003', '15510OR.OO.1320OR.03', 'Royal Oak Selfwinding', null, 'Royal Oak', '18k Rose Gold', 41.0, 'automatic', '4302', 50, 'Blue', '18k Rose Gold', 6100000, 6300000, 0.4, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15510OR.OO.1320OR.03.html'),
  ('b0000000-0000-0000-0000-000000000003', '15510OR.OO.1320OR.04', 'Royal Oak Selfwinding', null, 'Royal Oak', '18k Rose Gold', 41.0, 'automatic', '4302', 50, 'Black', '18k Rose Gold', 6100000, 5900000, -0.2, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15510OR.OO.1320OR.04.html'),
  ('b0000000-0000-0000-0000-000000000003', '15510OR.OO.D002CR.01', 'Royal Oak Selfwinding', null, 'Royal Oak', '18k Rose Gold', 41.0, 'automatic', '4302', 50, 'Black', 'Leather', 5400000, 5200000, -0.3, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15510OR.OO.D002CR.01.html'),
  -- ROYAL OAK "JUMBO" EXTRA-THIN 39mm (Ref. 16202) · Calibre 7121 · 50m WR
  ('b0000000-0000-0000-0000-000000000003', '16202ST.OO.1240ST.01', 'Royal Oak "Jumbo" Extra-Thin', 'Jumbo', 'Royal Oak', 'Stainless Steel', 39.0, 'automatic', '7121', 50, 'Blue', 'Stainless Steel', 4010000, 7200000, 2.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/16202ST.OO.1240ST.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '16202ST.OO.1240ST.02', 'Royal Oak "Jumbo" Extra-Thin', 'Jumbo', 'Royal Oak', 'Stainless Steel', 39.0, 'automatic', '7121', 50, 'Green', 'Stainless Steel', 4010000, 6500000, 1.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/16202ST.OO.1240ST.02.html'),
  ('b0000000-0000-0000-0000-000000000003', '16202OR.OO.1240OR.01', 'Royal Oak "Jumbo" Extra-Thin', 'Jumbo', 'Royal Oak', '18k Rose Gold', 39.0, 'automatic', '7121', 50, 'Grey', '18k Rose Gold', 7100000, 6800000, -0.4, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/16202OR.OO.1240OR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '16202BA.OO.1240BA.01', 'Royal Oak "Jumbo" Extra-Thin', 'Jumbo', 'Royal Oak', '18k Yellow Gold', 39.0, 'automatic', '7121', 50, 'Yellow Gold-Toned', '18k Yellow Gold', 7400000, 7000000, -0.6, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/16202BA.OO.1240BA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '16202BA.OO.1240BA.02', 'Royal Oak "Jumbo" Extra-Thin', 'Jumbo', 'Royal Oak', '18k Yellow Gold', 39.0, 'automatic', '7121', 50, 'Blue', '18k Yellow Gold', 7400000, 7200000, -0.3, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/16202BA.OO.1240BA.02.html'),
  ('b0000000-0000-0000-0000-000000000003', '16202BC.OO.1240BC.01', 'Royal Oak "Jumbo" Extra-Thin', 'Jumbo', 'Royal Oak', '18k White Gold', 39.0, 'automatic', '7121', 50, 'Blue', '18k White Gold', 7500000, 7300000, -0.2, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/16202BC.OO.1240BC.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '16202PT.OO.1240PT.01', 'Royal Oak "Jumbo" Extra-Thin', 'Jumbo', 'Royal Oak', 'Platinum', 39.0, 'automatic', '7121', 50, 'Blue', 'Platinum', 9500000, 9000000, -0.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/16202PT.OO.1240PT.01.html'),
  -- ROYAL OAK SELFWINDING 37mm (Ref. 15550) · Calibre 5900 · 50m WR
  ('b0000000-0000-0000-0000-000000000003', '15550ST.OO.1356ST.01', 'Royal Oak Selfwinding 37mm', null, 'Royal Oak', 'Stainless Steel', 37.0, 'automatic', '5900', 50, 'Silver', 'Stainless Steel', 2870000, 3800000, 1.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15550ST.OO.1356ST.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15550ST.OO.1356ST.02', 'Royal Oak Selfwinding 37mm', null, 'Royal Oak', 'Stainless Steel', 37.0, 'automatic', '5900', 50, 'Blue', 'Stainless Steel', 2870000, 4200000, 2.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15550ST.OO.1356ST.02.html'),
  ('b0000000-0000-0000-0000-000000000003', '15550ST.OO.1356ST.03', 'Royal Oak Selfwinding 37mm', null, 'Royal Oak', 'Stainless Steel', 37.0, 'automatic', '5900', 50, 'Grey', 'Stainless Steel', 2870000, 3600000, 0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15550ST.OO.1356ST.03.html'),
  ('b0000000-0000-0000-0000-000000000003', '15550ST.OO.1356ST.06', 'Royal Oak Selfwinding 37mm', null, 'Royal Oak', 'Stainless Steel', 37.0, 'automatic', '5900', 50, 'Blue', 'Stainless Steel', 2870000, 4300000, 2.2, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15550ST.OO.1356ST.06.html'),
  ('b0000000-0000-0000-0000-000000000003', '15550ST.OO.1356ST.07', 'Royal Oak Selfwinding 37mm', null, 'Royal Oak', 'Stainless Steel', 37.0, 'automatic', '5900', 50, 'Grey', 'Stainless Steel', 2870000, 3700000, 0.7, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15550ST.OO.1356ST.07.html'),
  ('b0000000-0000-0000-0000-000000000003', '15550ST.OO.1356ST.08', 'Royal Oak Selfwinding 37mm', null, 'Royal Oak', 'Stainless Steel', 37.0, 'automatic', '5900', 50, 'Light Blue', 'Stainless Steel', 2870000, 3900000, 1.3, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15550ST.OO.1356ST.08.html'),
  -- ROYAL OAK SELFWINDING 34mm (Ref. 77350) · Calibre 5800 · 50m WR
  ('b0000000-0000-0000-0000-000000000003', '77350ST.OO.1261ST.01', 'Royal Oak Selfwinding 34mm', null, 'Royal Oak', 'Stainless Steel', 34.0, 'automatic', '5800', 50, 'Silver', 'Stainless Steel', 2490000, 2800000, 0.6, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/77350ST.OO.1261ST.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '77350CE.OO.1266CE.01', 'Royal Oak Selfwinding 34mm', null, 'Royal Oak', 'Black Ceramic/Rose Gold', 34.0, 'automatic', '5800', 50, 'Black', 'Black Ceramic', 3500000, 3800000, 1.2, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/77350CE.OO.1266CE.01.html'),
  -- ROYAL OAK CHRONOGRAPH 41mm (Ref. 26240) · Calibre 4401 · 50m WR
  ('b0000000-0000-0000-0000-000000000003', '26240ST.OO.1320ST.01', 'Royal Oak Selfwinding Chronograph', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4401', 50, 'Blue', 'Stainless Steel', 4310000, 5800000, 2.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26240ST.OO.1320ST.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26240ST.OO.1320ST.02', 'Royal Oak Selfwinding Chronograph', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4401', 50, 'Black', 'Stainless Steel', 4310000, 5400000, 1.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26240ST.OO.1320ST.02.html'),
  ('b0000000-0000-0000-0000-000000000003', '26240ST.OO.1320ST.05', 'Royal Oak Selfwinding Chronograph', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4401', 50, 'Blue', 'Stainless Steel', 4310000, 5500000, 2.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26240ST.OO.1320ST.05.html'),
  ('b0000000-0000-0000-0000-000000000003', '26240ST.OO.1320ST.06', 'Royal Oak Selfwinding Chronograph', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4401', 50, 'Blue', 'Stainless Steel', 4310000, 5600000, 2.1, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26240ST.OO.1320ST.06.html'),
  ('b0000000-0000-0000-0000-000000000003', '26240ST.OO.1320ST.08', 'Royal Oak Selfwinding Chronograph', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4401', 50, 'Khaki Green', 'Stainless Steel', 4310000, 5200000, 1.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26240ST.OO.1320ST.08.html'),
  ('b0000000-0000-0000-0000-000000000003', '26240OR.OO.1320OR.01', 'Royal Oak Selfwinding Chronograph', null, 'Royal Oak', '18k Rose Gold', 41.0, 'automatic', '4401', 50, 'Blue', '18k Rose Gold', 8200000, 7800000, -0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26240OR.OO.1320OR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26240OR.OO.1320OR.02', 'Royal Oak Selfwinding Chronograph', null, 'Royal Oak', '18k Rose Gold', 41.0, 'automatic', '4401', 50, 'Grey', '18k Rose Gold', 8200000, 7500000, -0.7, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26240OR.OO.1320OR.02.html'),
  ('b0000000-0000-0000-0000-000000000003', '26240BA.OO.1320BA.01', 'Royal Oak Selfwinding Chronograph', null, 'Royal Oak', '18k Yellow Gold', 41.0, 'automatic', '4401', 50, 'Blue', '18k Yellow Gold', 8500000, 8000000, -0.4, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26240BA.OO.1320BA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26240BC.OO.1320BC.01', 'Royal Oak Selfwinding Chronograph', null, 'Royal Oak', '18k White Gold', 41.0, 'automatic', '4401', 50, 'Blue', '18k White Gold', 8500000, 8200000, -0.3, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26240BC.OO.1320BC.01.html'),
  -- ROYAL OAK CHRONOGRAPH 38mm (Ref. 26315) · Calibre 4401 · 50m WR
  ('b0000000-0000-0000-0000-000000000003', '26315ST.OO.1256ST.01', 'Royal Oak Selfwinding Chronograph 38mm', null, 'Royal Oak', 'Stainless Steel', 38.0, 'automatic', '4401', 50, 'Silver', 'Stainless Steel', 3950000, 4200000, 0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26315ST.OO.1256ST.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26315ST.OO.1256ST.02', 'Royal Oak Selfwinding Chronograph 38mm', 'Panda', 'Royal Oak', 'Stainless Steel', 38.0, 'automatic', '4401', 50, 'Silver/Black', 'Stainless Steel', 3950000, 5500000, 2.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26315ST.OO.1256ST.02.html'),
  -- ROYAL OAK PERPETUAL CALENDAR 41mm (Ref. 26574) · Calibre 5134 · 20m WR
  ('b0000000-0000-0000-0000-000000000003', '26574ST.OO.1220ST.02', 'Royal Oak Perpetual Calendar', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '5134', 20, 'Blue', 'Stainless Steel', 10930000, 11500000, 0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26574ST.OO.1220ST.02.html'),
  ('b0000000-0000-0000-0000-000000000003', '26574ST.OO.1220ST.03', 'Royal Oak Perpetual Calendar', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '5134', 20, 'Blue', 'Stainless Steel', 10930000, 11800000, 0.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26574ST.OO.1220ST.03.html'),
  -- ROYAL OAK PERPETUAL CALENDAR NEW GEN 41mm (Ref. 26674) · Calibre 7138 · 50m WR
  ('b0000000-0000-0000-0000-000000000003', '26674ST.OO.1320ST.01', 'Royal Oak Selfwinding Perpetual Calendar', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '7138', 50, 'Blue', 'Stainless Steel', 10930000, 17500000, 5.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26674ST.OO.1320ST.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26674SG.OO.1320SG.01', 'Royal Oak Selfwinding Perpetual Calendar', null, 'Royal Oak', '18k Sand Gold', 41.0, 'automatic', '7138', 50, 'Sand Gold-Toned', '18k Sand Gold', 13000000, 15000000, 3.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26674SG.OO.1320SG.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26674CD.OO.1225CD.01', 'Royal Oak Selfwinding Perpetual Calendar', null, 'Royal Oak', 'Blue Ceramic', 41.0, 'automatic', '7138', 50, 'Blue', 'Blue Ceramic', null, 25000000, 8.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26674CD.OO.1225CD.01.html'),
  -- ROYAL OAK FLYING TOURBILLON 41mm (Ref. 26530) · Calibre 2950 · 50m WR
  ('b0000000-0000-0000-0000-000000000003', '26530ST.OO.1220ST.01', 'Royal Oak Selfwinding Flying Tourbillon', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '2950', 50, 'Blue', 'Stainless Steel', 15500000, 17500000, 1.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26530ST.OO.1220ST.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26530OR.OO.1220OR.01', 'Royal Oak Selfwinding Flying Tourbillon', null, 'Royal Oak', '18k Rose Gold', 41.0, 'automatic', '2950', 50, 'Grey', '18k Rose Gold', 22000000, 20000000, -1.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26530OR.OO.1220OR.01.html'),
  -- ROYAL OAK FLYING TOURBILLON OPENWORKED 41mm (Ref. 26735) · Calibre 2972 · 50m WR
  ('b0000000-0000-0000-0000-000000000003', '26735ST.OO.1320ST.01', 'Royal Oak Selfwinding Flying Tourbillon Openworked', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '2972', 50, 'Openworked', 'Stainless Steel', 17000000, 19000000, 2.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26735ST.OO.1320ST.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26735ST.OO.1320ST.02', 'Royal Oak Selfwinding Flying Tourbillon Openworked', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '2972', 50, 'Openworked', 'Stainless Steel', 17000000, 18500000, 1.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26735ST.OO.1320ST.02.html'),
  ('b0000000-0000-0000-0000-000000000003', '26735SG.OO.1320SG.01', 'Royal Oak Selfwinding Flying Tourbillon Openworked', null, 'Royal Oak', '18k Sand Gold', 41.0, 'automatic', '2972', 50, 'Openworked', '18k Sand Gold', 24000000, 22000000, -0.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26735SG.OO.1320SG.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26730BC.GG.1320BC.01', 'Royal Oak Selfwinding Flying Tourbillon Openworked', null, 'Royal Oak', '18k White Gold Frosted', 41.0, 'automatic', '2972', 50, 'Blue', '18k White Gold Frosted', 27000000, 25000000, -0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26730BC.GG.1320BC.01.html'),
  -- ROYAL OAK DOUBLE BALANCE WHEEL OPENWORKED 41mm (Ref. 15416) · Calibre 3132 · 50m WR
  ('b0000000-0000-0000-0000-000000000003', '15416CE.OO.1225CE.01', 'Royal Oak Double Balance Wheel Openworked', null, 'Royal Oak', 'Black Ceramic', 41.0, 'automatic', '3132', 50, 'Openworked', 'Black Ceramic', 8700000, 8000000, -0.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15416CE.OO.1225CE.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15416CD.OO.1225CD.01', 'Royal Oak Double Balance Wheel Openworked', null, 'Royal Oak', 'Blue Ceramic', 41.0, 'automatic', '3132', 50, 'Openworked', 'Blue Ceramic', 8700000, 9500000, 2.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15416CD.OO.1225CD.01.html'),
  -- ROYAL OAK OFFSHORE CHRONOGRAPH 42mm (Ref. 26238) · Calibre 4404 · 100m WR
  ('b0000000-0000-0000-0000-000000000003', '26238ST.OO.2000ST.01', 'Royal Oak Offshore Selfwinding Chronograph', null, 'Royal Oak Offshore', 'Stainless Steel', 42.0, 'automatic', '4404', 100, 'Blue', 'Stainless Steel', 5140000, 4800000, -0.7, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26238ST.OO.2000ST.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26238ST.OO.A340CA.01', 'Royal Oak Offshore Selfwinding Chronograph', null, 'Royal Oak Offshore', 'Stainless Steel', 42.0, 'automatic', '4404', 100, 'Black', 'Rubber', 4320000, 4000000, -0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26238ST.OO.A340CA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26238TI.OO.A056CA.01', 'Royal Oak Offshore Selfwinding Chronograph', null, 'Royal Oak Offshore', 'Titanium', 42.0, 'automatic', '4404', 100, 'Khaki Green', 'Rubber', 4320000, 4100000, -0.3, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26238TI.OO.A056CA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26238CE.OO.1300CE.01', 'Royal Oak Offshore Selfwinding Chronograph', null, 'Royal Oak Offshore', 'Black Ceramic', 42.0, 'automatic', '4404', 100, 'Black', 'Black Ceramic', 5140000, 4600000, -1.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26238CE.OO.1300CE.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26238CE.OO.1300CE.02', 'Royal Oak Offshore Selfwinding Chronograph', null, 'Royal Oak Offshore', 'Black Ceramic', 42.0, 'automatic', '4404', 100, 'Black', 'Black Ceramic', 5140000, 4700000, -0.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26238CE.OO.1300CE.02.html'),
  ('b0000000-0000-0000-0000-000000000003', '26238CD.OO.1300CD.01', 'Royal Oak Offshore Selfwinding Chronograph', null, 'Royal Oak Offshore', 'Blue Ceramic', 42.0, 'automatic', '4404', 100, 'Blue', 'Blue Ceramic', 8690000, 9500000, 3.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26238CD.OO.1300CD.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26238OR.OO.2000OR.01', 'Royal Oak Offshore Selfwinding Chronograph', null, 'Royal Oak Offshore', '18k Rose Gold', 42.0, 'automatic', '4404', 100, 'Grey', '18k Rose Gold', 7190000, 6500000, -1.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26238OR.OO.2000OR.01.html'),
  -- ROYAL OAK OFFSHORE CHRONOGRAPH 43mm (Ref. 26420) · Calibre 4401 · 100m WR
  ('b0000000-0000-0000-0000-000000000003', '26420SO.OO.A002CA.01', 'Royal Oak Offshore Selfwinding Chronograph', null, 'Royal Oak Offshore', 'Stainless Steel/Ceramic', 43.0, 'automatic', '4401', 100, 'Black', 'Rubber', 4730000, 4500000, -0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26420SO.OO.A002CA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26420SO.OO.A600CA.01', 'Royal Oak Offshore Selfwinding Chronograph', null, 'Royal Oak Offshore', 'Stainless Steel/Ceramic', 43.0, 'automatic', '4401', 100, 'Black/Orange', 'Rubber', 4730000, 4400000, -0.6, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26420SO.OO.A600CA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26420SO.OO.A029VE.01', 'Royal Oak Offshore Selfwinding Chronograph', null, 'Royal Oak Offshore', 'Stainless Steel/Ceramic', 43.0, 'automatic', '4401', 100, 'Blue', 'Rubber', 4730000, 5000000, 1.2, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26420SO.OO.A029VE.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26420CE.OO.A063VE.01', 'Royal Oak Offshore Selfwinding Chronograph', null, 'Royal Oak Offshore', 'Black Ceramic', 43.0, 'automatic', '4401', 100, 'Green', 'Rubber', 6130000, 5500000, -1.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26420CE.OO.A063VE.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26420RO.OO.A002CA.01', 'Royal Oak Offshore Selfwinding Chronograph', null, 'Royal Oak Offshore', '18k Rose Gold/Ceramic', 43.0, 'automatic', '4401', 100, 'Black', 'Rubber', 7190000, 6500000, -0.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26420RO.OO.A002CA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26420TI.OO.A027CA.01', 'Royal Oak Offshore Selfwinding Chronograph', null, 'Royal Oak Offshore', 'Titanium/Ceramic', 43.0, 'automatic', '4401', 100, 'Blue', 'Rubber', 4160000, 4000000, -0.4, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26420TI.OO.A027CA.01.html'),
  -- ROYAL OAK OFFSHORE DIVER 42mm (Ref. 15720) · Calibre 4308 · 300m WR
  ('b0000000-0000-0000-0000-000000000003', '15720ST.OO.A027CA.01', 'Royal Oak Offshore Diver', null, 'Royal Oak Offshore', 'Stainless Steel', 42.0, 'automatic', '4308', 300, 'Blue', 'Rubber', 3290000, 3500000, 0.6, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/15720ST.OO.A027CA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15720ST.OO.A052CA.01', 'Royal Oak Offshore Diver', null, 'Royal Oak Offshore', 'Stainless Steel', 42.0, 'automatic', '4308', 300, 'Khaki Green', 'Rubber', 3290000, 3400000, 0.4, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/15720ST.OO.A052CA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15720ST.OO.A355CA.01', 'Royal Oak Offshore Diver', null, 'Royal Oak Offshore', 'Stainless Steel', 42.0, 'automatic', '4308', 300, 'Black/Turquoise', 'Rubber', 3290000, 3600000, 0.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/15720ST.OO.A355CA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15720CN.OO.A002CA.01', 'Royal Oak Offshore Diver', null, 'Royal Oak Offshore', '18k White Gold/Ceramic', 42.0, 'automatic', '4308', 300, 'Black', 'Rubber', 5800000, 6200000, 1.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/15720CN.OO.A002CA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15720CN.OO.A002CA.02', 'Royal Oak Offshore Diver', null, 'Royal Oak Offshore', '18k White Gold/Ceramic', 42.0, 'automatic', '4308', 300, 'Black/Red', 'Rubber', 5800000, 6100000, 0.9, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/15720CN.OO.A002CA.02.html'),
  -- CODE 11.59 SELFWINDING 41mm (Ref. 15210) · Calibre 4302 · 30m WR
  ('b0000000-0000-0000-0000-000000000003', '15210ST.OO.A348KB.01', 'Code 11.59 Selfwinding', null, 'Code 11.59', 'Stainless Steel', 41.0, 'automatic', '4302', 30, 'Blue', 'Rubber', 2880000, 2600000, -1.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/15210ST.OO.A348KB.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15210ST.OO.A056KB.01', 'Code 11.59 Selfwinding', null, 'Code 11.59', 'Stainless Steel', 41.0, 'automatic', '4302', 30, 'Green', 'Rubber', 2880000, 2500000, -1.2, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/15210ST.OO.A056KB.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15210ST.OO.A009KB.01', 'Code 11.59 Selfwinding', null, 'Code 11.59', 'Stainless Steel', 41.0, 'automatic', '4302', 30, 'Grey', 'Rubber', 2880000, 2700000, 0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/15210ST.OO.A009KB.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15210OR.OO.A002KB.01', 'Code 11.59 Selfwinding', null, 'Code 11.59', '18k Rose Gold', 41.0, 'automatic', '4302', 30, 'Black', 'Rubber', 3910000, 3200000, -1.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/15210OR.OO.A002KB.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15210OR.OO.A056KB.01', 'Code 11.59 Selfwinding', null, 'Code 11.59', '18k Rose Gold', 41.0, 'automatic', '4302', 30, 'Green', 'Rubber', 3910000, 3100000, -2.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/15210OR.OO.A056KB.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15210BC.OO.A002KB.01', 'Code 11.59 Selfwinding', null, 'Code 11.59', '18k White Gold', 41.0, 'automatic', '4302', 30, 'Black', 'Rubber', 3910000, 3300000, -1.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/15210BC.OO.A002KB.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15210BC.OO.A321CR.01', 'Code 11.59 Selfwinding', null, 'Code 11.59', '18k White Gold', 41.0, 'automatic', '4302', 30, 'Blue', 'Leather', 3910000, 3400000, -1.3, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/15210BC.OO.A321CR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15210BC.OO.A500KB.01', 'Code 11.59 Selfwinding', null, 'Code 11.59', '18k White Gold', 41.0, 'automatic', '4302', 30, 'Burgundy', 'Rubber', 3910000, 3200000, -1.6, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/15210BC.OO.A500KB.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15210QT.OO.A064KB.01', 'Code 11.59 Selfwinding', null, 'Code 11.59', 'Stainless Steel/Ceramic', 41.0, 'automatic', '4302', 30, 'Black', 'Rubber', 3500000, 3000000, -1.4, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/15210QT.OO.A064KB.01.html'),
  -- CODE 11.59 CHRONOGRAPH 41mm (Ref. 26393) · Calibre 4401 · 30m WR
  ('b0000000-0000-0000-0000-000000000003', '26393OR.OO.A002CR.01', 'Code 11.59 Selfwinding Chronograph', null, 'Code 11.59', '18k Rose Gold', 41.0, 'automatic', '4401', 30, 'Black', 'Leather', 5600000, 4200000, -2.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26393OR.OO.A002CR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26393OR.OO.A002KB.01', 'Code 11.59 Selfwinding Chronograph', null, 'Code 11.59', '18k Rose Gold', 41.0, 'automatic', '4401', 30, 'Black', 'Rubber', 5600000, 4100000, -2.6, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26393OR.OO.A002KB.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26393OR.OO.A027KB.01', 'Code 11.59 Selfwinding Chronograph', null, 'Code 11.59', '18k Rose Gold', 41.0, 'automatic', '4401', 30, 'Blue', 'Rubber', 5600000, 4300000, -2.2, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26393OR.OO.A027KB.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26393OR.OO.A321CR.01', 'Code 11.59 Selfwinding Chronograph', null, 'Code 11.59', '18k Rose Gold', 41.0, 'automatic', '4401', 30, 'Blue', 'Leather', 5600000, 4400000, -2.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26393OR.OO.A321CR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26393OR.OO.A056KB.01', 'Code 11.59 Selfwinding Chronograph', null, 'Code 11.59', '18k Rose Gold', 41.0, 'automatic', '4401', 30, 'Green', 'Rubber', 5600000, 4000000, -2.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26393OR.OO.A056KB.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26393OR.OO.A348KB.01', 'Code 11.59 Selfwinding Chronograph', null, 'Code 11.59', '18k Rose Gold', 41.0, 'automatic', '4401', 30, 'Blue', 'Rubber', 5600000, 4500000, -1.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26393OR.OO.A348KB.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26393ST.OO.A056KB.01', 'Code 11.59 Selfwinding Chronograph', null, 'Code 11.59', 'Stainless Steel', 41.0, 'automatic', '4401', 30, 'Green', 'Rubber', 3970000, 3500000, -1.2, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26393ST.OO.A056KB.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26393ST.OO.A009KB.01', 'Code 11.59 Selfwinding Chronograph', null, 'Code 11.59', 'Stainless Steel', 41.0, 'automatic', '4401', 30, 'Grey', 'Rubber', 3970000, 3600000, -0.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26393ST.OO.A009KB.01.html'),
  -- CODE 11.59 PERPETUAL CALENDAR · CODE 11.59 UNIVERSELLE · CODE 11.59 STARWHEEL
  ('b0000000-0000-0000-0000-000000000003', '26394BC.OO.D027KB.01', 'Code 11.59 Perpetual Calendar', null, 'Code 11.59', '18k White Gold', 41.0, 'automatic', '5134', 30, 'Blue', 'Rubber', 10800000, 8500000, -2.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26394BC.OO.D027KB.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26398BC.OO.D002CR.04', 'Code 11.59 Universelle', null, 'Code 11.59', '18k White Gold', 42.0, 'automatic', '2868', 30, 'Blue', 'Leather', null, 80000000, 5.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26398BC.OO.D002CR.04.html'),
  ('b0000000-0000-0000-0000-000000000003', '15212NB.OO.A002KB.01', 'Code 11.59 Starwheel', null, 'Code 11.59', '18k White Gold/Ceramic', 41.0, 'automatic', '4310', 30, 'Aventurine', 'Rubber', 5500000, 4500000, -1.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/15212NB.OO.A002KB.01.html'),
  -- ROYAL OAK CONCEPT FLYING TOURBILLON GMT (Ref. 26589) · 44mm · 100m WR
  ('b0000000-0000-0000-0000-000000000003', '26589IO.OO.D030CA.01', 'Royal Oak Concept Flying Tourbillon GMT', null, 'Royal Oak Concept', 'Titanium', 44.0, 'automatic', '2954', 100, 'Openworked', 'Rubber', 25000000, 22000000, -1.2, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-concept/26589IO.OO.D030CA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26589IO.OO.D056CA.01', 'Royal Oak Concept Flying Tourbillon GMT', null, 'Royal Oak Concept', 'Titanium/Green Ceramic', 44.0, 'automatic', '2954', 100, 'Openworked', 'Rubber', 26000000, 23000000, -1.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-concept/26589IO.OO.D056CA.01.html'),
  -- ROYAL OAK CONCEPT SPLIT-SECONDS CHRONO GMT (Ref. 26650) · 43mm · 100m WR
  ('b0000000-0000-0000-0000-000000000003', '26650TI.OO.D013CA.01', 'Royal Oak Concept Split-Seconds Chronograph GMT Large Date', null, 'Royal Oak Concept', 'Titanium', 43.0, 'automatic', '4407', 100, 'Openworked', 'Rubber', 28000000, 25000000, -1.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-concept/26650TI.OO.D013CA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26650FA.OO.D002CA.01', 'Royal Oak Concept Split-Seconds Chronograph GMT Large Date', null, 'Royal Oak Concept', 'CFT Carbon/Yellow Gold', 43.0, 'automatic', '4407', 100, 'Openworked', 'Rubber', 30000000, 28000000, -0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-concept/26650FA.OO.D002CA.01.html'),
  -- KEY DISCONTINUED / VINTAGE REFERENCES
  ('b0000000-0000-0000-0000-000000000003', '15500ST.OO.1220ST.01', 'Royal Oak Selfwinding', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4302', 50, 'Blue', 'Stainless Steel', null, 4200000, 1.7, null, null),
  ('b0000000-0000-0000-0000-000000000003', '15500ST.OO.1220ST.04', 'Royal Oak Selfwinding', 'Black RO', 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4302', 50, 'Black', 'Stainless Steel', null, 3800000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000003', '15400ST.OO.1220ST.01', 'Royal Oak Selfwinding', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '3120', 50, 'Blue', 'Stainless Steel', null, 3500000, -0.8, null, null),
  ('b0000000-0000-0000-0000-000000000003', '15202ST.OO.1240ST.01', 'Royal Oak "Jumbo" Extra-Thin', 'Jumbo', 'Royal Oak', 'Stainless Steel', 39.0, 'automatic', '2121', 50, 'Blue', 'Stainless Steel', null, 7500000, 4.2, null, null),
  ('b0000000-0000-0000-0000-000000000003', '15202IP.OO.1240IP.01', 'Royal Oak "Jumbo" Extra-Thin', 'Jumbo 50th Anniversary', 'Royal Oak', 'Titanium/Platinum', 39.0, 'automatic', '7121', 50, 'Blue', 'Titanium/Platinum', null, 12000000, 3.8, null, null),
  ('b0000000-0000-0000-0000-000000000003', '26331ST.OO.1220ST.01', 'Royal Oak Selfwinding Chronograph', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '2385', 50, 'Blue', 'Stainless Steel', null, 4800000, -0.9, null, null),
  ('b0000000-0000-0000-0000-000000000003', '26470ST.OO.A027CA.01', 'Royal Oak Offshore Chronograph', null, 'Royal Oak Offshore', 'Stainless Steel', 42.0, 'automatic', '3126/3840', 100, 'White', 'Rubber', null, 2900000, -1.3, null, null),
  ('b0000000-0000-0000-0000-000000000003', '15710ST.OO.A002CA.01', 'Royal Oak Offshore Diver', null, 'Royal Oak Offshore', 'Stainless Steel', 42.0, 'automatic', '3120', 300, 'Black', 'Rubber', null, 2500000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000003', '5402ST', 'Royal Oak A-Series', 'A-Series Jumbo', 'Royal Oak', 'Stainless Steel', 39.0, 'automatic', '2121', 50, 'Blue', 'Stainless Steel', null, 15000000, 5.0, null, null),

  -- ========================================
  -- ROYAL OAK SELFWINDING 41mm — ADDITIONAL VARIANTS
  -- Calibre 4302 · 50m WR
  -- ========================================
  -- White Gold variants
  ('b0000000-0000-0000-0000-000000000003', '15510BC.OO.1320BC.01', 'Royal Oak Selfwinding', null, 'Royal Oak', '18k White Gold', 41.0, 'automatic', '4302', 50, 'Blue', '18k White Gold', 6100000, 5900000, -0.3, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15510BC.OO.1320BC.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15510BC.OO.1320BC.02', 'Royal Oak Selfwinding', null, 'Royal Oak', '18k White Gold', 41.0, 'automatic', '4302', 50, 'Grey', '18k White Gold', 6100000, 5800000, -0.4, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15510BC.OO.1320BC.02.html'),
  ('b0000000-0000-0000-0000-000000000003', '15510BC.OO.1320BC.04', 'Royal Oak Selfwinding', null, 'Royal Oak', '18k White Gold', 41.0, 'automatic', '4302', 50, 'Smoked Blue', '18k White Gold', 6100000, 6300000, 0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15510BC.OO.1320BC.04.html'),
  -- Yellow Gold variants
  ('b0000000-0000-0000-0000-000000000003', '15510BA.OO.1320BA.01', 'Royal Oak Selfwinding', null, 'Royal Oak', '18k Yellow Gold', 41.0, 'automatic', '4302', 50, 'Blue', '18k Yellow Gold', 6100000, 5700000, -0.6, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15510BA.OO.1320BA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15510BA.OO.1320BA.02', 'Royal Oak Selfwinding', null, 'Royal Oak', '18k Yellow Gold', 41.0, 'automatic', '4302', 50, 'Champagne', '18k Yellow Gold', 6100000, 5600000, -0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15510BA.OO.1320BA.02.html'),
  -- Rose Gold on leather
  ('b0000000-0000-0000-0000-000000000003', '15510OR.OO.D002CR.02', 'Royal Oak Selfwinding', null, 'Royal Oak', '18k Rose Gold', 41.0, 'automatic', '4302', 50, 'Blue', 'Leather', 5400000, 5100000, -0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15510OR.OO.D002CR.02.html'),

  -- ========================================
  -- ROYAL OAK "JUMBO" EXTRA-THIN — ADDITIONAL VARIANTS
  -- 39mm · Calibre 7121 · 50m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '16202ST.OO.1240ST.03', 'Royal Oak "Jumbo" Extra-Thin', 'Jumbo', 'Royal Oak', 'Stainless Steel', 39.0, 'automatic', '7121', 50, 'Salmon', 'Stainless Steel', 4010000, 6800000, 2.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/16202ST.OO.1240ST.03.html'),
  ('b0000000-0000-0000-0000-000000000003', '16202OR.OO.1240OR.02', 'Royal Oak "Jumbo" Extra-Thin', 'Jumbo', 'Royal Oak', '18k Rose Gold', 39.0, 'automatic', '7121', 50, 'Blue', '18k Rose Gold', 7100000, 7000000, -0.2, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/16202OR.OO.1240OR.02.html'),
  ('b0000000-0000-0000-0000-000000000003', '16202CB.OO.A040CA.01', 'Royal Oak "Jumbo" Extra-Thin', 'Jumbo', 'Royal Oak', 'Titanium/Blue Ceramic', 39.0, 'automatic', '7121', 50, 'Blue', 'Rubber', 5000000, 7500000, 3.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/16202CB.OO.A040CA.01.html'),

  -- ========================================
  -- ROYAL OAK "JUMBO" EXTRA-THIN OPENWORKED (Ref. 16204)
  -- 39mm · Calibre 7124 · 50m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '16204ST.OO.1240ST.01', 'Royal Oak "Jumbo" Extra-Thin Openworked', null, 'Royal Oak', 'Stainless Steel', 39.0, 'automatic', '7124', 50, 'Openworked', 'Stainless Steel', 5500000, 8000000, 3.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/16204ST.OO.1240ST.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '16204OR.OO.1240OR.01', 'Royal Oak "Jumbo" Extra-Thin Openworked', null, 'Royal Oak', '18k Rose Gold', 39.0, 'automatic', '7124', 50, 'Openworked', '18k Rose Gold', 9200000, 8500000, -0.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/16204OR.OO.1240OR.01.html'),

  -- ========================================
  -- ROYAL OAK SELFWINDING 37mm — ADDITIONAL VARIANTS (Ref. 15550)
  -- Calibre 5900 · 50m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '15550ST.OO.1356ST.04', 'Royal Oak Selfwinding 37mm', null, 'Royal Oak', 'Stainless Steel', 37.0, 'automatic', '5900', 50, 'Green', 'Stainless Steel', 2870000, 3500000, 0.4, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15550ST.OO.1356ST.04.html'),
  ('b0000000-0000-0000-0000-000000000003', '15550ST.OO.1356ST.05', 'Royal Oak Selfwinding 37mm', null, 'Royal Oak', 'Stainless Steel', 37.0, 'automatic', '5900', 50, 'Black', 'Stainless Steel', 2870000, 3400000, 0.3, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15550ST.OO.1356ST.05.html'),
  ('b0000000-0000-0000-0000-000000000003', '15550OR.OO.1356OR.01', 'Royal Oak Selfwinding 37mm', null, 'Royal Oak', '18k Rose Gold', 37.0, 'automatic', '5900', 50, 'Silver', '18k Rose Gold', 5500000, 5200000, -0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15550OR.OO.1356OR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15550OR.OO.1356OR.02', 'Royal Oak Selfwinding 37mm', null, 'Royal Oak', '18k Rose Gold', 37.0, 'automatic', '5900', 50, 'Blue', '18k Rose Gold', 5500000, 5800000, 0.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15550OR.OO.1356OR.02.html'),

  -- ========================================
  -- ROYAL OAK SELFWINDING 34mm — ADDITIONAL VARIANTS (Ref. 77350)
  -- Calibre 5800 · 50m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '77350ST.OO.1261ST.02', 'Royal Oak Selfwinding 34mm', null, 'Royal Oak', 'Stainless Steel', 34.0, 'automatic', '5800', 50, 'Blue', 'Stainless Steel', 2490000, 3000000, 0.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/77350ST.OO.1261ST.02.html'),
  ('b0000000-0000-0000-0000-000000000003', '77350ST.OO.1261ST.03', 'Royal Oak Selfwinding 34mm', null, 'Royal Oak', 'Stainless Steel', 34.0, 'automatic', '5800', 50, 'Grey', 'Stainless Steel', 2490000, 2700000, 0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/77350ST.OO.1261ST.03.html'),
  ('b0000000-0000-0000-0000-000000000003', '77350OR.OO.1261OR.01', 'Royal Oak Selfwinding 34mm', null, 'Royal Oak', '18k Rose Gold', 34.0, 'automatic', '5800', 50, 'Silver', '18k Rose Gold', 4200000, 3900000, -0.4, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/77350OR.OO.1261OR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '77350OR.OO.1261OR.02', 'Royal Oak Selfwinding 34mm', null, 'Royal Oak', '18k Rose Gold', 34.0, 'automatic', '5800', 50, 'Blue', '18k Rose Gold', 4200000, 4100000, -0.2, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/77350OR.OO.1261OR.02.html'),

  -- ========================================
  -- ROYAL OAK QUARTZ 33mm (Ref. 67650)
  -- Calibre 2713 · 50m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '67650ST.OO.1261ST.01', 'Royal Oak Quartz', null, 'Royal Oak', 'Stainless Steel', 33.0, 'quartz', '2713', 50, 'Black', 'Stainless Steel', 1990000, 2200000, 0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/67650ST.OO.1261ST.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '67650ST.OO.1261ST.02', 'Royal Oak Quartz', null, 'Royal Oak', 'Stainless Steel', 33.0, 'quartz', '2713', 50, 'Silver', 'Stainless Steel', 1990000, 2100000, 0.3, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/67650ST.OO.1261ST.02.html'),
  ('b0000000-0000-0000-0000-000000000003', '67650ST.OO.1261ST.03', 'Royal Oak Quartz', null, 'Royal Oak', 'Stainless Steel', 33.0, 'quartz', '2713', 50, 'Blue', 'Stainless Steel', 1990000, 2300000, 0.7, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/67650ST.OO.1261ST.03.html'),
  ('b0000000-0000-0000-0000-000000000003', '67650OR.OO.1261OR.01', 'Royal Oak Quartz', null, 'Royal Oak', '18k Rose Gold', 33.0, 'quartz', '2713', 50, 'Silver', '18k Rose Gold', 3750000, 3400000, -0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/67650OR.OO.1261OR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '67651ST.OO.1261ST.01', 'Royal Oak Quartz', null, 'Royal Oak', 'Stainless Steel', 33.0, 'quartz', '2713', 50, 'Silver Diamond', 'Stainless Steel', 2620000, 2800000, 0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/67651ST.OO.1261ST.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '67651OR.OO.1261OR.01', 'Royal Oak Quartz', null, 'Royal Oak', '18k Rose Gold', 33.0, 'quartz', '2713', 50, 'Silver Diamond', '18k Rose Gold', 4400000, 4100000, -0.3, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/67651OR.OO.1261OR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '67652ST.OO.1261ST.01', 'Royal Oak Quartz Diamond Bezel', null, 'Royal Oak', 'Stainless Steel', 33.0, 'quartz', '2713', 50, 'Blue', 'Stainless Steel', 3200000, 3400000, 0.6, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/67652ST.OO.1261ST.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '67652BC.ZZ.1262BC.01', 'Royal Oak Quartz Diamond Bezel', null, 'Royal Oak', '18k White Gold', 33.0, 'quartz', '2713', 50, 'Silver Diamond', '18k White Gold', 9420000, 8500000, -1.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/67652BC.ZZ.1262BC.01.html'),

  -- ========================================
  -- ROYAL OAK SELFWINDING CHRONOGRAPH 41mm — ADDITIONAL VARIANTS (Ref. 26240)
  -- Calibre 4401 · 50m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '26240ST.OO.1320ST.03', 'Royal Oak Selfwinding Chronograph', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4401', 50, 'Silver', 'Stainless Steel', 4310000, 5300000, 1.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26240ST.OO.1320ST.03.html'),
  ('b0000000-0000-0000-0000-000000000003', '26240ST.OO.1320ST.04', 'Royal Oak Selfwinding Chronograph', 'Panda', 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4401', 50, 'Silver/Black', 'Stainless Steel', 4310000, 6200000, 3.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26240ST.OO.1320ST.04.html'),
  ('b0000000-0000-0000-0000-000000000003', '26240ST.OO.1320ST.07', 'Royal Oak Selfwinding Chronograph', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4401', 50, 'Grey', 'Stainless Steel', 4310000, 5100000, 1.3, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26240ST.OO.1320ST.07.html'),
  ('b0000000-0000-0000-0000-000000000003', '26240OR.OO.D002CR.01', 'Royal Oak Selfwinding Chronograph', null, 'Royal Oak', '18k Rose Gold', 41.0, 'automatic', '4401', 50, 'Blue', 'Leather', 7500000, 7000000, -0.7, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26240OR.OO.D002CR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26240OR.OO.D002CR.02', 'Royal Oak Selfwinding Chronograph', null, 'Royal Oak', '18k Rose Gold', 41.0, 'automatic', '4401', 50, 'Grey', 'Leather', 7500000, 6800000, -0.9, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26240OR.OO.D002CR.02.html'),

  -- ========================================
  -- ROYAL OAK SELFWINDING CHRONOGRAPH 38mm — ADDITIONAL VARIANTS (Ref. 26315)
  -- Calibre 4401 · 50m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '26315ST.OO.1256ST.03', 'Royal Oak Selfwinding Chronograph 38mm', null, 'Royal Oak', 'Stainless Steel', 38.0, 'automatic', '4401', 50, 'Blue', 'Stainless Steel', 3950000, 4500000, 1.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26315ST.OO.1256ST.03.html'),
  ('b0000000-0000-0000-0000-000000000003', '26315OR.OO.1256OR.01', 'Royal Oak Selfwinding Chronograph 38mm', null, 'Royal Oak', '18k Rose Gold', 38.0, 'automatic', '4401', 50, 'Blue', '18k Rose Gold', 7400000, 7000000, -0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26315OR.OO.1256OR.01.html'),

  -- ========================================
  -- ROYAL OAK PERPETUAL CALENDAR — ADDITIONAL VARIANTS (Ref. 26574)
  -- Calibre 5134 · 20m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '26574ST.OO.1220ST.01', 'Royal Oak Perpetual Calendar', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '5134', 20, 'Silver', 'Stainless Steel', 10930000, 11200000, 0.3, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26574ST.OO.1220ST.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26574OR.OO.1220OR.01', 'Royal Oak Perpetual Calendar', null, 'Royal Oak', '18k Rose Gold', 41.0, 'automatic', '5134', 20, 'Blue', '18k Rose Gold', 16000000, 15200000, -0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26574OR.OO.1220OR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26574OR.OO.1220OR.02', 'Royal Oak Perpetual Calendar', null, 'Royal Oak', '18k Rose Gold', 41.0, 'automatic', '5134', 20, 'Silver', '18k Rose Gold', 16000000, 14800000, -0.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26574OR.OO.1220OR.02.html'),
  ('b0000000-0000-0000-0000-000000000003', '26579CE.OO.1225CE.01', 'Royal Oak Perpetual Calendar', null, 'Royal Oak', 'Black Ceramic', 41.0, 'automatic', '5134', 20, 'Black', 'Black Ceramic', 22850000, 21000000, -0.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26579CE.OO.1225CE.01.html'),

  -- ========================================
  -- ROYAL OAK SELFWINDING PERPETUAL CALENDAR (Ref. 26674)
  -- NEW Calibre 7138 · 50m WR · Patented crown-only adjustment
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '26674OR.OO.1320OR.01', 'Royal Oak Selfwinding Perpetual Calendar', null, 'Royal Oak', '18k Rose Gold', 41.0, 'automatic', '7138', 50, 'Blue', '18k Rose Gold', 13000000, 16000000, 4.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26674OR.OO.1320OR.01.html'),

  -- ========================================
  -- ROYAL OAK DOUBLE BALANCE WHEEL OPENWORKED — ADDITIONAL (Ref. 15407/15416)
  -- Calibre 3132 · 50m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '15407ST.OO.1220ST.01', 'Royal Oak Double Balance Wheel Openworked', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '3132', 50, 'Openworked', 'Stainless Steel', 7500000, 7200000, -0.4, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15407ST.OO.1220ST.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15407ST.OO.1220ST.02', 'Royal Oak Double Balance Wheel Openworked', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '3132', 50, 'Openworked', 'Stainless Steel', 7500000, 7400000, -0.2, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15407ST.OO.1220ST.02.html'),
  ('b0000000-0000-0000-0000-000000000003', '15407OR.OO.1220OR.01', 'Royal Oak Double Balance Wheel Openworked', null, 'Royal Oak', '18k Rose Gold', 41.0, 'automatic', '3132', 50, 'Openworked', '18k Rose Gold', 10500000, 9800000, -0.7, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15407OR.OO.1220OR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15407BA.OO.1220BA.01', 'Royal Oak Double Balance Wheel Openworked', null, 'Royal Oak', '18k Yellow Gold', 41.0, 'automatic', '3132', 50, 'Openworked', '18k Yellow Gold', 10110000, 9500000, -0.6, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15407BA.OO.1220BA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15416CE.OO.1225CE.02', 'Royal Oak Double Balance Wheel Openworked', null, 'Royal Oak', 'Black Ceramic', 41.0, 'automatic', '3132', 50, 'Openworked', 'Black Ceramic', 10110000, 9800000, -0.3, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/15416CE.OO.1225CE.02.html'),

  -- ========================================
  -- ROYAL OAK SELFWINDING FLYING TOURBILLON — ADDITIONAL (Ref. 26530)
  -- Calibre 2950 · 50m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '26530TI.OO.1220TI.01', 'Royal Oak Selfwinding Flying Tourbillon', null, 'Royal Oak', 'Titanium', 41.0, 'automatic', '2950', 50, 'Grey', 'Titanium', 14500000, 13500000, -0.7, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26530TI.OO.1220TI.01.html'),

  -- ========================================
  -- ROYAL OAK MINUTE REPEATER SUPERSONNERIE (Ref. 26591)
  -- Calibre 2953 · 20m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '26591TI.OO.1252TI.01', 'Royal Oak Minute Repeater Supersonnerie', null, 'Royal Oak', 'Titanium', 42.0, 'manual', '2953', 20, 'Smoked Grey', 'Titanium', 47400000, 40000000, -1.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26591TI.OO.1252TI.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26591TI.OO.1252TI.02', 'Royal Oak Minute Repeater Supersonnerie', null, 'Royal Oak', 'Titanium', 42.0, 'manual', '2953', 20, 'Smoked Blue', 'Titanium', 47400000, 42000000, -1.2, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26591TI.OO.1252TI.02.html'),
  ('b0000000-0000-0000-0000-000000000003', '26591TI.OO.1252TI.03', 'Royal Oak Minute Repeater Supersonnerie', null, 'Royal Oak', 'Titanium', 42.0, 'manual', '2953', 20, 'Smoked Green', 'Titanium', 47400000, 41000000, -1.3, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26591TI.OO.1252TI.03.html'),
  ('b0000000-0000-0000-0000-000000000003', '26591CE.OO.D002CA.01', 'Royal Oak Minute Repeater Supersonnerie', null, 'Royal Oak', 'Black Ceramic', 42.0, 'manual', '2953', 20, 'Black', 'Rubber', 47400000, 45000000, -0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26591CE.OO.D002CA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26591CE.OO.D002CA.02', 'Royal Oak Minute Repeater Supersonnerie', null, 'Royal Oak', 'Black Ceramic', 42.0, 'manual', '2953', 20, 'Black Diamond', 'Rubber', 48800000, 46000000, -0.4, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak/26591CE.OO.D002CA.02.html'),

  -- ========================================
  -- ROYAL OAK OFFSHORE SELFWINDING CHRONOGRAPH 42mm — ADDITIONAL (Ref. 26238)
  -- Calibre 4404 · 100m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '26238ST.OO.A340CA.02', 'Royal Oak Offshore Selfwinding Chronograph', null, 'Royal Oak Offshore', 'Stainless Steel', 42.0, 'automatic', '4404', 100, 'Grey', 'Rubber', 4320000, 4100000, -0.3, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26238ST.OO.A340CA.02.html'),
  ('b0000000-0000-0000-0000-000000000003', '26238TI.OO.A027CA.01', 'Royal Oak Offshore Selfwinding Chronograph', null, 'Royal Oak Offshore', 'Titanium', 42.0, 'automatic', '4404', 100, 'Blue', 'Rubber', 4320000, 4200000, -0.2, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26238TI.OO.A027CA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26238OR.OO.A002CA.01', 'Royal Oak Offshore Selfwinding Chronograph', null, 'Royal Oak Offshore', '18k Rose Gold', 42.0, 'automatic', '4404', 100, 'Black', 'Rubber', 7190000, 6300000, -1.2, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26238OR.OO.A002CA.01.html'),

  -- ========================================
  -- ROYAL OAK OFFSHORE SELFWINDING CHRONOGRAPH 43mm — ADDITIONAL (Ref. 26420)
  -- Calibre 4401 · 100m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '26420ST.OO.A002CA.01', 'Royal Oak Offshore Selfwinding Chronograph', null, 'Royal Oak Offshore', 'Stainless Steel', 43.0, 'automatic', '4401', 100, 'Black', 'Rubber', 4730000, 4400000, -0.7, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26420ST.OO.A002CA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26420ST.OO.A828CR.01', 'Royal Oak Offshore Selfwinding Chronograph', null, 'Royal Oak Offshore', 'Stainless Steel', 43.0, 'automatic', '4401', 100, 'Smoked Bronze', 'Leather', 4590000, 4300000, -0.6, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26420ST.OO.A828CR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26420CE.OO.A002CA.01', 'Royal Oak Offshore Selfwinding Chronograph', null, 'Royal Oak Offshore', 'Black Ceramic', 43.0, 'automatic', '4401', 100, 'Black', 'Rubber', 6130000, 5600000, -0.9, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26420CE.OO.A002CA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26420IO.OO.A002CA.01', 'Royal Oak Offshore Selfwinding Chronograph', null, 'Royal Oak Offshore', 'Titanium/Ceramic', 43.0, 'automatic', '4401', 100, 'Grey', 'Rubber', 5560000, 5200000, -0.6, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26420IO.OO.A002CA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26420RO.OO.A600CA.01', 'Royal Oak Offshore Selfwinding Chronograph', null, 'Royal Oak Offshore', '18k Rose Gold/Ceramic', 43.0, 'automatic', '4401', 100, 'Black/Orange', 'Rubber', 7190000, 6600000, -0.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26420RO.OO.A600CA.01.html'),

  -- ========================================
  -- ROYAL OAK OFFSHORE DIVER — ADDITIONAL (Ref. 15720)
  -- Calibre 4308 · 300m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '15720ST.OO.A002CA.01', 'Royal Oak Offshore Diver', null, 'Royal Oak Offshore', 'Stainless Steel', 42.0, 'automatic', '4308', 300, 'Black', 'Rubber', 3290000, 3300000, 0.3, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/15720ST.OO.A002CA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15720ST.OO.A009CA.01', 'Royal Oak Offshore Diver', null, 'Royal Oak Offshore', 'Stainless Steel', 42.0, 'automatic', '4308', 300, 'Grey', 'Rubber', 3290000, 3200000, 0.2, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/15720ST.OO.A009CA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15720TI.OO.A027CA.01', 'Royal Oak Offshore Diver', null, 'Royal Oak Offshore', 'Titanium', 42.0, 'automatic', '4308', 300, 'Blue', 'Rubber', 3290000, 3400000, 0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/15720TI.OO.A027CA.01.html'),

  -- ========================================
  -- ROYAL OAK OFFSHORE SELFWINDING MUSIC EDITION 37mm (Ref. 77600)
  -- Calibre 5909 · 50m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '77600CE.OO.A002CA.01', 'Royal Oak Offshore Selfwinding Music Edition', null, 'Royal Oak Offshore', 'Black Ceramic', 37.0, 'automatic', '5909', 50, 'Black', 'Rubber', 5900000, 5500000, -0.7, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/77600CE.OO.A002CA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '77600TI.OO.A027CA.01', 'Royal Oak Offshore Selfwinding Music Edition', null, 'Royal Oak Offshore', 'Titanium', 37.0, 'automatic', '5909', 50, 'Blue', 'Rubber', 3900000, 3700000, -0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/77600TI.OO.A027CA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '77600TI.OO.A002CA.01', 'Royal Oak Offshore Selfwinding Music Edition', null, 'Royal Oak Offshore', 'Titanium', 37.0, 'automatic', '5909', 50, 'Black', 'Rubber', 3900000, 3600000, -0.6, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/77600TI.OO.A002CA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '77600BC.ZZ.A002CA.01', 'Royal Oak Offshore Selfwinding Music Edition', null, 'Royal Oak Offshore', '18k White Gold Diamond', 37.0, 'automatic', '5909', 50, 'Silver', 'Rubber', 8500000, 8000000, -0.6, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/77600BC.ZZ.A002CA.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '77600BC.ZZ.A027CA.01', 'Royal Oak Offshore Selfwinding Music Edition', null, 'Royal Oak Offshore', '18k White Gold Diamond', 37.0, 'automatic', '5909', 50, 'Blue', 'Rubber', 8500000, 8200000, -0.4, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/77600BC.ZZ.A027CA.01.html'),

  -- ========================================
  -- ROYAL OAK OFFSHORE SELFWINDING MUSIC EDITION 43mm
  -- Calibre 4401 · 100m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '26420TI.OO.A027CA.02', 'Royal Oak Offshore Selfwinding Chronograph Music Edition', null, 'Royal Oak Offshore', 'Titanium', 43.0, 'automatic', '4401', 100, 'Blue', 'Rubber', 4730000, 4500000, -0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26420TI.OO.A027CA.02.html'),
  ('b0000000-0000-0000-0000-000000000003', '26420TI.OO.A002CA.02', 'Royal Oak Offshore Selfwinding Chronograph Music Edition', null, 'Royal Oak Offshore', 'Titanium', 43.0, 'automatic', '4401', 100, 'Black', 'Rubber', 4730000, 4400000, -0.6, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-offshore/26420TI.OO.A002CA.02.html'),

  -- ========================================
  -- CODE 11.59 SELFWINDING — ADDITIONAL VARIANTS (Ref. 15210)
  -- Calibre 4302 · 30m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '15210ST.OO.A002KB.01', 'Code 11.59 Selfwinding', null, 'Code 11.59', 'Stainless Steel', 41.0, 'automatic', '4302', 30, 'Black', 'Rubber', 2880000, 2500000, -1.3, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/15210ST.OO.A002KB.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15210ST.OO.A321CR.01', 'Code 11.59 Selfwinding', null, 'Code 11.59', 'Stainless Steel', 41.0, 'automatic', '4302', 30, 'Blue', 'Leather', 2880000, 2600000, -1.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/15210ST.OO.A321CR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15210OR.OO.A348KB.01', 'Code 11.59 Selfwinding', null, 'Code 11.59', '18k Rose Gold', 41.0, 'automatic', '4302', 30, 'Blue', 'Rubber', 3910000, 3300000, -1.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/15210OR.OO.A348KB.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15210OR.OO.A321CR.01', 'Code 11.59 Selfwinding', null, 'Code 11.59', '18k Rose Gold', 41.0, 'automatic', '4302', 30, 'Blue', 'Leather', 3910000, 3400000, -1.3, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/15210OR.OO.A321CR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '15210CR.OO.A009KB.01', 'Code 11.59 Selfwinding', null, 'Code 11.59', '18k White Gold', 41.0, 'automatic', '4302', 30, 'Grey', 'Rubber', 3910000, 3200000, -1.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/15210CR.OO.A009KB.01.html'),

  -- ========================================
  -- CODE 11.59 SELFWINDING CHRONOGRAPH — ADDITIONAL (Ref. 26393)
  -- Calibre 4401 · 30m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '26393ST.OO.A348KB.01', 'Code 11.59 Selfwinding Chronograph', null, 'Code 11.59', 'Stainless Steel', 41.0, 'automatic', '4401', 30, 'Blue', 'Rubber', 3970000, 3700000, -0.7, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26393ST.OO.A348KB.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26393ST.OO.A002KB.01', 'Code 11.59 Selfwinding Chronograph', null, 'Code 11.59', 'Stainless Steel', 41.0, 'automatic', '4401', 30, 'Black', 'Rubber', 3970000, 3500000, -1.2, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26393ST.OO.A002KB.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26393CR.OO.A002CR.01', 'Code 11.59 Selfwinding Chronograph', null, 'Code 11.59', '18k White Gold', 41.0, 'automatic', '4401', 30, 'Grey', 'Leather', 4970000, 4200000, -1.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26393CR.OO.A002CR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26393OR.OO.A500KB.01', 'Code 11.59 Selfwinding Chronograph', null, 'Code 11.59', '18k Rose Gold', 41.0, 'automatic', '4401', 30, 'Burgundy', 'Rubber', 5600000, 4100000, -2.7, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26393OR.OO.A500KB.01.html'),

  -- ========================================
  -- CODE 11.59 SELFWINDING FLYING TOURBILLON (Ref. 26396)
  -- Calibre 2950 · 30m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '26396OR.OO.D002CR.01', 'Code 11.59 Selfwinding Flying Tourbillon', null, 'Code 11.59', '18k Rose Gold', 41.0, 'automatic', '2950', 30, 'Smoked Black', 'Leather', 13300000, 9800000, -2.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26396OR.OO.D002CR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26396OR.OO.D002CR.02', 'Code 11.59 Selfwinding Flying Tourbillon', null, 'Code 11.59', '18k Rose Gold', 41.0, 'automatic', '2950', 30, 'Smoked Purple', 'Leather', 13300000, 10000000, -2.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26396OR.OO.D002CR.02.html'),
  ('b0000000-0000-0000-0000-000000000003', '26396BC.OO.D321CR.01', 'Code 11.59 Selfwinding Flying Tourbillon', null, 'Code 11.59', '18k White Gold', 41.0, 'automatic', '2950', 30, 'Smoked Blue Enamel', 'Leather', 13300000, 11500000, -1.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26396BC.OO.D321CR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26396NB.OO.D002KB.01', 'Code 11.59 Selfwinding Flying Tourbillon', null, 'Code 11.59', '18k White Gold/Ceramic', 41.0, 'automatic', '2950', 30, 'Black Onyx', 'Rubber', 14670000, 12000000, -1.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26396NB.OO.D002KB.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26396NB.OO.D321CR.01', 'Code 11.59 Selfwinding Flying Tourbillon', null, 'Code 11.59', '18k White Gold/Ceramic', 41.0, 'automatic', '2950', 30, 'Ivory', 'Leather', 14670000, 12500000, -1.4, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26396NB.OO.D321CR.01.html'),

  -- ========================================
  -- CODE 11.59 SELFWINDING FLYING TOURBILLON CHRONOGRAPH (Ref. 26399)
  -- Calibre 2952 · 30m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '26399BC.OO.D321CR.01', 'Code 11.59 Selfwinding Flying Tourbillon Chronograph', null, 'Code 11.59', '18k White Gold', 41.0, 'automatic', '2952', 30, 'Blue', 'Leather', 28800000, 26800000, -0.7, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26399BC.OO.D321CR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26399NR.OO.D002KB.01', 'Code 11.59 Selfwinding Flying Tourbillon Chronograph', null, 'Code 11.59', '18k Rose Gold/Ceramic', 41.0, 'automatic', '2952', 30, 'Openworked', 'Rubber', 28800000, 27000000, -0.6, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26399NR.OO.D002KB.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26399NB.OO.D009KB.01', 'Code 11.59 Selfwinding Flying Tourbillon Chronograph', null, 'Code 11.59', '18k White Gold/Ceramic', 41.0, 'automatic', '2952', 30, 'Openworked', 'Rubber', 27000000, 25000000, -0.7, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26399NB.OO.D009KB.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26399CR.OO.D002CR.01', 'Code 11.59 Selfwinding Flying Tourbillon Chronograph', null, 'Code 11.59', '18k White Gold', 41.0, 'automatic', '2952', 30, 'Openworked', 'Leather', 28800000, 27500000, -0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26399CR.OO.D002CR.01.html'),

  -- ========================================
  -- CODE 11.59 PERPETUAL CALENDAR — ADDITIONAL (Ref. 26394)
  -- Calibre 5134 · 30m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '26394OR.OO.D002CR.01', 'Code 11.59 Perpetual Calendar', null, 'Code 11.59', '18k Rose Gold', 41.0, 'automatic', '5134', 30, 'Black', 'Leather', 10800000, 8200000, -2.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26394OR.OO.D002CR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26394BC.OO.D321CR.01', 'Code 11.59 Perpetual Calendar', null, 'Code 11.59', '18k White Gold', 41.0, 'automatic', '5134', 30, 'Blue', 'Leather', 10800000, 8800000, -2.3, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26394BC.OO.D321CR.01.html'),

  -- ========================================
  -- CODE 11.59 SELFWINDING PERPETUAL CALENDAR (Ref. 26494) — 2025 NOVELTY
  -- NEW Calibre 7138 · 30m WR · Crown-only adjustment
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '26494BC.OO.D350KB.01', 'Code 11.59 Selfwinding Perpetual Calendar', null, 'Code 11.59', '18k White Gold', 41.0, 'automatic', '7138', 30, 'Blue Lacquer', 'Rubber', 10980000, 12000000, 3.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26494BC.OO.D350KB.01.html'),

  -- ========================================
  -- CODE 11.59 UNIVERSELLE (Ref. 26398)
  -- Calibre 2868 · 30m WR · Grand Complication
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '26398BC.OO.D002CR.01', 'Code 11.59 Universelle', null, 'Code 11.59', '18k White Gold', 42.0, 'automatic', '2868', 30, 'Blue', 'Leather', null, 75000000, 5.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26398BC.OO.D002CR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26398BC.OO.D002CR.02', 'Code 11.59 Universelle', null, 'Code 11.59', '18k White Gold', 42.0, 'automatic', '2868', 30, 'Silver', 'Leather', null, 78000000, 5.0, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/26398BC.OO.D002CR.02.html'),

  -- ========================================
  -- CODE 11.59 STARWHEEL — ADDITIONAL (Ref. 15212)
  -- Calibre 4310 · 30m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '15212NR.OO.A002KB.01', 'Code 11.59 Starwheel', null, 'Code 11.59', '18k Rose Gold/Ceramic', 41.0, 'automatic', '4310', 30, 'Black', 'Rubber', 5500000, 4600000, -1.4, null, 'https://www.audemarspiguet.com/com/en/watch-collection/code-1159/15212NR.OO.A002KB.01.html'),

  -- ========================================
  -- ROYAL OAK CONCEPT FLYING TOURBILLON GMT — ADDITIONAL (Ref. 26589)
  -- Calibre 2954 · 100m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '26589IO.OO.D002CA.01', 'Royal Oak Concept Flying Tourbillon GMT', null, 'Royal Oak Concept', 'Titanium', 44.0, 'automatic', '2954', 100, 'Openworked', 'Rubber', 25000000, 21500000, -1.4, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-concept/26589IO.OO.D002CA.01.html'),

  -- ========================================
  -- ROYAL OAK CONCEPT SPLIT-SECONDS CHRONO GMT — ADDITIONAL (Ref. 26650)
  -- Calibre 4407 · 100m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '26650IO.OO.D002CA.01', 'Royal Oak Concept Split-Seconds Chronograph GMT Large Date', null, 'Royal Oak Concept', 'Titanium/Ceramic', 43.0, 'automatic', '4407', 100, 'Openworked', 'Rubber', 29000000, 26000000, -0.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-concept/26650IO.OO.D002CA.01.html'),

  -- ========================================
  -- ROYAL OAK CONCEPT FLYING TOURBILLON (Ref. 26228)
  -- Calibre 2964 · 100m WR
  -- ========================================
  ('b0000000-0000-0000-0000-000000000003', '26228OR.OO.D002CR.01', 'Royal Oak Concept Flying Tourbillon', null, 'Royal Oak Concept', '18k Rose Gold', 38.5, 'automatic', '2964', 100, 'Openworked', 'Leather', 18500000, 17000000, -0.8, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-concept/26228OR.OO.D002CR.01.html'),
  ('b0000000-0000-0000-0000-000000000003', '26228BC.OO.D011CR.01', 'Royal Oak Concept Flying Tourbillon', null, 'Royal Oak Concept', '18k White Gold', 38.5, 'automatic', '2964', 100, 'Openworked', 'Leather', 18500000, 17500000, -0.5, null, 'https://www.audemarspiguet.com/com/en/watch-collection/royal-oak-concept/26228BC.OO.D011CR.01.html'),

  -- ========================================
  -- KEY DISCONTINUED / VINTAGE REFERENCES — ADDITIONAL
  -- ========================================
  -- Previous-gen Royal Oak 15500 (white dial)
  ('b0000000-0000-0000-0000-000000000003', '15500ST.OO.1220ST.03', 'Royal Oak Selfwinding', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '4302', 50, 'White', 'Stainless Steel', null, 3900000, 0.6, null, null),
  -- Previous-gen Royal Oak 15400 variants
  ('b0000000-0000-0000-0000-000000000003', '15400ST.OO.1220ST.02', 'Royal Oak Selfwinding', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '3120', 50, 'Silver', 'Stainless Steel', null, 3200000, -1.0, null, null),
  ('b0000000-0000-0000-0000-000000000003', '15400ST.OO.1220ST.03', 'Royal Oak Selfwinding', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '3120', 50, 'Black', 'Stainless Steel', null, 3000000, -1.2, null, null),
  -- Previous-gen Jumbo 15202 variants
  ('b0000000-0000-0000-0000-000000000003', '15202ST.OO.1240ST.02', 'Royal Oak "Jumbo" Extra-Thin', 'Jumbo', 'Royal Oak', 'Stainless Steel', 39.0, 'automatic', '2121', 50, 'Black', 'Stainless Steel', null, 6000000, 2.0, null, null),
  ('b0000000-0000-0000-0000-000000000003', '15202OR.OO.1240OR.01', 'Royal Oak "Jumbo" Extra-Thin', 'Jumbo', 'Royal Oak', '18k Rose Gold', 39.0, 'automatic', '2121', 50, 'Grey', '18k Rose Gold', null, 5500000, -0.5, null, null),
  -- Discontinued chronograph 26331 variants
  ('b0000000-0000-0000-0000-000000000003', '26331ST.OO.1220ST.02', 'Royal Oak Selfwinding Chronograph', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '2385', 50, 'Black', 'Stainless Steel', null, 4200000, -1.1, null, null),
  ('b0000000-0000-0000-0000-000000000003', '26331OR.OO.1220OR.01', 'Royal Oak Selfwinding Chronograph', null, 'Royal Oak', '18k Rose Gold', 41.0, 'automatic', '2385', 50, 'Blue', '18k Rose Gold', null, 6500000, -0.5, null, null),
  -- Discontinued Offshore 26470 variants
  ('b0000000-0000-0000-0000-000000000003', '26470ST.OO.A101CR.01', 'Royal Oak Offshore Chronograph', null, 'Royal Oak Offshore', 'Stainless Steel', 42.0, 'automatic', '3126/3840', 100, 'Blue', 'Leather', null, 3200000, -0.8, null, null),
  ('b0000000-0000-0000-0000-000000000003', '26470OR.OO.A002CR.01', 'Royal Oak Offshore Chronograph', null, 'Royal Oak Offshore', '18k Rose Gold', 42.0, 'automatic', '3126/3840', 100, 'Black', 'Leather', null, 4500000, -1.0, null, null),
  -- Discontinued Offshore Diver 15710 variants
  ('b0000000-0000-0000-0000-000000000003', '15710ST.OO.A002CA.02', 'Royal Oak Offshore Diver', null, 'Royal Oak Offshore', 'Stainless Steel', 42.0, 'automatic', '3120', 300, 'Blue', 'Rubber', null, 2700000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000003', '15710ST.OO.A052CA.01', 'Royal Oak Offshore Diver', null, 'Royal Oak Offshore', 'Stainless Steel', 42.0, 'automatic', '3120', 300, 'Green', 'Rubber', null, 2600000, 0.4, null, null),
  -- Royal Oak Offshore "The Beast" 25721
  ('b0000000-0000-0000-0000-000000000003', '25721ST.OO.1000ST.09', 'Royal Oak Offshore Chronograph', 'The Beast', 'Royal Oak Offshore', 'Stainless Steel', 42.0, 'automatic', '2226/2840', 100, 'Blue', 'Stainless Steel', null, 3500000, 2.0, null, null),
  -- End Game 25940SK
  ('b0000000-0000-0000-0000-000000000003', '25940SK.OO.D002CA.01', 'Royal Oak Offshore Chronograph', 'End of Days', 'Royal Oak Offshore', 'Stainless Steel/Carbon', 42.0, 'automatic', '2226/2840', 100, 'Yellow/Black', 'Rubber', null, 4000000, 1.5, null, null),
  -- Royal Oak Offshore 15703 Diver
  ('b0000000-0000-0000-0000-000000000003', '15703ST.OO.A002CA.01', 'Royal Oak Offshore Diver', null, 'Royal Oak Offshore', 'Stainless Steel', 42.0, 'automatic', '3120', 300, 'Black', 'Rubber', null, 2200000, -0.5, null, null),
  -- Royal Oak Tourbillon 26510 (prev gen)
  ('b0000000-0000-0000-0000-000000000003', '26510ST.OO.1220ST.01', 'Royal Oak Selfwinding Flying Tourbillon', null, 'Royal Oak', 'Stainless Steel', 41.0, 'automatic', '2950', 50, 'Blue', 'Stainless Steel', null, 15000000, 1.5, null, null),
  -- Royal Oak Offshore Survivor 26165IO
  ('b0000000-0000-0000-0000-000000000003', '26165IO.OO.A002CA.01', 'Royal Oak Offshore Survivor', 'Survivor', 'Royal Oak Offshore', 'Stainless Steel', 42.0, 'automatic', '3126/3840', 100, 'Black', 'Rubber', null, 4500000, 2.5, null, null),
  -- Royal Oak Concept Tourbillon 26580IO
  ('b0000000-0000-0000-0000-000000000003', '26580IO.OO.D010CA.01', 'Royal Oak Concept Tourbillon Chronograph', null, 'Royal Oak Concept', 'Titanium/Ceramic', 44.0, 'manual', '2936', 100, 'Openworked', 'Rubber', null, 30000000, 2.0, null, null);

-- ============================================================

-- ============================================================
-- OMEGA — COMPLETE CURRENT PRODUCTION CATALOG
-- brand_id = 'b0000000-0000-0000-0000-000000000004'
-- ============================================================

-- ************************************************************
--  SPEEDMASTER COLLECTION
-- ************************************************************

insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values

  -- --------------------------------------------------------
  -- Speedmaster Moonwatch Professional 42mm — Steel
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '310.30.42.50.01.001', 'Speedmaster Moonwatch Professional', 'Moonwatch Hesalite', 'Speedmaster', 'Stainless Steel', 42.0, 'manual', '3861', 50, 'Black', 'Stainless Steel', 730000, 620000, -0.8, null, 'https://www.omegawatches.com/en-us/watch-omega-speedmaster-moonwatch-professional-co-axial-master-chronometer-chronograph-42-mm-31030425001001'),
  ('b0000000-0000-0000-0000-000000000004', '310.30.42.50.01.002', 'Speedmaster Moonwatch Professional', 'Moonwatch Sapphire', 'Speedmaster', 'Stainless Steel', 42.0, 'manual', '3861', 50, 'Black', 'Stainless Steel', 900000, 770000, -0.5, null, 'https://www.omegawatches.com/en-us/watch-omega-speedmaster-moonwatch-professional-co-axial-master-chronometer-chronograph-42-mm-31030425001002'),
  ('b0000000-0000-0000-0000-000000000004', '310.30.42.50.01.004', 'Speedmaster Moonwatch Professional', 'Moonwatch Green Bezel', 'Speedmaster', 'Stainless Steel', 42.0, 'manual', '3861', 50, 'Black', 'Stainless Steel', 1040000, 920000, 1.2, null, 'https://www.omegawatches.com/en-us/watch-omega-speedmaster-moonwatch-professional-co-axial-master-chronometer-chronograph-42-mm-31030425001004'),
  ('b0000000-0000-0000-0000-000000000004', '310.30.42.50.04.001', 'Speedmaster Moonwatch Professional', 'White Dial Moonwatch', 'Speedmaster', 'Stainless Steel', 42.0, 'manual', '3861', 50, 'White', 'Stainless Steel', 910000, 760000, -1.5, null, 'https://www.omegawatches.com/en-us/watch-omega-speedmaster-moonwatch-professional-co-axial-master-chronometer-chronograph-42-mm-31030425004001'),
  ('b0000000-0000-0000-0000-000000000004', '310.32.42.50.01.001', 'Speedmaster Moonwatch Professional', 'Moonwatch on Nylon', 'Speedmaster', 'Stainless Steel', 42.0, 'manual', '3861', 50, 'Black', 'Nylon Fabric', 690000, 580000, 0.2, null, 'https://www.omegawatches.com/en-us/watch-omega-speedmaster-moonwatch-professional-co-axial-master-chronometer-chronograph-42-mm-31032425001001'),
  ('b0000000-0000-0000-0000-000000000004', '310.32.42.50.01.002', 'Speedmaster Moonwatch Professional', 'Moonwatch on Leather', 'Speedmaster', 'Stainless Steel', 42.0, 'manual', '3861', 50, 'Black', 'Leather', 650000, 560000, 0.1, null, 'https://www.omegawatches.com/en-us/watch-omega-speedmaster-moonwatch-professional-co-axial-master-chronometer-chronograph-42-mm-31032425001002'),
  ('b0000000-0000-0000-0000-000000000004', '310.32.42.50.04.001', 'Speedmaster Moonwatch Professional', 'White Dial on Rubber', 'Speedmaster', 'Stainless Steel', 42.0, 'manual', '3861', 50, 'White', 'Rubber', 870000, 720000, -0.9, null, null),
  ('b0000000-0000-0000-0000-000000000004', '310.32.42.50.04.002', 'Speedmaster Moonwatch Professional', 'White Dial on Leather', 'Speedmaster', 'Stainless Steel', 42.0, 'manual', '3861', 50, 'White', 'Leather', 870000, 710000, -0.7, null, null),

  -- --------------------------------------------------------
  -- Speedmaster Moonwatch Professional 42mm — Two-Tone
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '310.20.42.50.01.001', 'Speedmaster Moonwatch Professional', 'Apollo 11 50th Anniversary', 'Speedmaster', 'Steel/Moonshine Gold', 42.0, 'manual', '3861', 50, 'Black', 'Steel/Moonshine Gold', 1350000, 1100000, -0.4, null, 'https://www.omegawatches.com/en-us/watch-omega-speedmaster-moonwatch-professional-co-axial-master-chronometer-chronograph-42-mm-31020425001001'),
  ('b0000000-0000-0000-0000-000000000004', '310.20.42.50.02.001', 'Speedmaster Moonwatch Professional', 'Two-Tone Moonwatch Silver', 'Speedmaster', 'Steel/Moonshine Gold', 42.0, 'manual', '3861', 50, 'Silver', 'Steel/Moonshine Gold', 2040000, 1600000, -1.0, null, 'https://www.omegawatches.com/en-us/watch-omega-speedmaster-moonwatch-professional-co-axial-master-chronometer-chronograph-42-mm-31020425002001'),

  -- --------------------------------------------------------
  -- Speedmaster Moonwatch Professional 42mm — Full Gold
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '310.60.42.50.01.001', 'Speedmaster Moonwatch Professional', 'Moonshine Gold Moonwatch Green', 'Speedmaster', 'Moonshine Gold', 42.0, 'manual', '3861', 50, 'Green', 'Leather', 3500000, 3200000, -1.2, null, 'https://www.omegawatches.com/en-us/watch-omega-speedmaster-moonwatch-professional-co-axial-master-chronometer-chronograph-42-mm-31060425001001'),
  ('b0000000-0000-0000-0000-000000000004', '310.60.42.50.01.002', 'Speedmaster Moonwatch Professional', 'Canopus Gold Moonwatch', 'Speedmaster', 'Canopus Gold', 42.0, 'manual', '3861', 50, 'Silver', 'Canopus Gold', 4700000, 4200000, -0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '310.60.42.50.10.001', 'Speedmaster Moonwatch Professional', 'Moonshine Gold Bracelet', 'Speedmaster', 'Moonshine Gold', 42.0, 'manual', '3861', 50, 'Gold', 'Moonshine Gold', 3800000, 3500000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '310.62.42.50.99.001', 'Speedmaster Moonwatch Professional', 'Moonshine Gold on Rubber', 'Speedmaster', 'Moonshine Gold', 42.0, 'manual', '3861', 50, 'Yellow Gold', 'Rubber', 3200000, 2800000, -0.6, null, 'https://www.omegawatches.com/en-us/watch-omega-speedmaster-moonwatch-professional-co-axial-master-chronometer-chronograph-42-mm-31062425099001'),
  ('b0000000-0000-0000-0000-000000000004', '310.63.42.50.01.001', 'Speedmaster Moonwatch Professional', 'Sedna Gold Moonwatch', 'Speedmaster', 'Sedna Gold', 42.0, 'manual', '3861', 50, 'Black', 'Leather', 3600000, 3300000, -0.8, null, null),

  -- --------------------------------------------------------
  -- Speedmaster Silver Snoopy Award 50th Anniversary
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '310.32.42.50.02.001', 'Speedmaster Silver Snoopy Award 50th Anniversary', 'Snoopy', 'Speedmaster', 'Stainless Steel', 42.0, 'manual', '3861', 50, 'Silver/Blue', 'Nylon Fabric', 1190000, 1530000, 1.8, null, 'https://www.omegawatches.com/en-us/watch-omega-speedmaster-anniversary-series-co-axial-master-chronometer-chronograph-42-mm-31032425002001'),

  -- --------------------------------------------------------
  -- Speedmaster '57
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '332.10.41.51.01.001', 'Speedmaster ''57', null, 'Speedmaster', 'Stainless Steel', 40.5, 'automatic', '9906', 50, 'Black', 'Stainless Steel', 950000, 700000, 0.9, null, 'https://www.omegawatches.com/en-us/watch-omega-speedmaster-57-co-axial-master-chronometer-chronograph-40-5-mm-33210415101001'),
  ('b0000000-0000-0000-0000-000000000004', '332.10.41.51.01.002', 'Speedmaster ''57', null, 'Speedmaster', 'Stainless Steel', 40.5, 'automatic', '9906', 50, 'Blue', 'Stainless Steel', 950000, 720000, 1.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '332.10.41.51.10.001', 'Speedmaster ''57', null, 'Speedmaster', 'Stainless Steel', 40.5, 'automatic', '9906', 50, 'Green', 'Stainless Steel', 950000, 750000, 1.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '332.12.41.51.01.001', 'Speedmaster ''57', null, 'Speedmaster', 'Stainless Steel', 40.5, 'automatic', '9906', 50, 'Black', 'Leather', 900000, 680000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '332.12.41.51.10.001', 'Speedmaster ''57', null, 'Speedmaster', 'Stainless Steel', 40.5, 'automatic', '9906', 50, 'Green', 'Leather', 1030000, 780000, 0.7, null, null),
  ('b0000000-0000-0000-0000-000000000004', '332.10.41.51.03.001', 'Speedmaster ''57', null, 'Speedmaster', 'Stainless Steel', 40.5, 'automatic', '9906', 50, 'Blue', 'Stainless Steel', 950000, 710000, 0.6, null, null),

  -- --------------------------------------------------------
  -- Speedmaster Racing / Super Racing
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '329.30.44.51.01.002', 'Speedmaster Racing', null, 'Speedmaster', 'Stainless Steel', 44.25, 'automatic', '9900', 50, 'Black', 'Stainless Steel', 786000, 640000, -0.6, null, 'https://www.omegawatches.com/en-us/watch-omega-speedmaster-racing-co-axial-master-chronometer-chronograph-44-25-mm-32930445101002'),
  ('b0000000-0000-0000-0000-000000000004', '329.30.44.51.04.001', 'Speedmaster Racing', null, 'Speedmaster', 'Stainless Steel', 44.25, 'automatic', '9900', 50, 'White', 'Stainless Steel', 860000, 700000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '329.32.44.51.01.001', 'Speedmaster Racing', null, 'Speedmaster', 'Stainless Steel', 44.25, 'automatic', '9900', 50, 'Black', 'Rubber', 736000, 600000, -0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '329.33.44.51.04.001', 'Speedmaster Racing', null, 'Speedmaster', 'Stainless Steel', 44.25, 'automatic', '9900', 50, 'White', 'Leather', 860000, 680000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '329.30.44.51.01.003', 'Speedmaster Super Racing', null, 'Speedmaster', 'Stainless Steel', 44.25, 'automatic', '9920', 50, 'Black', 'Stainless Steel', 1310000, 1130000, 0.8, null, 'https://www.omegawatches.com/en-us/watch-omega-speedmaster-super-racing-co-axial-master-chronometer-chronograph-44-25-mm-32930445101003'),
  ('b0000000-0000-0000-0000-000000000004', '329.32.44.51.01.003', 'Speedmaster Super Racing', null, 'Speedmaster', 'Stainless Steel', 44.25, 'automatic', '9920', 50, 'Black', 'Rubber', 1250000, 1080000, 0.5, null, null),

  -- --------------------------------------------------------
  -- Speedmaster Dark Side of the Moon (2025 generation)
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '310.92.44.51.01.001', 'Speedmaster Dark Side of the Moon', 'Dark Side Black Black', 'Speedmaster', 'Black Ceramic', 44.25, 'manual', '3869', 50, 'Black', 'Rubber', 1350000, 1200000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '310.92.44.51.01.002', 'Speedmaster Dark Side of the Moon', 'Dark Side Dark', 'Speedmaster', 'Black Ceramic', 44.25, 'automatic', '9900', 50, 'Black', 'Nylon Fabric', 1570000, 1400000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000004', '310.92.44.51.01.003', 'Speedmaster Dark Side of the Moon', 'Dark Side Dark Red', 'Speedmaster', 'Black Ceramic', 44.25, 'automatic', '9908', 50, 'Black/Red', 'Nylon Fabric', 1610000, 1450000, 0.9, null, null),
  ('b0000000-0000-0000-0000-000000000004', '310.92.44.51.01.004', 'Speedmaster Dark Side of the Moon', 'Dark Side White', 'Speedmaster', 'Black Ceramic', 44.25, 'automatic', '9900', 50, 'White', 'Rubber', 1610000, 1500000, 1.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '310.92.44.51.01.005', 'Speedmaster Dark Side of the Moon', 'Dark Side Pitch Black', 'Speedmaster', 'Black Ceramic', 44.25, 'automatic', '9900', 50, 'Black', 'Rubber', 1570000, 1380000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '310.92.44.50.06.001', 'Speedmaster Grey Side of the Moon', 'Grey Side Apollo 8', 'Speedmaster', 'Grey Ceramic', 44.25, 'manual', '3869', 50, 'Grey', 'Rubber', 1430000, 1250000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '310.92.44.50.06.002', 'Speedmaster Grey Side of the Moon', 'Grey Side Meteorite', 'Speedmaster', 'Grey Ceramic', 44.25, 'manual', '3869', 50, 'Meteorite', 'Rubber', 1500000, 1350000, 0.7, null, null),

  -- --------------------------------------------------------
  -- Speedmaster Moonphase
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '304.30.44.52.01.001', 'Speedmaster Moonphase', null, 'Speedmaster', 'Stainless Steel', 44.25, 'automatic', '9904', 50, 'Black', 'Stainless Steel', 1080000, 880000, -0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '304.33.44.52.01.001', 'Speedmaster Moonphase', null, 'Speedmaster', 'Stainless Steel', 44.25, 'automatic', '9904', 50, 'Black', 'Leather', 1120000, 850000, -0.8, null, null),
  ('b0000000-0000-0000-0000-000000000004', '304.33.44.52.03.001', 'Speedmaster Moonphase', null, 'Speedmaster', 'Stainless Steel', 44.25, 'automatic', '9904', 50, 'Blue', 'Leather', 1390000, 1050000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '304.30.43.52.01.001', 'Speedmaster Moonphase Meteorite', null, 'Speedmaster', 'Stainless Steel', 43.0, 'manual', '9914', 50, 'Meteorite Black', 'Stainless Steel', 1710000, 1600000, 1.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '304.30.43.52.06.001', 'Speedmaster Moonphase Meteorite', null, 'Speedmaster', 'Stainless Steel', 43.0, 'manual', '9914', 50, 'Meteorite Blue', 'Stainless Steel', 1710000, 1620000, 1.8, null, null),

  -- --------------------------------------------------------
  -- Speedmaster Chrono Chime
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '522.50.45.52.03.001', 'Speedmaster Chrono Chime', null, 'Speedmaster', 'Sedna Gold', 45.0, 'manual', '1932', 30, 'Blue', 'Leather', 45000000, 50000000, 2.0, null, 'https://www.omegawatches.com/en-us/watch-omega-speedmaster-chrono-chime-co-axial-master-chronometer-chronograph-45-mm-52250455203001'),

  -- --------------------------------------------------------
  -- Speedmaster Heritage / Discontinued but tracked
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '311.30.42.30.01.005', 'Speedmaster Moonwatch Professional', 'Pre-Moon Cal. 1861', 'Speedmaster', 'Stainless Steel', 42.0, 'manual', '1861', 50, 'Black', 'Stainless Steel', null, 550000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '3570.50.00', 'Speedmaster Professional Moonwatch', 'Last Manual Speedy', 'Speedmaster', 'Stainless Steel', 42.0, 'manual', '1861', 50, 'Black', 'Stainless Steel', null, 500000, 0.5, null, null);

-- ************************************************************
--  SEAMASTER COLLECTION
-- ************************************************************

insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values

  -- --------------------------------------------------------
  -- Seamaster Diver 300M — 42mm Steel on Bracelet
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '210.30.42.20.01.001', 'Seamaster Diver 300M', null, 'Seamaster', 'Stainless Steel', 42.0, 'automatic', '8800', 300, 'Black', 'Stainless Steel', 670000, 530000, 0.3, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-diver-300m-co-axial-master-chronometer-42-mm-21030422001001'),
  ('b0000000-0000-0000-0000-000000000004', '210.30.42.20.03.001', 'Seamaster Diver 300M', null, 'Seamaster', 'Stainless Steel', 42.0, 'automatic', '8800', 300, 'Blue', 'Stainless Steel', 670000, 520000, 0.5, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-diver-300m-co-axial-master-chronometer-42-mm-21030422003001'),
  ('b0000000-0000-0000-0000-000000000004', '210.30.42.20.06.001', 'Seamaster Diver 300M', null, 'Seamaster', 'Stainless Steel', 42.0, 'automatic', '8800', 300, 'Grey', 'Stainless Steel', 670000, 520000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '210.30.42.20.10.001', 'Seamaster Diver 300M', null, 'Seamaster', 'Stainless Steel', 42.0, 'automatic', '8800', 300, 'Green', 'Stainless Steel', 670000, 540000, 0.8, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-diver-300m-co-axial-master-chronometer-42-mm-21030422010001'),
  ('b0000000-0000-0000-0000-000000000004', '210.30.42.20.06.002', 'Seamaster Diver 300M', null, 'Seamaster', 'Stainless Steel', 42.0, 'automatic', '8800', 300, 'Silver', 'Stainless Steel', 670000, 530000, 0.4, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-diver-300m-co-axial-master-chronometer-42-mm-21030422006002'),

  -- --------------------------------------------------------
  -- Seamaster Diver 300M — 42mm Steel on Rubber
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '210.32.42.20.01.001', 'Seamaster Diver 300M', null, 'Seamaster', 'Stainless Steel', 42.0, 'automatic', '8800', 300, 'Black', 'Rubber', 600000, 470000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '210.32.42.20.03.001', 'Seamaster Diver 300M', null, 'Seamaster', 'Stainless Steel', 42.0, 'automatic', '8800', 300, 'Blue', 'Rubber', 600000, 460000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '210.32.42.20.03.002', 'Seamaster Diver 300M', 'Summer Blue', 'Seamaster', 'Stainless Steel', 42.0, 'automatic', '8800', 300, 'Summer Blue', 'Rubber', 600000, 480000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '210.32.42.20.06.001', 'Seamaster Diver 300M', null, 'Seamaster', 'Stainless Steel', 42.0, 'automatic', '8800', 300, 'Grey', 'Rubber', 600000, 460000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '210.32.42.20.01.002', 'Seamaster Diver 300M', null, 'Seamaster', 'Stainless Steel', 42.0, 'automatic', '8800', 300, 'Black', 'Rubber', 600000, 475000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '210.32.42.20.01.003', 'Seamaster Diver 300M No Date', null, 'Seamaster', 'Stainless Steel', 42.0, 'automatic', '8806', 300, 'Black', 'Rubber', 590000, 490000, 1.0, null, null),
  ('b0000000-0000-0000-0000-000000000004', '210.30.42.20.01.002', 'Seamaster Diver 300M No Date', null, 'Seamaster', 'Stainless Steel', 42.0, 'automatic', '8806', 300, 'Black', 'Stainless Steel', 650000, 530000, 0.8, null, null),

  -- --------------------------------------------------------
  -- Seamaster Diver 300M — Two-Tone / Sedna Gold
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '210.22.42.20.03.002', 'Seamaster Diver 300M', 'Nekton Edition', 'Seamaster', 'Steel/Sedna Gold', 42.0, 'automatic', '8800', 300, 'Blue', 'Rubber', 980000, 790000, -0.6, null, null),
  ('b0000000-0000-0000-0000-000000000004', '210.22.42.20.01.004', 'Seamaster Diver 300M', null, 'Seamaster', 'Steel/Sedna Gold', 42.0, 'automatic', '8800', 300, 'Black', 'Rubber', 980000, 780000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '210.20.42.20.03.001', 'Seamaster Diver 300M', null, 'Seamaster', 'Steel/Sedna Gold', 42.0, 'automatic', '8800', 300, 'Blue', 'Steel/Sedna Gold', 1230000, 950000, -0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '210.62.42.20.03.001', 'Seamaster Diver 300M', null, 'Seamaster', 'Sedna Gold', 42.0, 'automatic', '8800', 300, 'Blue', 'Sedna Gold', 2830000, 2300000, -1.0, null, null),

  -- --------------------------------------------------------
  -- Seamaster Diver 300M — Titanium / Special Editions
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '210.90.42.20.01.001', 'Seamaster Diver 300M 007 Edition', 'No Time To Die', 'Seamaster', 'Titanium', 42.0, 'automatic', '8806', 300, 'Tropical Brown', 'Titanium Mesh', 1130000, 900000, -1.5, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-diver-300m-co-axial-master-chronometer-42-mm-21090422001001'),
  ('b0000000-0000-0000-0000-000000000004', '210.92.42.20.01.001', 'Seamaster Diver 300M 007 Edition', 'No Time To Die on NATO', 'Seamaster', 'Titanium', 42.0, 'automatic', '8806', 300, 'Tropical Brown', 'NATO', 980000, 820000, -0.8, null, null),
  ('b0000000-0000-0000-0000-000000000004', '210.90.42.20.01.003', 'Seamaster Diver 300M', 'Bronze Gold', 'Seamaster', 'Bronze Gold', 42.0, 'automatic', '8806', 300, 'Black', 'Bronze Gold', 2700000, 2500000, 2.0, null, null),
  ('b0000000-0000-0000-0000-000000000004', '210.92.42.20.01.003', 'Seamaster Diver 300M', 'Bronze Gold on Rubber', 'Seamaster', 'Bronze Gold', 42.0, 'automatic', '8806', 300, 'Black', 'Rubber', 2200000, 2000000, 1.5, null, null),

  -- --------------------------------------------------------
  -- Seamaster Diver 300M — Chronograph
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '210.30.44.51.01.001', 'Seamaster Diver 300M Chronograph', null, 'Seamaster', 'Stainless Steel', 44.0, 'automatic', '9900', 300, 'Black', 'Stainless Steel', 830000, 680000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '210.30.44.51.03.001', 'Seamaster Diver 300M Chronograph', null, 'Seamaster', 'Stainless Steel', 44.0, 'automatic', '9900', 300, 'Blue', 'Stainless Steel', 830000, 690000, 0.4, null, null),

  -- --------------------------------------------------------
  -- Seamaster Planet Ocean 600M — Previous Gen (43.5mm)
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '215.30.44.21.01.001', 'Seamaster Planet Ocean 600M', null, 'Seamaster', 'Stainless Steel', 43.5, 'automatic', '8900', 600, 'Black', 'Stainless Steel', 720000, 580000, 0.1, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-planet-ocean-600m-co-axial-master-chronometer-43-5-mm-21530442101001'),
  ('b0000000-0000-0000-0000-000000000004', '215.30.44.21.03.001', 'Seamaster Planet Ocean 600M', null, 'Seamaster', 'Stainless Steel', 43.5, 'automatic', '8900', 600, 'Blue', 'Stainless Steel', 720000, 600000, 0.3, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-planet-ocean-600m-co-axial-master-chronometer-43-5-mm-21530442103001'),
  ('b0000000-0000-0000-0000-000000000004', '215.32.44.21.01.001', 'Seamaster Planet Ocean 600M', null, 'Seamaster', 'Stainless Steel', 43.5, 'automatic', '8900', 600, 'Black', 'Rubber', 670000, 540000, -0.2, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-planet-ocean-600m-co-axial-master-chronometer-43-5-mm-21532442101001'),
  ('b0000000-0000-0000-0000-000000000004', '215.30.40.20.03.001', 'Seamaster Planet Ocean 600M', null, 'Seamaster', 'Stainless Steel', 39.5, 'automatic', '8800', 600, 'Blue', 'Stainless Steel', 690000, 560000, 0.2, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-planet-ocean-600m-co-axial-master-chronometer-39-5-mm-21530402003001'),

  -- --------------------------------------------------------
  -- Seamaster Planet Ocean 600M — 4th Gen 2025 (42mm)
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '217.30.42.21.01.001', 'Seamaster Planet Ocean 600M', null, 'Seamaster', 'Stainless Steel', 42.0, 'automatic', '8912', 600, 'Black', 'Stainless Steel', 920000, 860000, 1.5, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-planet-ocean-600m-co-axial-master-chronometer-42-mm-21730422101001'),
  ('b0000000-0000-0000-0000-000000000004', '217.30.42.21.01.002', 'Seamaster Planet Ocean 600M', null, 'Seamaster', 'Stainless Steel', 42.0, 'automatic', '8912', 600, 'Black', 'Stainless Steel', 920000, 870000, 1.8, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-planet-ocean-600m-co-axial-master-chronometer-42-mm-21730422101002'),
  ('b0000000-0000-0000-0000-000000000004', '217.30.42.21.01.003', 'Seamaster Planet Ocean 600M', 'Orange Bezel', 'Seamaster', 'Stainless Steel', 42.0, 'automatic', '8912', 600, 'Black', 'Stainless Steel', 950000, 900000, 2.0, null, null),
  ('b0000000-0000-0000-0000-000000000004', '217.32.42.21.01.001', 'Seamaster Planet Ocean 600M', null, 'Seamaster', 'Stainless Steel', 42.0, 'automatic', '8912', 600, 'Black', 'Rubber', 860000, 800000, 1.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '217.32.42.21.01.002', 'Seamaster Planet Ocean 600M', null, 'Seamaster', 'Stainless Steel', 42.0, 'automatic', '8912', 600, 'Blue', 'Rubber', 860000, 810000, 1.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '217.32.42.21.01.003', 'Seamaster Planet Ocean 600M', 'Orange Bezel on Rubber', 'Seamaster', 'Stainless Steel', 42.0, 'automatic', '8912', 600, 'Black', 'Rubber', 890000, 840000, 1.8, null, null),
  ('b0000000-0000-0000-0000-000000000004', '217.32.42.21.01.004', 'Seamaster Planet Ocean 600M', null, 'Seamaster', 'Stainless Steel', 42.0, 'automatic', '8912', 600, 'Blue', 'Rubber', 890000, 830000, 1.6, null, null),

  -- --------------------------------------------------------
  -- Seamaster Planet Ocean Ultra Deep 6000M
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '215.30.46.21.01.001', 'Seamaster Planet Ocean Ultra Deep', null, 'Seamaster', 'O-MEGASTEEL', 45.5, 'automatic', '8912', 6000, 'Black', 'O-MEGASTEEL', 1280000, 1100000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '215.30.46.21.03.001', 'Seamaster Planet Ocean Ultra Deep', null, 'Seamaster', 'O-MEGASTEEL', 45.5, 'automatic', '8912', 6000, 'Blue', 'O-MEGASTEEL', 1280000, 1120000, 0.7, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-planet-ocean-6000m-co-axial-master-chronometer-45-5-mm-21530462103001'),
  ('b0000000-0000-0000-0000-000000000004', '215.30.46.21.06.001', 'Seamaster Planet Ocean Ultra Deep', null, 'Seamaster', 'O-MEGASTEEL', 45.5, 'automatic', '8912', 6000, 'Grey', 'O-MEGASTEEL', 1280000, 1080000, 0.3, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-planet-ocean-6000m-co-axial-master-chronometer-45-5-mm-21530462106001'),
  ('b0000000-0000-0000-0000-000000000004', '215.30.46.21.03.002', 'Seamaster Planet Ocean Ultra Deep', '75th Anniversary', 'Seamaster', 'O-MEGASTEEL', 45.5, 'automatic', '8912', 6000, 'Blue', 'O-MEGASTEEL', 1350000, 1200000, 0.9, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-planet-ocean-6000m-co-axial-master-chronometer-45-5-mm-21530462103002'),
  ('b0000000-0000-0000-0000-000000000004', '215.92.46.21.01.001', 'Seamaster Planet Ocean Ultra Deep', null, 'Seamaster', 'Titanium', 45.5, 'automatic', '8912', 6000, 'Black', 'NATO', 1350000, 1150000, 0.4, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-planet-ocean-6000m-co-axial-master-chronometer-45-5-mm-21592462101001'),

  -- --------------------------------------------------------
  -- Seamaster 300 Heritage — 41mm
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '234.30.41.21.01.001', 'Seamaster 300', null, 'Seamaster', 'Stainless Steel', 41.0, 'automatic', '8912', 300, 'Black', 'Stainless Steel', 740000, 600000, 0.2, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-300-co-axial-master-chronometer-41-mm-23430412101001'),
  ('b0000000-0000-0000-0000-000000000004', '234.30.41.21.03.001', 'Seamaster 300', null, 'Seamaster', 'Stainless Steel', 41.0, 'automatic', '8912', 300, 'Blue', 'Stainless Steel', 740000, 610000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '234.30.41.21.03.002', 'Seamaster 300', 'Summer Blue', 'Seamaster', 'Stainless Steel', 41.0, 'automatic', '8912', 300, 'Light Blue', 'Stainless Steel', 740000, 620000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000004', '234.32.41.21.01.001', 'Seamaster 300', null, 'Seamaster', 'Stainless Steel', 41.0, 'automatic', '8912', 300, 'Black', 'Leather', 690000, 570000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '234.32.41.21.10.001', 'Seamaster 300', null, 'Seamaster', 'Stainless Steel', 41.0, 'automatic', '8912', 300, 'Bronze Green', 'Leather', 690000, 580000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '234.10.39.20.01.001', 'Seamaster 300', null, 'Seamaster', 'Stainless Steel/Bronze Gold', 39.0, 'automatic', '8913', 300, 'Black', 'Stainless Steel/Bronze Gold', 1000000, 850000, 0.5, null, null),

  -- --------------------------------------------------------
  -- Seamaster Aqua Terra 150M — 41mm
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '220.10.41.21.01.001', 'Seamaster Aqua Terra 150M', null, 'Seamaster', 'Stainless Steel', 41.0, 'automatic', '8900', 150, 'Black', 'Stainless Steel', 640000, 500000, -0.2, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-41-mm-22010412101001'),
  ('b0000000-0000-0000-0000-000000000004', '220.10.41.21.01.002', 'Seamaster Aqua Terra 150M', null, 'Seamaster', 'Stainless Steel', 41.0, 'automatic', '8900', 150, 'Black', 'Stainless Steel', 640000, 510000, 0.1, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-41-mm-22010412101002'),
  ('b0000000-0000-0000-0000-000000000004', '220.10.41.21.02.001', 'Seamaster Aqua Terra 150M', null, 'Seamaster', 'Stainless Steel', 41.0, 'automatic', '8900', 150, 'Silver', 'Stainless Steel', 640000, 500000, 0.0, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-41-mm-22010412102001'),
  ('b0000000-0000-0000-0000-000000000004', '220.10.41.21.03.001', 'Seamaster Aqua Terra 150M', null, 'Seamaster', 'Stainless Steel', 41.0, 'automatic', '8900', 150, 'Blue', 'Stainless Steel', 640000, 510000, 0.3, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-41-mm-22010412103001'),
  ('b0000000-0000-0000-0000-000000000004', '220.10.41.21.03.004', 'Seamaster Aqua Terra 150M', null, 'Seamaster', 'Stainless Steel', 41.0, 'automatic', '8900', 150, 'Blue', 'Stainless Steel', 640000, 500000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '220.10.41.21.06.001', 'Seamaster Aqua Terra 150M', null, 'Seamaster', 'Stainless Steel', 41.0, 'automatic', '8900', 150, 'Grey', 'Stainless Steel', 640000, 490000, -0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '220.10.41.21.10.001', 'Seamaster Aqua Terra 150M', null, 'Seamaster', 'Stainless Steel', 41.0, 'automatic', '8900', 150, 'Green', 'Stainless Steel', 640000, 520000, 0.5, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-41-mm-22010412110001'),
  ('b0000000-0000-0000-0000-000000000004', '220.12.41.21.02.001', 'Seamaster Aqua Terra 150M', null, 'Seamaster', 'Stainless Steel', 41.0, 'automatic', '8900', 150, 'Silver', 'Leather', 590000, 460000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '220.12.41.21.03.001', 'Seamaster Aqua Terra 150M', null, 'Seamaster', 'Stainless Steel', 41.0, 'automatic', '8900', 150, 'Blue', 'Leather', 590000, 470000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '220.12.41.21.03.008', 'Seamaster Aqua Terra 150M', null, 'Seamaster', 'Stainless Steel', 41.0, 'automatic', '8900', 150, 'Blue', 'Rubber', 590000, 480000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '220.12.41.21.10.001', 'Seamaster Aqua Terra 150M', null, 'Seamaster', 'Stainless Steel', 41.0, 'automatic', '8900', 150, 'Green', 'Leather', 590000, 480000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '220.32.41.21.03.001', 'Seamaster Aqua Terra 150M', null, 'Seamaster', 'Stainless Steel', 41.0, 'automatic', '8900', 150, 'Blue', 'Rubber', 590000, 470000, 0.2, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-41-mm-22032412103001'),

  -- --------------------------------------------------------
  -- Seamaster Aqua Terra 150M — 38mm
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '220.10.38.20.01.001', 'Seamaster Aqua Terra 150M', null, 'Seamaster', 'Stainless Steel', 38.0, 'automatic', '8800', 150, 'Black', 'Stainless Steel', 620000, 490000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '220.10.38.20.03.001', 'Seamaster Aqua Terra 150M', null, 'Seamaster', 'Stainless Steel', 38.0, 'automatic', '8800', 150, 'Blue', 'Stainless Steel', 660000, 520000, 0.3, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-38-mm-22010382003001'),
  ('b0000000-0000-0000-0000-000000000004', '220.10.38.20.02.001', 'Seamaster Aqua Terra 150M', null, 'Seamaster', 'Stainless Steel', 38.0, 'automatic', '8800', 150, 'Silver', 'Stainless Steel', 620000, 490000, 0.0, null, null),
  ('b0000000-0000-0000-0000-000000000004', '220.10.38.20.01.004', 'Seamaster Aqua Terra 150M', null, 'Seamaster', 'Stainless Steel', 38.0, 'automatic', '8800', 150, 'Black', 'Stainless Steel', 620000, 500000, 0.2, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-38-mm-22010382001004'),
  ('b0000000-0000-0000-0000-000000000004', '220.12.38.20.10.001', 'Seamaster Aqua Terra 150M', null, 'Seamaster', 'Stainless Steel', 38.0, 'automatic', '8800', 150, 'Olive Green', 'Leather', 570000, 460000, 0.1, null, null),

  -- --------------------------------------------------------
  -- Seamaster Aqua Terra 150M — Worldtimer 43mm
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '220.10.43.22.03.001', 'Seamaster Aqua Terra 150M GMT Worldtimer', null, 'Seamaster', 'Stainless Steel', 43.0, 'automatic', '8938', 150, 'Blue', 'Stainless Steel', 1120000, 660000, -2.0, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-gmt-worldtimer-43-mm-22010432203001'),
  ('b0000000-0000-0000-0000-000000000004', '220.12.43.22.03.001', 'Seamaster Aqua Terra 150M GMT Worldtimer', null, 'Seamaster', 'Stainless Steel', 43.0, 'automatic', '8938', 150, 'Blue', 'Rubber', 1090000, 640000, -2.2, null, 'https://www.omegawatches.com/en-us/watch-omega-seamaster-aqua-terra-150m-co-axial-master-chronometer-gmt-worldtimer-43-mm-22012432203001'),

  -- --------------------------------------------------------
  -- Seamaster Railmaster — 40mm
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '220.10.40.20.01.001', 'Seamaster Railmaster', null, 'Seamaster', 'Stainless Steel', 40.0, 'automatic', '8800', 150, 'Black', 'Stainless Steel', 575000, 420000, -0.5, null, 'https://www.omegawatches.com/watch-omega-seamaster-railmaster-co-axial-master-chronometer-40-mm-22010402001001'),
  ('b0000000-0000-0000-0000-000000000004', '220.10.40.20.03.001', 'Seamaster Railmaster', null, 'Seamaster', 'Stainless Steel', 40.0, 'automatic', '8800', 150, 'Blue', 'Stainless Steel', 575000, 430000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '220.10.40.20.06.001', 'Seamaster Railmaster', null, 'Seamaster', 'Stainless Steel', 40.0, 'automatic', '8800', 150, 'Grey', 'Stainless Steel', 575000, 400000, -0.7, null, null),
  ('b0000000-0000-0000-0000-000000000004', '220.12.40.20.01.001', 'Seamaster Railmaster', null, 'Seamaster', 'Stainless Steel', 40.0, 'automatic', '8800', 150, 'Black', 'Leather', 525000, 390000, -0.6, null, null),
  ('b0000000-0000-0000-0000-000000000004', '220.12.40.20.03.001', 'Seamaster Railmaster', null, 'Seamaster', 'Stainless Steel', 40.0, 'automatic', '8800', 150, 'Blue', 'Leather', 525000, 400000, -0.4, null, null),

  -- Heritage / discontinued but market-tracked
  ('b0000000-0000-0000-0000-000000000004', '232.30.42.21.01.003', 'Seamaster Planet Ocean 600M', 'Skyfall Bond', 'Seamaster', 'Stainless Steel', 42.0, 'automatic', '8500', 600, 'Black', 'Stainless Steel', null, 550000, 0.8, null, null);

-- ************************************************************
--  CONSTELLATION COLLECTION
-- ************************************************************

insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values

  -- --------------------------------------------------------
  -- Constellation 41mm — Steel
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '131.10.41.21.01.001', 'Constellation', null, 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8900', 50, 'Black', 'Stainless Steel', 640000, 500000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.41.21.03.001', 'Constellation', null, 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8900', 50, 'Blue', 'Stainless Steel', 640000, 520000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.41.21.06.001', 'Constellation', null, 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8900', 50, 'Grey', 'Stainless Steel', 640000, 500000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.12.41.21.01.001', 'Constellation', null, 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8900', 50, 'Black', 'Rubber', 600000, 470000, -0.1, null, 'https://www.omegawatches.com/en-us/watch-omega-constellation-co-axial-master-chronometer-41-mm-13112412101001'),
  ('b0000000-0000-0000-0000-000000000004', '131.12.41.21.06.001', 'Constellation', null, 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8900', 50, 'Grey', 'Rubber', 600000, 460000, -0.2, null, 'https://www.omegawatches.com/en-us/watch-omega-constellation-co-axial-master-chronometer-41-mm-13112412106001'),

  -- --------------------------------------------------------
  -- Constellation 41mm — Steel on Leather
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '131.33.41.21.01.001', 'Constellation', null, 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8900', 50, 'Black', 'Leather', 580000, 450000, -0.3, null, 'https://www.omegawatches.com/en-us/watch-omega-constellation-co-axial-master-chronometer-41-mm-13133412101001'),
  ('b0000000-0000-0000-0000-000000000004', '131.33.41.21.03.001', 'Constellation', null, 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8900', 50, 'Blue', 'Leather', 580000, 460000, 0.1, null, 'https://www.omegawatches.com/en-us/watch-omega-constellation-co-axial-master-chronometer-41-mm-13133412103001'),
  ('b0000000-0000-0000-0000-000000000004', '131.33.41.21.06.001', 'Constellation', null, 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8900', 50, 'Grey', 'Leather', 580000, 440000, -0.2, null, 'https://www.omegawatches.com/en-us/watch-omega-constellation-co-axial-master-chronometer-41-mm-13133412106001'),
  ('b0000000-0000-0000-0000-000000000004', '131.33.41.21.04.001', 'Constellation', null, 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8900', 50, 'Champagne', 'Leather', 580000, 450000, 0.0, null, 'https://www.omegawatches.com/en-us/watch-omega-constellation-co-axial-master-chronometer-41-mm-13133412104001'),

  -- --------------------------------------------------------
  -- Constellation 41mm — Meteorite
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '131.30.41.21.99.001', 'Constellation', 'Meteorite Blue', 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8900', 50, 'Blue Meteorite', 'Leather', 930000, 850000, 1.5, null, 'https://www.omegawatches.com/en-us/watch-omega-constellation-co-axial-master-chronometer-41-mm-13130412199001'),
  ('b0000000-0000-0000-0000-000000000004', '131.30.41.21.99.002', 'Constellation', 'Meteorite Silver', 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8900', 50, 'Silver Meteorite', 'Leather', 960000, 880000, 1.8, null, 'https://www.omegawatches.com/en-us/watch-omega-constellation-co-axial-master-chronometer-41-mm-13130412199002'),
  ('b0000000-0000-0000-0000-000000000004', '131.30.41.21.99.003', 'Constellation', 'Meteorite Green', 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8900', 50, 'Green Meteorite', 'Leather', 960000, 890000, 2.0, null, 'https://www.omegawatches.com/en-us/watch-omega-constellation-co-axial-master-chronometer-41-mm-13130412199003'),

  -- --------------------------------------------------------
  -- Constellation 41mm — Two-Tone / Gold
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '131.20.41.21.01.001', 'Constellation', null, 'Constellation', 'Steel/Sedna Gold', 41.0, 'automatic', '8900', 50, 'Black', 'Steel/Sedna Gold', 1200000, 920000, -0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.20.41.21.03.001', 'Constellation', null, 'Constellation', 'Steel/Sedna Gold', 41.0, 'automatic', '8900', 50, 'Blue', 'Steel/Sedna Gold', 1200000, 940000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.25.41.21.01.001', 'Constellation', null, 'Constellation', 'Steel/Yellow Gold', 41.0, 'automatic', '8900', 50, 'Black', 'Steel/Yellow Gold', 1200000, 910000, -0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.50.41.21.03.001', 'Constellation', null, 'Constellation', 'Sedna Gold', 41.0, 'automatic', '8900', 50, 'Blue', 'Sedna Gold', 3200000, 2700000, -0.8, null, null),

  -- --------------------------------------------------------
  -- Constellation 39mm — Steel
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '131.10.39.20.01.001', 'Constellation', null, 'Constellation', 'Stainless Steel', 39.0, 'automatic', '8800', 50, 'Black', 'Stainless Steel', 620000, 490000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.39.20.02.001', 'Constellation', null, 'Constellation', 'Stainless Steel', 39.0, 'automatic', '8800', 50, 'Silver', 'Stainless Steel', 620000, 490000, 0.0, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.39.20.03.001', 'Constellation', null, 'Constellation', 'Stainless Steel', 39.0, 'automatic', '8800', 50, 'Blue', 'Stainless Steel', 660000, 540000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.39.20.06.001', 'Constellation', null, 'Constellation', 'Stainless Steel', 39.0, 'automatic', '8800', 50, 'Grey', 'Stainless Steel', 620000, 480000, -0.1, null, null),

  -- --------------------------------------------------------
  -- Constellation 36mm — Steel (unisex)
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '131.10.36.20.01.001', 'Constellation', null, 'Constellation', 'Stainless Steel', 36.0, 'automatic', '8800', 50, 'Black', 'Stainless Steel', 590000, 470000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.36.20.02.001', 'Constellation', null, 'Constellation', 'Stainless Steel', 36.0, 'automatic', '8800', 50, 'Silver', 'Stainless Steel', 590000, 460000, 0.0, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.36.20.03.001', 'Constellation', null, 'Constellation', 'Stainless Steel', 36.0, 'automatic', '8800', 50, 'Blue', 'Stainless Steel', 590000, 480000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.36.20.06.001', 'Constellation', null, 'Constellation', 'Stainless Steel', 36.0, 'automatic', '8800', 50, 'Grey', 'Stainless Steel', 590000, 460000, -0.1, null, 'https://www.omegawatches.com/en-us/watch-omega-constellation-co-axial-master-chronometer-36-mm-13110362006001'),
  ('b0000000-0000-0000-0000-000000000004', '131.10.36.60.01.001', 'Constellation', null, 'Constellation', 'Stainless Steel', 36.0, 'quartz', '4061', 50, 'Black', 'Stainless Steel', 350000, 280000, -0.5, null, null),

  -- --------------------------------------------------------
  -- Constellation Globemaster Annual Calendar — 41mm
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '130.33.41.22.02.001', 'Constellation Globemaster Annual Calendar', null, 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8922', 100, 'Silver', 'Leather', 920000, 700000, -0.4, null, 'https://www.omegawatches.com/en-us/watch-omega-constellation-globemaster-co-axial-master-chronometer-annual-calendar-41-mm-13033412202001'),
  ('b0000000-0000-0000-0000-000000000004', '130.33.41.22.06.001', 'Constellation Globemaster Annual Calendar', null, 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8922', 100, 'Grey', 'Leather', 920000, 710000, -0.2, null, 'https://www.omegawatches.com/en-us/watch-omega-constellation-globemaster-co-axial-master-chronometer-annual-calendar-41-mm-13033412206001'),
  ('b0000000-0000-0000-0000-000000000004', '130.33.41.22.10.001', 'Constellation Globemaster Annual Calendar', null, 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8922', 100, 'Green', 'Leather', 920000, 720000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '130.30.41.22.03.001', 'Constellation Globemaster', null, 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8922', 100, 'Blue', 'Stainless Steel', 830000, 650000, -0.3, null, null);

-- ************************************************************
--  DE VILLE COLLECTION
-- ************************************************************

insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values

  -- --------------------------------------------------------
  -- De Ville Prestige — Previous Gen 39.5mm (Cal. 2500)
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '424.13.40.20.02.001', 'De Ville Prestige', null, 'De Ville', 'Stainless Steel', 39.5, 'automatic', '2500', 30, 'Silver', 'Leather', 350000, 250000, -0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.13.40.20.03.001', 'De Ville Prestige', null, 'De Ville', 'Stainless Steel', 39.5, 'automatic', '2500', 30, 'Blue', 'Leather', 410000, 300000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.13.40.20.01.001', 'De Ville Prestige', null, 'De Ville', 'Stainless Steel', 39.5, 'automatic', '2500', 30, 'Black', 'Leather', 350000, 260000, -0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.10.40.20.02.003', 'De Ville Prestige', null, 'De Ville', 'Stainless Steel', 39.5, 'automatic', '2500', 30, 'Silver', 'Stainless Steel', 400000, 280000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.10.40.20.03.004', 'De Ville Prestige', null, 'De Ville', 'Stainless Steel', 39.5, 'automatic', '2500', 30, 'Blue', 'Stainless Steel', 450000, 320000, 0.2, null, null),

  -- --------------------------------------------------------
  -- De Ville Prestige — 3rd Gen 40mm (Cal. 8800)
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '434.10.40.20.01.001', 'De Ville Prestige', null, 'De Ville', 'Stainless Steel', 40.0, 'automatic', '8800', 30, 'Black', 'Stainless Steel', 480000, 400000, 0.3, null, 'https://www.omegawatches.com/en-us/watch-omega-de-ville-prestige-co-axial-master-chronometer-40-mm-43410402001001'),
  ('b0000000-0000-0000-0000-000000000004', '434.10.40.20.02.001', 'De Ville Prestige', null, 'De Ville', 'Stainless Steel', 40.0, 'automatic', '8800', 30, 'Silver', 'Stainless Steel', 480000, 390000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '434.10.40.20.03.001', 'De Ville Prestige', null, 'De Ville', 'Stainless Steel', 40.0, 'automatic', '8800', 30, 'Blue', 'Stainless Steel', 480000, 400000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '434.10.40.20.06.001', 'De Ville Prestige', null, 'De Ville', 'Stainless Steel', 40.0, 'automatic', '8800', 30, 'Grey', 'Stainless Steel', 480000, 390000, 0.0, null, null),
  ('b0000000-0000-0000-0000-000000000004', '434.13.40.20.01.001', 'De Ville Prestige', null, 'De Ville', 'Stainless Steel', 40.0, 'automatic', '8800', 30, 'Black', 'Leather', 430000, 360000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '434.13.40.20.02.001', 'De Ville Prestige', null, 'De Ville', 'Stainless Steel', 40.0, 'automatic', '8800', 30, 'Silver', 'Leather', 408000, 340000, -0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '434.13.40.20.03.001', 'De Ville Prestige', null, 'De Ville', 'Stainless Steel', 40.0, 'automatic', '8800', 30, 'Blue', 'Leather', 430000, 360000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '434.13.40.20.06.001', 'De Ville Prestige', null, 'De Ville', 'Stainless Steel', 40.0, 'automatic', '8800', 30, 'Grey', 'Leather', 430000, 350000, -0.2, null, null),

  -- --------------------------------------------------------
  -- De Ville Tresor — 40mm (Manual, Cal. 8910 / 8511)
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '435.13.40.21.02.001', 'De Ville Tresor', null, 'De Ville', 'Stainless Steel', 40.0, 'manual', '8910', 30, 'Silver', 'Leather', 480000, 380000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '435.13.40.21.03.001', 'De Ville Tresor', null, 'De Ville', 'Stainless Steel', 40.0, 'manual', '8910', 30, 'Blue', 'Leather', 660000, 530000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '435.13.40.21.06.001', 'De Ville Tresor', null, 'De Ville', 'Stainless Steel', 40.0, 'manual', '8910', 30, 'Grey', 'Leather', 480000, 370000, -0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '435.18.40.21.02.001', 'De Ville Tresor', null, 'De Ville', 'Sedna Gold', 40.0, 'manual', '8910', 30, 'Silver', 'Leather', 1400000, 1100000, -0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '435.53.40.21.02.001', 'De Ville Tresor', null, 'De Ville', 'Sedna Gold', 40.0, 'manual', '8910', 30, 'Silver', 'Sedna Gold', 2200000, 1800000, -0.7, null, null),

  -- --------------------------------------------------------
  -- De Ville Hour Vision — 41mm (Cal. 8900)
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '433.10.41.21.02.001', 'De Ville Hour Vision', null, 'De Ville', 'Stainless Steel', 41.0, 'automatic', '8900', 100, 'Silver', 'Stainless Steel', 700000, 500000, -0.3, null, 'https://www.omegawatches.com/en-us/watch-omega-de-ville-hour-vision-co-axial-master-chronometer-41-mm-43310412102001'),
  ('b0000000-0000-0000-0000-000000000004', '433.10.41.21.10.001', 'De Ville Hour Vision', null, 'De Ville', 'Stainless Steel', 41.0, 'automatic', '8900', 100, 'Green', 'Stainless Steel', 700000, 520000, 0.2, null, 'https://www.omegawatches.com/en-us/watch-omega-de-ville-hour-vision-co-axial-master-chronometer-41-mm-43310412110001'),
  ('b0000000-0000-0000-0000-000000000004', '433.33.41.21.03.001', 'De Ville Hour Vision', null, 'De Ville', 'Stainless Steel', 41.0, 'automatic', '8900', 100, 'Blue', 'Leather', 650000, 480000, -0.2, null, 'https://www.omegawatches.com/en-us/watch-omega-de-ville-hour-vision-co-axial-master-chronometer-41-mm-43333412103001'),
  ('b0000000-0000-0000-0000-000000000004', '433.13.41.21.02.001', 'De Ville Hour Vision', null, 'De Ville', 'Stainless Steel', 41.0, 'automatic', '8900', 100, 'Silver', 'Leather', 650000, 470000, -0.4, null, 'https://www.omegawatches.com/en-us/watch-omega-de-ville-hour-vision-co-axial-master-chronometer-41-mm-43313412102001'),
  ('b0000000-0000-0000-0000-000000000004', '433.13.41.21.10.001', 'De Ville Hour Vision', null, 'De Ville', 'Stainless Steel', 41.0, 'automatic', '8900', 100, 'Green', 'Leather', 650000, 490000, 0.1, null, 'https://www.omegawatches.com/en-us/watch-omega-de-ville-hour-vision-co-axial-master-chronometer-41-mm-43313412110001'),
  ('b0000000-0000-0000-0000-000000000004', '433.33.41.22.03.001', 'De Ville Hour Vision Annual Calendar', null, 'De Ville', 'Stainless Steel', 41.0, 'automatic', '8611', 100, 'Blue', 'Leather', 900000, 700000, 0.3, null, 'https://www.omegawatches.com/en-us/watch-omega-de-ville-hour-vision-co-axial-master-chronometer-annual-calendar-41-mm-43333412203001'),

  -- --------------------------------------------------------
  -- De Ville Tourbillon — Numbered Editions
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '529.53.43.22.01.001', 'De Ville Tourbillon', null, 'De Ville', 'Sedna Gold', 43.0, 'manual', '2640', 30, 'Black', 'Leather', 19200000, 17500000, 0.5, null, 'https://www.omegawatches.com/en-us/watch-omega-de-ville-tourbillon-co-axial-master-chronometer-43-mm-52953432201001'),
  ('b0000000-0000-0000-0000-000000000004', '529.53.43.22.99.001', 'De Ville Tourbillon', null, 'De Ville', 'Canopus Gold', 43.0, 'manual', '2640', 30, 'Aventurine', 'Leather', 22800000, 21000000, 0.8, null, 'https://www.omegawatches.com/en-us/watch-omega-de-ville-tourbillon-co-axial-master-chronometer-43-mm-52953432299001'),

  -- --------------------------------------------------------
  -- Olympic 1932 Chrono Chime (Specialities)
  -- --------------------------------------------------------
  ('b0000000-0000-0000-0000-000000000004', '522.53.45.52.04.001', 'Olympic 1932 Chrono Chime', null, 'Specialities', 'Sedna Gold', 45.0, 'manual', '1932', 30, 'White', 'Leather', 45000000, 50000000, 2.0, null, 'https://www.omegawatches.com/en-us/watch-omega-specialities-olympic-1932-chrono-chime-52253455204001');

--     'b0000000-0000-0000-0000-000000000005',
--     'b0000000-0000-0000-0000-000000000006'
--   );
-- ============================================================

-- ============================================================
-- CARTIER (~80 watches)
-- brand_id = 'b0000000-0000-0000-0000-000000000005'
-- ============================================================
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  -- Santos de Cartier
  ('b0000000-0000-0000-0000-000000000005', 'WSSA0029', 'Santos de Cartier Medium', null, 'Santos', 'Stainless Steel', 35.1, 'automatic', '1847 MC', 100, 'Silver', 'Stainless Steel/Leather', 775000, 700000, 1.5, null, 'https://www.cartier.com/en-us/watches/collections/santos-de-cartier/santos-de-cartier-watch-CRWSSA0029.html'),
  ('b0000000-0000-0000-0000-000000000005', 'WSSA0044', 'Santos de Cartier Medium', null, 'Santos', 'Stainless Steel/18k Yellow Gold', 35.1, 'automatic', '1847 MC', 100, 'Silver', 'Stainless Steel/18k Yellow Gold', 1195000, 1050000, 0.8, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSSA0018', 'Santos de Cartier Large', null, 'Santos', 'Stainless Steel', 39.8, 'automatic', '1847 MC', 100, 'Silver', 'Stainless Steel/Leather', 865000, 780000, 1.2, null, 'https://www.cartier.com/en-us/watches/collections/santos-de-cartier/santos-de-cartier-watch-CRWSSA0018.html'),
  ('b0000000-0000-0000-0000-000000000005', 'WSSA0030', 'Santos de Cartier Large', null, 'Santos', 'Stainless Steel/18k Yellow Gold', 39.8, 'automatic', '1847 MC', 100, 'Silver', 'Stainless Steel/18k Yellow Gold', 1350000, 1180000, 0.9, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSSA0037', 'Santos de Cartier Large', 'Black Santos', 'Santos', 'Stainless Steel/ADLC', 39.8, 'automatic', '1847 MC', 100, 'Black', 'Stainless Steel/Rubber', 935000, 870000, 2.0, null, 'https://www.cartier.com/en-us/watches/collections/santos-de-cartier/santos-de-cartier-watch-CRWSSA0037.html'),
  ('b0000000-0000-0000-0000-000000000005', 'WSSA0039', 'Santos de Cartier Large', null, 'Santos', 'Stainless Steel/ADLC', 39.8, 'automatic', '1847 MC', 100, 'Black', 'Rubber/Leather', 935000, 850000, 1.6, null, 'https://www.cartier.com/en-us/watches/collections/santos-de-cartier/santos-de-cartier-watch-CRWSSA0039.html'),
  ('b0000000-0000-0000-0000-000000000005', 'WSSA0048', 'Santos de Cartier Large', 'Blue Santos', 'Santos', 'Stainless Steel/ADLC', 39.8, 'automatic', '1847 MC', 100, 'Blue', 'Stainless Steel/Rubber', 935000, 880000, 1.8, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSSA0050', 'Santos de Cartier Large', 'Green Santos', 'Santos', 'Stainless Steel', 39.8, 'automatic', '1847 MC', 100, 'Green', 'Stainless Steel/Leather', 865000, 820000, 2.2, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGSA0019', 'Santos de Cartier Medium', null, 'Santos', 'Stainless Steel/18k Rose Gold', 35.1, 'automatic', '1847 MC', 100, 'Silver', 'Stainless Steel/18k Rose Gold', 1195000, 1060000, 0.7, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGSA0016', 'Santos de Cartier Large', null, 'Santos', 'Stainless Steel/18k Rose Gold', 39.8, 'automatic', '1847 MC', 100, 'Silver', 'Stainless Steel/18k Rose Gold', 1350000, 1200000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGSA0007', 'Santos de Cartier Large', null, 'Santos', '18k Rose Gold', 39.8, 'automatic', '1847 MC', 100, 'Silver', '18k Rose Gold/Leather', 2750000, 2400000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSSA0062', 'Santos de Cartier Large Skeleton', null, 'Santos', 'Stainless Steel', 39.8, 'manual', '9611 MC', 100, 'Skeleton', 'Stainless Steel/Leather', 1150000, 1050000, 1.3, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WHSA0015', 'Santos de Cartier Large Chronograph', null, 'Santos', 'Stainless Steel', 43.3, 'automatic', '1904-CH MC', 100, 'Silver', 'Stainless Steel/Leather', 1200000, 1050000, 0.5, null, null),
  -- Santos-Dumont
  ('b0000000-0000-0000-0000-000000000005', 'WSSA0022', 'Santos-Dumont Large', null, 'Santos-Dumont', 'Stainless Steel', 43.5, 'quartz', null, 30, 'Silver', 'Leather', 480000, 420000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSSA0032', 'Santos-Dumont Extra-Large', null, 'Santos-Dumont', 'Stainless Steel', 46.6, 'manual', '430 MC', 30, 'Silver', 'Leather', 720000, 640000, 0.5, null, 'https://www.cartier.com/en-us/watches/collections/santos-de-cartier/santos-dumont-watch-CRWSSA0032.html'),
  ('b0000000-0000-0000-0000-000000000005', 'WGSA0021', 'Santos-Dumont Large', null, 'Santos-Dumont', '18k Rose Gold', 43.5, 'quartz', null, 30, 'Silver', 'Leather', 1230000, 1080000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGSA0022', 'Santos-Dumont Small', null, 'Santos-Dumont', '18k Rose Gold', 38.0, 'quartz', null, 30, 'Silver', 'Leather', 1270000, 1100000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGSA0034', 'Santos-Dumont Extra-Large', null, 'Santos-Dumont', '18k Rose Gold', 46.6, 'manual', '430 MC', 30, 'Silver', 'Leather', 1870000, 1600000, 0.7, null, null),
  -- Tank Must
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0041', 'Tank Must Large', null, 'Tank', 'Stainless Steel', 33.7, 'quartz', null, 30, 'White', 'Leather', 355000, 320000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0042', 'Tank Must Small', null, 'Tank', 'Stainless Steel', 29.5, 'quartz', null, 30, 'Silver', 'Leather', 310000, 280000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0051', 'Tank Must Small', null, 'Tank', 'Stainless Steel', 29.5, 'quartz', null, 30, 'Silver', 'Stainless Steel', 405000, 360000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0052', 'Tank Must Large', null, 'Tank', 'Stainless Steel', 33.7, 'quartz', null, 30, 'Silver', 'Stainless Steel', 440000, 390000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0053', 'Tank Must Extra-Large', null, 'Tank', 'Stainless Steel', 41.0, 'automatic', '1847 MC', 30, 'Silver', 'Leather', 580000, 520000, 0.6, null, 'https://www.cartier.com/en-us/watches/collections/tank/tank-must-watch-CRWSTA0053.html'),
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0040', 'Tank Must Extra-Large', null, 'Tank', 'Stainless Steel', 41.0, 'automatic', '1847 MC', 30, 'Silver', 'Leather', 580000, 520000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0054', 'Tank Must Large', 'Red Tank Must', 'Tank', 'Stainless Steel', 33.7, 'quartz', null, 30, 'Red', 'Leather', 355000, 340000, 1.2, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0055', 'Tank Must Large', 'Blue Tank Must', 'Tank', 'Stainless Steel', 33.7, 'quartz', null, 30, 'Blue', 'Leather', 390000, 370000, 1.0, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0056', 'Tank Must Large', 'Green Tank Must', 'Tank', 'Stainless Steel', 33.7, 'quartz', null, 30, 'Green', 'Leather', 390000, 370000, 0.9, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0085', 'Tank Must Large', null, 'Tank', 'Stainless Steel', 33.7, 'quartz', null, 30, 'Black', 'Leather', 355000, 310000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0065', 'Tank Must Large SolarBeat', null, 'Tank', 'Stainless Steel', 33.7, 'quartz', null, 30, 'Silver', 'Leather', 345000, 320000, 0.3, null, null),
  -- Tank Francaise
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0074', 'Tank Francaise Medium', null, 'Tank', 'Stainless Steel', 32.0, 'quartz', null, 30, 'Silver', 'Stainless Steel', 470000, 430000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0067', 'Tank Francaise Large', null, 'Tank', 'Stainless Steel', 36.7, 'automatic', '1847 MC', 30, 'Silver', 'Stainless Steel', 620000, 560000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0068', 'Tank Francaise Small', null, 'Tank', 'Stainless Steel', 25.0, 'quartz', null, 30, 'Silver', 'Stainless Steel', 420000, 380000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0105', 'Tank Francaise Medium', null, 'Tank', 'Stainless Steel/18k Yellow Gold', 32.0, 'quartz', null, 30, 'Silver', 'Stainless Steel/18k Yellow Gold', 870000, 780000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0129', 'Tank Francaise Medium', null, 'Tank', 'Stainless Steel/18k Rose Gold', 32.0, 'quartz', null, 30, 'Silver', 'Stainless Steel/18k Rose Gold', 870000, 790000, 0.4, null, null),
  -- Tank Louis Cartier
  ('b0000000-0000-0000-0000-000000000005', 'WGTA0010', 'Tank Louis Cartier Small', null, 'Tank', '18k Rose Gold', 29.5, 'manual', '8971 MC', 30, 'Silver', 'Leather', 1320000, 1200000, 0.5, null, 'https://www.cartier.com/en-us/watches/collections/tank/tank-louis-cartier-watch-CRWGTA0010.html'),
  ('b0000000-0000-0000-0000-000000000005', 'WGTA0011', 'Tank Louis Cartier Large', null, 'Tank', '18k Rose Gold', 33.7, 'manual', '8971 MC', 30, 'Silver', 'Leather', 1520000, 1380000, 0.6, null, 'https://www.cartier.com/en-us/watches/collections/tank/tank-louis-cartier-watch-CRWGTA0011.html'),
  ('b0000000-0000-0000-0000-000000000005', 'WGTA0046', 'Tank Louis Cartier Small', null, 'Tank', '18k Yellow Gold', 29.5, 'manual', '8971 MC', 30, 'Silver', 'Leather', 1320000, 1200000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGTA0057', 'Tank Louis Cartier Large', null, 'Tank', '18k Yellow Gold', 33.7, 'manual', '8971 MC', 30, 'Silver', 'Leather', 1520000, 1400000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGTA0091', 'Tank Louis Cartier XL', null, 'Tank', '18k Rose Gold', 40.4, 'automatic', '1847 MC', 30, 'Silver', 'Leather', 2350000, 2100000, 0.8, null, 'https://www.cartier.com/en-us/watches/collections/tank/tank-louis-cartier-watch-CRWGTA0091.html'),
  -- Tank Americaine
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0083', 'Tank Americaine Large', null, 'Tank', 'Stainless Steel', 44.4, 'automatic', '1847 MC', 30, 'Silver', 'Leather', 735000, 650000, 1.0, null, 'https://www.cartier.com/en-us/watches/collections/tank/tank-americaine-watch-CRWSTA0083.html'),
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0082', 'Tank Americaine Small', null, 'Tank', 'Stainless Steel', 34.8, 'quartz', null, 30, 'Silver', 'Leather', 545000, 490000, 0.7, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0081', 'Tank Americaine Medium', null, 'Tank', 'Stainless Steel', 39.2, 'automatic', '1847 MC', 30, 'Silver', 'Leather', 640000, 570000, 0.8, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGTA0089', 'Tank Americaine Large', null, 'Tank', '18k Rose Gold', 44.4, 'automatic', '1847 MC', 30, 'Silver', 'Leather', 2200000, 1900000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGTA0090', 'Tank Americaine Small', null, 'Tank', '18k Rose Gold', 34.8, 'quartz', null, 30, 'Silver', 'Leather', 1600000, 1400000, 0.4, null, null),
  -- Ballon Bleu de Cartier
  ('b0000000-0000-0000-0000-000000000005', 'WSBB0049', 'Ballon Bleu de Cartier 42mm', null, 'Ballon Bleu', 'Stainless Steel', 42.0, 'automatic', '1847 MC', 30, 'Silver', 'Stainless Steel', 825000, 550000, -1.5, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSBB0039', 'Ballon Bleu de Cartier 40mm', null, 'Ballon Bleu', 'Stainless Steel', 40.0, 'automatic', '1847 MC', 30, 'Silver', 'Leather', 750000, 510000, -1.2, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSBB0040', 'Ballon Bleu de Cartier 40mm', null, 'Ballon Bleu', 'Stainless Steel', 40.0, 'automatic', '1847 MC', 30, 'Silver', 'Stainless Steel', 805000, 560000, -1.0, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSBB0060', 'Ballon Bleu de Cartier 40mm', null, 'Ballon Bleu', 'Stainless Steel', 40.0, 'automatic', '1847 MC', 30, 'Dark Grey', 'Stainless Steel', 805000, 570000, -0.8, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSBB0061', 'Ballon Bleu de Cartier 40mm', null, 'Ballon Bleu', 'Stainless Steel', 40.0, 'automatic', '1847 MC', 30, 'Blue', 'Stainless Steel', 880000, 620000, -0.6, null, 'https://www.cartier.com/en-us/watches/collections/ballon-de-cartier/ballon-bleu-de-cartier-watch-CRWSBB0061.html'),
  ('b0000000-0000-0000-0000-000000000005', 'WSBB0046', 'Ballon Bleu de Cartier 33mm', null, 'Ballon Bleu', 'Stainless Steel', 33.0, 'automatic', '076', 30, 'Pink', 'Stainless Steel', 745000, 500000, -0.5, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSBB0044', 'Ballon Bleu de Cartier 33mm', null, 'Ballon Bleu', 'Stainless Steel', 33.0, 'automatic', '076', 30, 'Silver', 'Stainless Steel', 700000, 470000, -0.7, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSBB0070', 'Ballon Bleu de Cartier 33mm', null, 'Ballon Bleu', 'Stainless Steel/18k Rose Gold', 33.0, 'automatic', '076', 30, 'Silver', 'Stainless Steel/18k Rose Gold', 1150000, 850000, -0.4, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGBB0055', 'Ballon Bleu de Cartier 40mm', null, 'Ballon Bleu', '18k Rose Gold', 40.0, 'automatic', '1847 MC', 30, 'Silver', '18k Rose Gold', 3350000, 2600000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSBB0015', 'Ballon Bleu de Cartier 42mm', null, 'Ballon Bleu', 'Stainless Steel', 42.0, 'automatic', '1847 MC', 30, 'Black/Carbon', 'Stainless Steel', 825000, 530000, -1.8, null, 'https://www.cartier.com/en-us/watches/ballon-bleu-de-cartier/WSBB0015.html'),
  -- Pasha de Cartier
  ('b0000000-0000-0000-0000-000000000005', 'WSPA0039', 'Pasha de Cartier Chronograph 41mm', null, 'Pasha', 'Stainless Steel', 41.0, 'automatic', '1904-CH MC', 100, 'Blue', 'Stainless Steel', 1095000, 900000, -0.4, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSPA0040', 'Pasha de Cartier 35mm', null, 'Pasha', 'Stainless Steel', 35.0, 'automatic', '1847 MC', 100, 'Salmon', 'Stainless Steel', 775000, 650000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSPA0041', 'Pasha de Cartier 35mm', null, 'Pasha', 'Stainless Steel', 35.0, 'automatic', '1847 MC', 100, 'Blue', 'Stainless Steel', 775000, 640000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSPA0038', 'Pasha de Cartier 41mm', null, 'Pasha', 'Stainless Steel', 41.0, 'automatic', '1847 MC', 100, 'Blue', 'Stainless Steel/Leather', 935000, 750000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSPA0042', 'Pasha de Cartier 41mm', null, 'Pasha', 'Stainless Steel', 41.0, 'automatic', '1847 MC', 100, 'Grey', 'Stainless Steel/Leather', 935000, 740000, -0.2, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGPA0014', 'Pasha de Cartier 41mm', null, 'Pasha', '18k Rose Gold', 41.0, 'automatic', '1847 MC', 100, 'Silver', 'Leather', 2700000, 2200000, -0.5, null, null),
  -- Panthere de Cartier
  ('b0000000-0000-0000-0000-000000000005', 'WSPN0006', 'Panthere de Cartier Small', null, 'Panthere', 'Stainless Steel', 22.0, 'quartz', null, 30, 'Silver', 'Stainless Steel', 440000, 390000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSPN0007', 'Panthere de Cartier Medium', null, 'Panthere', 'Stainless Steel', 27.0, 'quartz', null, 30, 'Silver', 'Stainless Steel', 500000, 450000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSPN0019', 'Panthere de Cartier Mini', null, 'Panthere', 'Stainless Steel', 25.0, 'quartz', null, 30, 'Silver', 'Stainless Steel', 400000, 340000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSPN0024', 'Panthere de Cartier Medium', null, 'Panthere', 'Stainless Steel/18k Yellow Gold', 27.0, 'quartz', null, 30, 'Silver', 'Stainless Steel/18k Yellow Gold', 920000, 800000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGPN0009', 'Panthere de Cartier Medium', null, 'Panthere', '18k Yellow Gold', 27.0, 'quartz', null, 30, 'Silver', '18k Yellow Gold', 2800000, 2400000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WJPN0015', 'Panthere de Cartier Medium', null, 'Panthere', '18k Rose Gold/Diamonds', 27.0, 'quartz', null, 30, 'Silver', '18k Rose Gold', 3600000, 3100000, 0.3, null, null),
  -- Ronde de Cartier
  ('b0000000-0000-0000-0000-000000000005', 'WSRN0035', 'Ronde Must de Cartier 40mm', null, 'Ronde', 'Stainless Steel', 40.0, 'automatic', '1847 MC', 30, 'Silver', 'Stainless Steel', 765000, 550000, -0.5, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSRN0031', 'Ronde Must de Cartier 36mm', null, 'Ronde', 'Stainless Steel', 36.0, 'quartz', null, 30, 'Silver', 'Leather', 390000, 300000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSRN0032', 'Ronde Must de Cartier 29mm', null, 'Ronde', 'Stainless Steel', 29.0, 'quartz', null, 30, 'Silver', 'Leather', 340000, 280000, -0.2, null, null),
  -- Cle de Cartier
  ('b0000000-0000-0000-0000-000000000005', 'WSCL0018', 'Cle de Cartier 40mm', null, 'Cle', 'Stainless Steel', 40.0, 'automatic', '1847 MC', 30, 'Silver', 'Leather', 750000, 520000, -0.8, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSCL0006', 'Cle de Cartier 35mm', null, 'Cle', 'Stainless Steel', 35.0, 'automatic', '1847 MC', 30, 'Silver', 'Leather', 650000, 440000, -0.6, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGCL0019', 'Cle de Cartier 40mm', null, 'Cle', '18k Rose Gold', 40.0, 'automatic', '1847 MC', 30, 'Silver', 'Leather', 2200000, 1600000, -0.4, null, null),
  -- Drive de Cartier
  ('b0000000-0000-0000-0000-000000000005', 'WSNM0015', 'Drive de Cartier 40mm', null, 'Drive', 'Stainless Steel', 40.0, 'automatic', '1847 MC', 30, 'Silver', 'Leather', 700000, 480000, -1.0, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSNM0008', 'Drive de Cartier Extra-Flat', null, 'Drive', '18k Rose Gold', 38.0, 'manual', '430 MC', 30, 'Grey', 'Leather', 2200000, 1700000, -0.5, null, null),
  -- Baignoire
  ('b0000000-0000-0000-0000-000000000005', 'WGBA0009', 'Baignoire Small', null, 'Baignoire', '18k Rose Gold', 23.0, 'quartz', null, 30, 'Silver', 'Leather', 1150000, 900000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGBA0010', 'Baignoire Medium', null, 'Baignoire', '18k Rose Gold', 31.6, 'quartz', null, 30, 'Silver', 'Leather', 1350000, 1050000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGBA0020', 'Baignoire Small', null, 'Baignoire', '18k Yellow Gold', 23.0, 'quartz', null, 30, 'Silver', 'Leather', 1150000, 880000, 0.2, null, null),
  -- Tonneau
  ('b0000000-0000-0000-0000-000000000005', 'WGTN0006', 'Tonneau Large', null, 'Tonneau', '18k Rose Gold', 42.0, 'manual', '430 MC', 30, 'Silver', 'Leather', 2700000, 2200000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGTN0007', 'Tonneau Small', null, 'Tonneau', '18k Rose Gold', 34.0, 'manual', '430 MC', 30, 'Silver', 'Leather', 2400000, 1950000, 0.4, null, null),
  -- Cartier Prive
  ('b0000000-0000-0000-0000-000000000005', 'WGTN0042', 'Prive Tonneau Large', null, 'Prive', '18k Rose Gold', 42.0, 'manual', '430 MC', 30, 'Silver', 'Leather', 3100000, 3600000, 2.5, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGTN0043', 'Prive Tonneau Large', null, 'Prive', 'Platinum', 42.0, 'manual', '430 MC', 30, 'Silver', 'Leather', 4200000, 5000000, 3.0, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'W7200001', 'Prive Crash', null, 'Prive', '18k Rose Gold', 28.0, 'manual', '8970 MC', 30, 'Silver', 'Leather', null, 8000000, 5.0, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGTA0109', 'Prive Tank a Guichets', null, 'Prive', '18k Rose Gold', 36.0, 'manual', '9905 MC', 30, 'Silver', 'Leather', 3500000, 4200000, 3.5, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGTA0110', 'Prive Tank a Guichets', null, 'Prive', '18k Yellow Gold', 36.0, 'manual', '9905 MC', 30, 'Silver', 'Leather', 3500000, 4100000, 3.2, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGTA0111', 'Prive Tank a Guichets', null, 'Prive', 'Platinum', 36.0, 'manual', '9905 MC', 30, 'Silver', 'Leather', 4800000, 5800000, 4.0, null, null);

-- ============================================================
-- TAG HEUER (~120 watches — COMPLETE CATALOG)
-- brand_id = 'b0000000-0000-0000-0000-000000000006'
-- Scraped from tagheuer.com/us collections Feb 2026
-- ============================================================
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  -- Monaco
  ('b0000000-0000-0000-0000-000000000006', 'CBL2111.BA0644', 'Monaco Chronograph', 'Steve McQueen', 'Monaco', 'Stainless Steel', 39.0, 'automatic', 'Heuer 02', 100, 'Blue', 'Stainless Steel', 725000, 580000, 0.4, null, 'https://www.tagheuer.com/us/en/timepieces/collections/tag-heuer-monaco/39-mm-heuer-02/CBL2111.BA0644.html'),
  ('b0000000-0000-0000-0000-000000000006', 'CBL2111.FC6453', 'Monaco Chronograph', null, 'Monaco', 'Stainless Steel', 39.0, 'automatic', 'Heuer 02', 100, 'Blue', 'Leather', 695000, 560000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CBL2113.BA0644', 'Monaco Chronograph', null, 'Monaco', 'Stainless Steel', 39.0, 'automatic', 'Heuer 02', 100, 'Black', 'Stainless Steel', 725000, 550000, -0.2, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CBL2113.FC6177', 'Monaco Chronograph', null, 'Monaco', 'Stainless Steel', 39.0, 'automatic', 'Heuer 02', 100, 'Black', 'Leather', 695000, 530000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CBS2210.FC6534', 'Monaco Chronograph Glassbox', 'Panda Monaco', 'Monaco', 'Stainless Steel', 39.0, 'automatic', 'TH20-00', 100, 'White/Black', 'Leather', 695000, 620000, 2.1, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WW2110.FC6177', 'Monaco Date', null, 'Monaco', 'Stainless Steel', 37.0, 'automatic', 'Calibre 6', 100, 'Blue', 'Leather', 480000, 410000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CBN2A1B.BA0643', 'Monaco Chronograph', null, 'Monaco', 'Stainless Steel', 39.0, 'automatic', 'Heuer 02', 100, 'Blue', 'Stainless Steel', 695000, 550000, 0.4, null, 'https://www.tagheuer.com/us/en/timepieces/collections/tag-heuer-monaco/CBN2A1B.BA0643.html'),
  ('b0000000-0000-0000-0000-000000000006', 'CBW2190.FC8356', 'Monaco Split-Seconds Chronograph', 'Monaco F1', 'Monaco', 'Ceramic', 41.0, 'automatic', 'Heuer 02S', 100, 'Red', 'Rubber', 1500000, 1650000, 3.5, null, null),
  -- Carrera Chronograph
  ('b0000000-0000-0000-0000-000000000006', 'CBS2210.BA0048', 'Carrera Chronograph Glassbox 39mm', 'Panda Carrera', 'Carrera', 'Stainless Steel', 39.0, 'automatic', 'TH20-00', 100, 'White/Black', 'Stainless Steel', 640000, 540000, 1.5, null, 'https://www.tagheuer.com/us/en/timepieces/collections/tag-heuer-carrera/39-mm-th20-00/CBS2210.BA0048.html'),
  ('b0000000-0000-0000-0000-000000000006', 'CBS2212.BA0048', 'Carrera Chronograph Glassbox 39mm', null, 'Carrera', 'Stainless Steel', 39.0, 'automatic', 'TH20-00', 100, 'Blue', 'Stainless Steel', 640000, 530000, 1.2, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CBS2212.FC6535', 'Carrera Chronograph Glassbox 39mm', 'Blue Glassbox', 'Carrera', 'Stainless Steel', 39.0, 'automatic', 'TH20-00', 100, 'Blue', 'Leather', 610000, 520000, 1.5, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CBS2216.BA0048', 'Carrera Chronograph Glassbox 39mm', null, 'Carrera', 'Stainless Steel', 39.0, 'automatic', 'TH20-00', 100, 'Green', 'Stainless Steel', 640000, 530000, 1.0, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CBN2A1A.BA0643', 'Carrera Chronograph 44mm', null, 'Carrera', 'Stainless Steel', 44.0, 'automatic', 'Heuer 02', 100, 'Black', 'Stainless Steel', 595000, 430000, -0.6, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CBN2A1G.BA0643', 'Carrera Chronograph 44mm', null, 'Carrera', 'Stainless Steel', 44.0, 'automatic', 'Heuer 02', 100, 'Blue', 'Stainless Steel', 595000, 440000, -0.4, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CBN2011.BA0642', 'Carrera Porsche Chronograph', 'Porsche Carrera', 'Carrera', 'Stainless Steel', 44.0, 'automatic', 'Heuer 02', 100, 'Black', 'Stainless Steel', 620000, 490000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CBG2A1Z.BA0658', 'Carrera Heuer 02T Tourbillon', null, 'Carrera', 'Stainless Steel', 45.0, 'automatic', 'Heuer 02T', 100, 'Black Skeleton', 'Stainless Steel', 2500000, 1800000, -2.0, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CBN2010.BA0642', 'Carrera Chronograph 44mm', null, 'Carrera', 'Stainless Steel', 44.0, 'automatic', 'Heuer 02', 100, 'Silver', 'Stainless Steel', 595000, 420000, -0.5, null, null),
  -- Carrera Day-Date / Twin-Time (2025)
  ('b0000000-0000-0000-0000-000000000006', 'WDA2110.FC6614', 'Carrera Day-Date 41mm', null, 'Carrera', 'Stainless Steel', 41.0, 'automatic', 'TH31-02', 100, 'Black', 'Leather', 430000, 400000, 1.5, null, 'https://www.tagheuer.com/us/en/timepieces/collections/tag-heuer-carrera/41-mm-th31-02/WDA2110.FC6614.html'),
  ('b0000000-0000-0000-0000-000000000006', 'WDA2111.BA0043', 'Carrera Day-Date 41mm', null, 'Carrera', 'Stainless Steel', 41.0, 'automatic', 'TH31-02', 100, 'Black', 'Stainless Steel', 455000, 430000, 1.2, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WDA2112.BA0043', 'Carrera Day-Date 41mm', null, 'Carrera', 'Stainless Steel', 41.0, 'automatic', 'TH31-02', 100, 'Blue', 'Stainless Steel', 455000, 435000, 1.4, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WDA2113.BA0043', 'Carrera Day-Date 41mm', null, 'Carrera', 'Stainless Steel', 41.0, 'automatic', 'TH31-02', 100, 'Red', 'Stainless Steel', 475000, 450000, 1.6, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WDA2111.BD0001', 'Carrera Day-Date 41mm', null, 'Carrera', 'Stainless Steel/18k Rose Gold', 41.0, 'automatic', 'TH31-02', 100, 'Black', 'Stainless Steel/18k Rose Gold', 915000, 870000, 0.8, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WDA2114.BA0043', 'Carrera Date Twin-Time 41mm', null, 'Carrera', 'Stainless Steel', 41.0, 'automatic', 'TH31-03', 100, 'Teal Green', 'Stainless Steel', 525000, 500000, 1.8, null, null),
  -- Carrera Date
  ('b0000000-0000-0000-0000-000000000006', 'WBN2110.BA0639', 'Carrera Date 39mm', null, 'Carrera', 'Stainless Steel', 39.0, 'automatic', 'Calibre 5', 100, 'Black', 'Stainless Steel', 310000, 250000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBN2112.BA0639', 'Carrera Date 39mm', null, 'Carrera', 'Stainless Steel', 39.0, 'automatic', 'Calibre 5', 100, 'Blue', 'Stainless Steel', 310000, 255000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBN2110.FC6504', 'Carrera Date 39mm', null, 'Carrera', 'Stainless Steel', 39.0, 'automatic', 'Calibre 5', 100, 'Black', 'Leather', 285000, 240000, 0.1, null, null),
  -- Aquaracer Professional 300 43mm
  ('b0000000-0000-0000-0000-000000000006', 'WBP201A.BA0632', 'Aquaracer Professional 300 Date 43mm', null, 'Aquaracer', 'Stainless Steel', 43.0, 'automatic', 'Calibre 5', 300, 'Blue', 'Stainless Steel', 325000, 260000, 0.2, null, 'https://www.tagheuer.com/us/en/timepieces/collections/tag-heuer-aquaracer/43-mm-calibre-5-automatic/WBP201A.BA0632.html'),
  ('b0000000-0000-0000-0000-000000000006', 'WBP201B.BA0632', 'Aquaracer Professional 300 Date 43mm', null, 'Aquaracer', 'Stainless Steel', 43.0, 'automatic', 'Calibre 5', 300, 'Blue', 'Stainless Steel', 325000, 265000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBP2010.BA0632', 'Aquaracer Professional 300 GMT 43mm', null, 'Aquaracer', 'Stainless Steel', 43.0, 'automatic', 'Calibre 7', 300, 'Black', 'Stainless Steel', 365000, 290000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBP201C.BA0632', 'Aquaracer Professional 300 Date 43mm', null, 'Aquaracer', 'Stainless Steel', 43.0, 'automatic', 'Calibre 5', 300, 'Black', 'Stainless Steel', 325000, 260000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBP201D.FT6197', 'Aquaracer Professional 300 Date 43mm', null, 'Aquaracer', 'Stainless Steel', 43.0, 'automatic', 'Calibre 5', 300, 'Black', 'Rubber', 300000, 245000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBP208B.BF0631', 'Aquaracer Professional 300 Date 43mm', null, 'Aquaracer', 'Stainless Steel/18k Rose Gold', 43.0, 'automatic', 'Calibre 5', 300, 'Black', 'Stainless Steel/18k Rose Gold', 510000, 420000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBP5A8A.BF0619', 'Aquaracer Professional 1000 Superdiver', null, 'Aquaracer', 'Titanium', 45.0, 'automatic', 'TH30-00', 1000, 'Black', 'Rubber', 700000, 560000, -0.8, null, null),
  -- Aquaracer Professional 300 42mm (New Gen)
  ('b0000000-0000-0000-0000-000000000006', 'WBP5110.BA0013', 'Aquaracer Professional 300 Date 42mm', null, 'Aquaracer', 'Stainless Steel', 42.0, 'automatic', 'TH31-00', 300, 'Black', 'Stainless Steel', 395000, 370000, 1.5, null, 'https://www.tagheuer.com/us/en/timepieces/collections/tag-heuer-aquaracer/42-mm-th31-00-cosc/WBP5110.BA0013.html'),
  ('b0000000-0000-0000-0000-000000000006', 'WBP5111.BA0013', 'Aquaracer Professional 300 Date 42mm', null, 'Aquaracer', 'Stainless Steel', 42.0, 'automatic', 'TH31-00', 300, 'Blue', 'Stainless Steel', 395000, 375000, 1.6, null, null),
  -- Aquaracer Professional 200
  ('b0000000-0000-0000-0000-000000000006', 'WBP2110.BA0627', 'Aquaracer Professional 200 Date 40mm', null, 'Aquaracer', 'Stainless Steel', 40.0, 'automatic', 'Calibre 5', 200, 'Black', 'Stainless Steel', 275000, 220000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBP2111.BA0627', 'Aquaracer Professional 200 Date 40mm', null, 'Aquaracer', 'Stainless Steel', 40.0, 'automatic', 'Calibre 5', 200, 'Blue', 'Stainless Steel', 275000, 225000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBP1110.BA0627', 'Aquaracer Professional 200 40mm', null, 'Aquaracer', 'Stainless Steel', 40.0, 'quartz', null, 200, 'Black', 'Stainless Steel', 185000, 150000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBP1112.FT6199', 'Aquaracer Professional 200 Solargraph 40mm', null, 'Aquaracer', 'Stainless Steel', 40.0, 'quartz', 'TH50-00', 200, 'Blue', 'Rubber', 210000, 180000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBP2150.BA0627', 'Aquaracer Professional 200 Date 40mm', null, 'Aquaracer', 'Stainless Steel/Gold Plated', 40.0, 'automatic', 'Calibre 5', 200, 'Black', 'Stainless Steel', 315000, 260000, 0.6, null, null),
  -- Formula 1
  ('b0000000-0000-0000-0000-000000000006', 'CAZ101AC.BA0842', 'Formula 1 Chronograph 43mm', null, 'Formula 1', 'Stainless Steel', 43.0, 'quartz', null, 200, 'Blue', 'Stainless Steel', 195000, 150000, -0.1, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CAZ101AJ.BA0842', 'Formula 1 Chronograph 43mm', null, 'Formula 1', 'Stainless Steel', 43.0, 'quartz', null, 200, 'Black', 'Stainless Steel', 195000, 148000, -0.2, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CAZ101E.BA0842', 'Formula 1 Chronograph 43mm', null, 'Formula 1', 'Stainless Steel', 43.0, 'quartz', null, 200, 'Red', 'Stainless Steel', 195000, 155000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CAZ2011.BA0876', 'Formula 1 Calibre 16 Chronograph 44mm', null, 'Formula 1', 'Stainless Steel', 44.0, 'automatic', 'Calibre 16', 200, 'Black', 'Stainless Steel', 285000, 220000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WAZ1110.BA0875', 'Formula 1 41mm', null, 'Formula 1', 'Stainless Steel', 41.0, 'quartz', null, 200, 'Black', 'Stainless Steel', 165000, 105000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WAZ1112.BA0875', 'Formula 1 41mm', null, 'Formula 1', 'Stainless Steel', 41.0, 'quartz', null, 200, 'Black', 'Stainless Steel', 160000, 100000, -0.2, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBY1111.BA0042', 'Formula 1 Solargraph 38mm', null, 'Formula 1', 'Stainless Steel', 38.0, 'quartz', 'TH50-00', 200, 'White', 'Stainless Steel', 210000, 200000, 1.5, null, null),
  -- Autavia
  ('b0000000-0000-0000-0000-000000000006', 'CBE511A.BA0687', 'Autavia Chronograph 42mm', null, 'Autavia', 'Stainless Steel', 42.0, 'automatic', 'Heuer 02', 100, 'Black', 'Stainless Steel', 575000, 430000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CBE511A.FC8279', 'Autavia Chronograph 42mm', null, 'Autavia', 'Stainless Steel', 42.0, 'automatic', 'Heuer 02', 100, 'Black', 'Leather', 560000, 420000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBE5114.FC8266', 'Autavia 42mm', null, 'Autavia', 'Stainless Steel', 42.0, 'automatic', 'Calibre 5', 100, 'Black', 'Leather', 325000, 260000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBE5114.EB0173', 'Autavia 42mm', null, 'Autavia', 'Stainless Steel', 42.0, 'automatic', 'Calibre 5', 100, 'Black', 'Fabric', 320000, 255000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBE5116.FC8266', 'Autavia 42mm', null, 'Autavia', 'Stainless Steel', 42.0, 'automatic', 'Calibre 5', 100, 'Blue', 'Leather', 325000, 265000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBE5116.EB0173', 'Autavia 42mm', null, 'Autavia', 'Stainless Steel', 42.0, 'automatic', 'Calibre 5', 100, 'Blue', 'Fabric', 320000, 260000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBE511A.BA0687', 'Autavia 42mm', null, 'Autavia', 'Stainless Steel', 42.0, 'automatic', 'Calibre 5', 100, 'Black', 'Stainless Steel', 355000, 280000, 0.2, null, null),
  -- Connected
  ('b0000000-0000-0000-0000-000000000006', 'SBR8010.BT6255', 'Connected Calibre E4 42mm', null, 'Connected', 'Stainless Steel', 42.0, 'quartz', 'Calibre E4', 50, 'Digital', 'Rubber', 195000, 100000, -2.5, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'SBR8010.BC6608', 'Connected Calibre E4 42mm', null, 'Connected', 'Stainless Steel', 42.0, 'quartz', 'Calibre E4', 50, 'Digital', 'Stainless Steel', 215000, 120000, -2.0, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'SBR8A10.BA0616', 'Connected Calibre E4 45mm', null, 'Connected', 'Stainless Steel', 45.0, 'quartz', 'Calibre E4', 50, 'Digital', 'Stainless Steel', 235000, 130000, -2.2, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'SBR8A10.BT6259', 'Connected Calibre E4 45mm', null, 'Connected', 'Stainless Steel', 45.0, 'quartz', 'Calibre E4', 50, 'Digital', 'Rubber', 215000, 115000, -2.3, null, null),
  -- Link
  ('b0000000-0000-0000-0000-000000000006', 'WBC2110.BA0603', 'Link Calibre 5 41mm', null, 'Link', 'Stainless Steel', 41.0, 'automatic', 'Calibre 5', 100, 'Black', 'Stainless Steel', 410000, 300000, -0.3, null, 'https://www.tagheuer.com/us/en/timepieces/collections/tag-heuer-link/41-mm-calibre-5-automatic/WBC2110.BA0603.html'),
  ('b0000000-0000-0000-0000-000000000006', 'WBC2112.BA0603', 'Link Calibre 5 41mm', null, 'Link', 'Stainless Steel', 41.0, 'automatic', 'Calibre 5', 100, 'Blue', 'Stainless Steel', 410000, 305000, -0.2, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBC1310.BA0600', 'Link 32mm', null, 'Link', 'Stainless Steel', 32.0, 'quartz', null, 100, 'White MOP', 'Stainless Steel', 230000, 170000, -0.4, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CBC2112.BA0603', 'Link Calibre 18 Chronograph 41mm', null, 'Link', 'Stainless Steel', 41.0, 'automatic', 'Calibre 18', 100, 'Blue', 'Stainless Steel', 570000, 420000, -0.5, null, null);

-- ============================================================
-- IWC SCHAFFHAUSEN (~55 watches)
-- ============================================================
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  -- Pilot's Watch Mark XX (40mm, Cal. 32111, 120h PR)
  ('b0000000-0000-0000-0000-000000000007', 'IW328201', 'Pilot''s Watch Mark XX', null, 'Pilot', 'Stainless Steel', 40.0, 'automatic', '32111', 100, 'Black', 'Leather', 525000, 460000, 0.5, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw328201-pilots-watch-mark-xx'),
  ('b0000000-0000-0000-0000-000000000007', 'IW328202', 'Pilot''s Watch Mark XX', null, 'Pilot', 'Stainless Steel', 40.0, 'automatic', '32111', 100, 'Black', 'Stainless Steel', 615000, 530000, 0.3, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw328202-pilots-watch-mark-xx'),
  ('b0000000-0000-0000-0000-000000000007', 'IW328203', 'Pilot''s Watch Mark XX', null, 'Pilot', 'Stainless Steel', 40.0, 'automatic', '32111', 100, 'Blue', 'Leather', 525000, 470000, 0.8, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw328203-pilots-watch-mark-xx'),
  ('b0000000-0000-0000-0000-000000000007', 'IW328204', 'Pilot''s Watch Mark XX', null, 'Pilot', 'Stainless Steel', 40.0, 'automatic', '32111', 100, 'Blue', 'Stainless Steel', 615000, 550000, 0.6, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw328204-pilots-watch-mark-xx'),
  ('b0000000-0000-0000-0000-000000000007', 'IW328205', 'Pilot''s Watch Mark XX', null, 'Pilot', 'Stainless Steel', 40.0, 'automatic', '32111', 100, 'Green', 'Leather', 525000, 480000, 1.2, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw328205-pilots-watch-mark-xx'),
  ('b0000000-0000-0000-0000-000000000007', 'IW328207', 'Pilot''s Watch Mark XX', null, 'Pilot', 'Stainless Steel', 40.0, 'automatic', '32111', 100, 'Silver', 'Leather', 525000, 460000, 0.4, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw328207-pilots-watch-mark-xx'),
  -- Pilot's Watch Automatic Spitfire (39mm, Cal. 32110)
  ('b0000000-0000-0000-0000-000000000007', 'IW326801', 'Pilot''s Watch Automatic Spitfire', null, 'Pilot', 'Stainless Steel', 39.0, 'automatic', '32110', 60, 'Black', 'Leather', 505000, 400000, -0.3, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw326801-pilots-watch-automatic-spitfire'),
  ('b0000000-0000-0000-0000-000000000007', 'IW326803', 'Pilot''s Watch Automatic Spitfire', null, 'Pilot', 'Stainless Steel', 39.0, 'automatic', '32110', 60, 'Green', 'Leather', 505000, 420000, 0.5, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw326803-pilots-watch-automatic-spitfire'),
  -- Pilot's Watch Chronograph 41 (41mm, Cal. 69385)
  ('b0000000-0000-0000-0000-000000000007', 'IW388101', 'Pilot''s Watch Chronograph 41', null, 'Pilot', 'Stainless Steel', 41.0, 'automatic', '69385', 100, 'Blue', 'Leather', 650000, 560000, 0.6, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw388101-pilots-watch-chronograph-41'),
  ('b0000000-0000-0000-0000-000000000007', 'IW388102', 'Pilot''s Watch Chronograph 41', null, 'Pilot', 'Stainless Steel', 41.0, 'automatic', '69385', 100, 'Blue', 'Stainless Steel', 720000, 620000, 0.4, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw388102-pilots-watch-chronograph-41'),
  ('b0000000-0000-0000-0000-000000000007', 'IW388103', 'Pilot''s Watch Chronograph 41', null, 'Pilot', 'Stainless Steel', 41.0, 'automatic', '69385', 100, 'Green', 'Leather', 650000, 560000, 0.7, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw388103-pilots-watch-chronograph-41'),
  ('b0000000-0000-0000-0000-000000000007', 'IW388104', 'Pilot''s Watch Chronograph 41', null, 'Pilot', 'Stainless Steel', 41.0, 'automatic', '69385', 100, 'Green', 'Stainless Steel', 720000, 620000, 0.5, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw388104-pilots-watch-chronograph-41'),
  ('b0000000-0000-0000-0000-000000000007', 'IW388105', 'Pilot''s Watch Chronograph 41', null, 'Pilot', 'Stainless Steel', 41.0, 'automatic', '69385', 100, 'Black', 'Leather', 650000, 550000, 0.3, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw388105-pilots-watch-chronograph-41'),
  ('b0000000-0000-0000-0000-000000000007', 'IW388106', 'Pilot''s Watch Chronograph 41', null, 'Pilot', 'Ceratanium', 41.0, 'automatic', '69385', 100, 'Black', 'Rubber', 1310000, 1100000, 0.9, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw388106-pilots-watch-chronograph-41'),
  ('b0000000-0000-0000-0000-000000000007', 'IW388116', 'Pilot''s Watch Chronograph 41 APXGP', null, 'Pilot', 'Stainless Steel', 41.0, 'automatic', '69385', 100, 'Black', 'Leather', 750000, 680000, 1.5, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw388116-pilots-watch-chronograph-41'),
  -- Pilot's Watch Chronograph TOP GUN (41mm & 44mm Ceramic)
  ('b0000000-0000-0000-0000-000000000007', 'IW389101', 'Pilot''s Watch Chronograph TOP GUN', 'Top Gun', 'Pilot', 'Ceramic', 44.5, 'automatic', '69380', 60, 'Black', 'Rubber', 990000, 830000, 0.4, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw389101-pilots-watch-chronograph-top-gun'),
  ('b0000000-0000-0000-0000-000000000007', 'IW389105', 'Pilot''s Watch Chronograph TOP GUN Edition "Lake Tahoe"', 'Lake Tahoe', 'Pilot', 'Ceramic', 44.5, 'automatic', '69380', 60, 'White', 'Rubber', 990000, 850000, 0.8, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw389105-pilots-watch-chronograph-top-gun-edition-lake-tahoe'),
  ('b0000000-0000-0000-0000-000000000007', 'IW389106', 'Pilot''s Watch Chronograph TOP GUN Edition "Woodland"', 'Woodland', 'Pilot', 'Ceramic', 44.5, 'automatic', '69380', 60, 'Green', 'Rubber', 990000, 840000, 0.6, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw389106-pilots-watch-chronograph-top-gun-edition-woodland'),
  ('b0000000-0000-0000-0000-000000000007', 'IW389401', 'Pilot''s Watch Chronograph 41 TOP GUN Ceratanium', null, 'Pilot', 'Ceratanium', 41.0, 'automatic', '69385', 100, 'Black', 'Rubber', 1050000, 880000, 0.5, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw389401-pilots-watch-chronograph-41-top-gun-ceratanium'),
  ('b0000000-0000-0000-0000-000000000007', 'IW389404', 'Pilot''s Watch Chronograph 41 TOP GUN "Oceana"', 'Oceana', 'Pilot', 'Ceramic', 41.9, 'automatic', '69385', 100, 'Blue', 'Rubber', 1050000, 900000, 1.2, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw389404-pilots-watch-chronograph-41-top-gun-oceana'),
  ('b0000000-0000-0000-0000-000000000007', 'IW389409', 'Pilot''s Watch Chronograph 41 TOP GUN "Miramar"', 'Miramar', 'Pilot', 'Ceramic', 41.9, 'automatic', '69385', 100, 'Grey', 'Rubber', 1050000, 920000, 1.0, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw389409-pilots-watch-chronograph-41-top-gun-miramar'),
  -- Pilot's Watch Performance Chronograph 41 (18k gold, APXGP)
  ('b0000000-0000-0000-0000-000000000007', 'IW388309', 'Pilot''s Watch Performance Chronograph 41', 'APXGP Gold', 'Pilot', '18k 5N Gold', 41.0, 'automatic', '69385', 100, 'Black', 'Rubber', 2500000, 2300000, 0.8, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw388309-pilots-watch-performance-chronograph-41'),
  -- Big Pilot's Watch 43 (43mm, Cal. 82100, 60h PR)
  ('b0000000-0000-0000-0000-000000000007', 'IW329301', 'Big Pilot''s Watch 43', null, 'Big Pilot', 'Stainless Steel', 43.0, 'automatic', '82100', 100, 'Blue', 'Leather', 960000, 830000, 1.0, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw329301-big-pilots-watch-43'),
  ('b0000000-0000-0000-0000-000000000007', 'IW329303', 'Big Pilot''s Watch 43', null, 'Big Pilot', 'Stainless Steel', 43.0, 'automatic', '82100', 100, 'Black', 'Leather', 960000, 820000, 0.8, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw329303-big-pilots-watch-43'),
  ('b0000000-0000-0000-0000-000000000007', 'IW329305', 'Big Pilot''s Watch 43', null, 'Big Pilot', 'Stainless Steel', 43.0, 'automatic', '82100', 100, 'Green', 'Leather', 960000, 850000, 1.3, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw329305-big-pilots-watch-43'),
  ('b0000000-0000-0000-0000-000000000007', 'IW329306', 'Big Pilot''s Watch 43', null, 'Big Pilot', 'Stainless Steel', 43.0, 'automatic', '82100', 100, 'Blue', 'Stainless Steel', 1060000, 920000, 0.7, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw329306-big-pilots-watch-43'),
  -- Big Pilot's Watch (46mm, Cal. 52110, 168h PR)
  ('b0000000-0000-0000-0000-000000000007', 'IW501001', 'Big Pilot''s Watch', null, 'Big Pilot', 'Stainless Steel', 46.2, 'automatic', '52110', 60, 'Blue', 'Leather', 1190000, 1050000, 0.9, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw501001-big-pilots-watch'),
  ('b0000000-0000-0000-0000-000000000007', 'IW501002', 'Big Pilot''s Watch', 'Le Petit Prince', 'Big Pilot', 'Stainless Steel', 46.2, 'automatic', '52110', 60, 'Blue', 'Leather', 1190000, 1080000, 1.2, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw501002-big-pilots-watch'),
  ('b0000000-0000-0000-0000-000000000007', 'IW501015', 'Big Pilot''s Watch', null, 'Big Pilot', 'Stainless Steel', 46.2, 'automatic', '52110', 60, 'Green', 'Leather', 1190000, 1060000, 1.5, null, 'https://www.iwc.com/us-en/watches/pilot-watches/iw501015-big-pilots-watch'),
  -- Portugieser Chronograph (41mm, Cal. 69355)
  ('b0000000-0000-0000-0000-000000000007', 'IW371604', 'Portugieser Chronograph', null, 'Portugieser', 'Stainless Steel', 41.0, 'automatic', '69355', 30, 'Silver', 'Leather', 840000, 700000, -0.2, null, 'https://www.iwc.com/us-en/watches/portugieser/iw371604-portugieser-chronograph'),
  ('b0000000-0000-0000-0000-000000000007', 'IW371605', 'Portugieser Chronograph', null, 'Portugieser', 'Stainless Steel', 41.0, 'automatic', '69355', 30, 'Blue', 'Leather', 840000, 710000, -0.4, null, 'https://www.iwc.com/us-en/watches/portugieser/iw371605-portugieser-chronograph'),
  ('b0000000-0000-0000-0000-000000000007', 'IW371606', 'Portugieser Chronograph', null, 'Portugieser', 'Stainless Steel', 41.0, 'automatic', '69355', 30, 'Blue', 'Leather', 840000, 720000, 0.3, null, 'https://www.iwc.com/us-en/watches/portugieser/iw371606-portugieser-chronograph'),
  ('b0000000-0000-0000-0000-000000000007', 'IW371609', 'Portugieser Chronograph', null, 'Portugieser', 'Stainless Steel', 41.0, 'automatic', '69355', 30, 'Green', 'Leather', 840000, 740000, 0.7, null, 'https://www.iwc.com/us-en/watches/portugieser/iw371609-portugieser-chronograph'),
  ('b0000000-0000-0000-0000-000000000007', 'IW371620', 'Portugieser Chronograph', null, 'Portugieser', 'Stainless Steel', 41.0, 'automatic', '69355', 30, 'White', 'Leather', 840000, 730000, 0.5, null, 'https://www.iwc.com/us-en/watches/portugieser/iw371620-portugieser-chronograph'),
  ('b0000000-0000-0000-0000-000000000007', 'IW371615', 'Portugieser Chronograph', null, 'Portugieser', '18k Red Gold', 41.0, 'automatic', '69355', 30, 'Blue', 'Leather', 2250000, 1900000, -0.5, null, 'https://www.iwc.com/us-en/watches/portugieser/iw371615-portugieser-chronograph'),
  -- Portugieser Automatic 40 (40.4mm, Cal. 82200)
  ('b0000000-0000-0000-0000-000000000007', 'IW358303', 'Portugieser Automatic 40', null, 'Portugieser', 'Stainless Steel', 40.4, 'automatic', '82200', 50, 'Silver', 'Leather', 730000, 620000, 0.2, null, 'https://www.iwc.com/us-en/watches/portugieser/iw358303-portugieser-automatic-40'),
  ('b0000000-0000-0000-0000-000000000007', 'IW358304', 'Portugieser Automatic 40', null, 'Portugieser', 'Stainless Steel', 40.4, 'automatic', '82200', 50, 'Blue', 'Leather', 730000, 640000, 0.6, null, 'https://www.iwc.com/us-en/watches/portugieser/iw358304-portugieser-automatic-40'),
  ('b0000000-0000-0000-0000-000000000007', 'IW358305', 'Portugieser Automatic 40', null, 'Portugieser', 'Stainless Steel', 40.4, 'automatic', '82200', 50, 'Black', 'Leather', 730000, 630000, 0.4, null, 'https://www.iwc.com/us-en/watches/portugieser/iw358305-portugieser-automatic-40'),
  ('b0000000-0000-0000-0000-000000000007', 'IW358404', 'Portugieser Automatic 40', null, 'Portugieser', '18k 5N Gold', 40.4, 'automatic', '82200', 50, 'Silver', 'Leather', 2100000, 1800000, -0.3, null, 'https://www.iwc.com/us-en/watches/portugieser/iw358404-portugieser-automatic-40'),
  -- Portugieser Automatic 42 (42.3mm, Cal. 52011, 168h PR)
  ('b0000000-0000-0000-0000-000000000007', 'IW500710', 'Portugieser Automatic 42', null, 'Portugieser', 'Stainless Steel', 42.3, 'automatic', '52011', 30, 'Silver', 'Leather', 1020000, 860000, 0.1, null, 'https://www.iwc.com/us-en/watches/portugieser/iw500710-portugieser-automatic-42'),
  ('b0000000-0000-0000-0000-000000000007', 'IW500714', 'Portugieser Automatic 42', null, 'Portugieser', 'Stainless Steel', 42.3, 'automatic', '52011', 30, 'Blue', 'Leather', 1020000, 870000, 0.3, null, 'https://www.iwc.com/us-en/watches/portugieser/iw500714-portugieser-automatic-42'),
  ('b0000000-0000-0000-0000-000000000007', 'IW500716', 'Portugieser Automatic 42', null, 'Portugieser', 'Stainless Steel', 42.3, 'automatic', '52011', 30, 'Dune', 'Leather', 1020000, 880000, 0.5, null, 'https://www.iwc.com/us-en/watches/portugieser/iw500716-portugieser-automatic-42'),
  ('b0000000-0000-0000-0000-000000000007', 'IW501706', 'Portugieser Automatic 42', null, 'Portugieser', '18k 5N Gold', 42.3, 'automatic', '52011', 30, 'Silver', 'Leather', 2950000, 2500000, -0.4, null, 'https://www.iwc.com/us-en/watches/portugieser/iw501706-portugieser-automatic-42'),
  -- Portugieser Perpetual Calendar (44.2mm, Cal. 52610)
  ('b0000000-0000-0000-0000-000000000007', 'IW503302', 'Portugieser Perpetual Calendar', null, 'Portugieser', '18k 5N Gold', 44.2, 'automatic', '52610', 30, 'Blue', 'Leather', 4450000, 3800000, -0.7, null, 'https://www.iwc.com/us-en/watches/portugieser/iw503302-portugieser-perpetual-calendar'),
  ('b0000000-0000-0000-0000-000000000007', 'IW503301', 'Portugieser Perpetual Calendar', null, 'Portugieser', 'Stainless Steel', 44.2, 'automatic', '52610', 30, 'Blue', 'Leather', 1650000, 1400000, 0.2, null, 'https://www.iwc.com/us-en/watches/portugieser/iw503301-portugieser-perpetual-calendar'),
  -- Portofino Automatic 40 (40mm, Cal. 35111)
  ('b0000000-0000-0000-0000-000000000007', 'IW356501', 'Portofino Automatic 40', null, 'Portofino', 'Stainless Steel', 40.0, 'automatic', '35111', 30, 'Black', 'Leather', 495000, 400000, -0.2, null, 'https://www.iwc.com/us-en/watches/portofino/iw356501-portofino-automatic'),
  ('b0000000-0000-0000-0000-000000000007', 'IW356502', 'Portofino Automatic 40', null, 'Portofino', 'Stainless Steel', 40.0, 'automatic', '35111', 30, 'Silver', 'Leather', 495000, 400000, 0.1, null, 'https://www.iwc.com/us-en/watches/portofino/iw356502-portofino-automatic'),
  ('b0000000-0000-0000-0000-000000000007', 'IW356505', 'Portofino Automatic 40', null, 'Portofino', 'Stainless Steel', 40.0, 'automatic', '35111', 30, 'Blue', 'Stainless Steel', 560000, 470000, 0.3, null, 'https://www.iwc.com/us-en/watches/portofino/iw356505-portofino-automatic'),
  ('b0000000-0000-0000-0000-000000000007', 'IW356506', 'Portofino Automatic 40', null, 'Portofino', 'Stainless Steel', 40.0, 'automatic', '35111', 30, 'Grey', 'Leather', 495000, 410000, 0.2, null, 'https://www.iwc.com/us-en/watches/portofino/iw356506-portofino-automatic'),
  -- Portofino Chronograph (42mm, Cal. 75320)
  ('b0000000-0000-0000-0000-000000000007', 'IW391031', 'Portofino Chronograph', null, 'Portofino', 'Stainless Steel', 42.0, 'automatic', '75320', 30, 'Silver', 'Leather', 690000, 560000, -0.1, null, 'https://www.iwc.com/us-en/watches/portofino/iw391031-portofino-chronograph'),
  ('b0000000-0000-0000-0000-000000000007', 'IW391036', 'Portofino Chronograph', null, 'Portofino', 'Stainless Steel', 42.0, 'automatic', '75320', 30, 'Blue', 'Leather', 690000, 570000, 0.2, null, 'https://www.iwc.com/us-en/watches/portofino/iw391036-portofino-chronograph'),
  ('b0000000-0000-0000-0000-000000000007', 'IW391503', 'Portofino Chronograph 39', null, 'Portofino', 'Stainless Steel', 39.0, 'automatic', '75320', 30, 'White', 'Leather', 860000, 700000, 0.4, null, 'https://www.iwc.com/us-en/watches/portofino/iw391503-portofino-chronograph-39'),
  -- Portofino Automatic Moon Phase (40mm, Cal. 35800)
  ('b0000000-0000-0000-0000-000000000007', 'IW459401', 'Portofino Automatic Moon Phase 40', null, 'Portofino', 'Stainless Steel', 40.0, 'automatic', '35800', 30, 'Silver', 'Leather', 770000, 620000, 0.3, null, 'https://www.iwc.com/us-en/watches/portofino/iw459401-portofino-automatic-moon-phase'),
  ('b0000000-0000-0000-0000-000000000007', 'IW459403', 'Portofino Automatic Moon Phase 40', null, 'Portofino', '18k Red Gold', 40.0, 'automatic', '35800', 30, 'Silver', 'Leather', 2070000, 1700000, -0.4, null, 'https://www.iwc.com/us-en/watches/portofino/iw459403-portofino-automatic-moon-phase'),
  -- Ingenieur Automatic 40 (40mm, Cal. 32111, 120h PR)
  ('b0000000-0000-0000-0000-000000000007', 'IW328901', 'Ingenieur Automatic 40', null, 'Ingenieur', 'Stainless Steel', 40.0, 'automatic', '32111', 100, 'Black', 'Stainless Steel', 775000, 650000, 0.5, null, 'https://www.iwc.com/us-en/watches/ingenieur/iw328901-ingenieur-automatic-40'),
  ('b0000000-0000-0000-0000-000000000007', 'IW328902', 'Ingenieur Automatic 40', null, 'Ingenieur', 'Stainless Steel', 40.0, 'automatic', '32111', 100, 'Silver', 'Stainless Steel', 775000, 660000, 0.3, null, 'https://www.iwc.com/us-en/watches/ingenieur/iw328902-ingenieur-automatic-40'),
  ('b0000000-0000-0000-0000-000000000007', 'IW328903', 'Ingenieur Automatic 40', null, 'Ingenieur', 'Stainless Steel', 40.0, 'automatic', '32111', 100, 'Green', 'Stainless Steel', 775000, 680000, 0.8, null, 'https://www.iwc.com/us-en/watches/ingenieur/iw328903-ingenieur-automatic-40'),
  ('b0000000-0000-0000-0000-000000000007', 'IW328904', 'Ingenieur Automatic 40', null, 'Ingenieur', 'Titanium', 40.0, 'automatic', '32111', 100, 'Grey', 'Titanium', 1050000, 900000, 0.6, null, 'https://www.iwc.com/us-en/watches/ingenieur/iw328904-ingenieur-automatic-40'),
  ('b0000000-0000-0000-0000-000000000007', 'IW328702', 'Ingenieur Automatic 40', null, 'Ingenieur', '18k 5N Gold', 40.0, 'automatic', '32111', 100, 'Black', '18k 5N Gold', 4050000, 3600000, -0.3, null, 'https://www.iwc.com/us-en/watches/ingenieur/iw328702-ingenieur-automatic-40'),
  ('b0000000-0000-0000-0000-000000000007', 'IW328908', 'Ingenieur Automatic 40 F1 Edition', null, 'Ingenieur', 'Stainless Steel', 40.0, 'automatic', '32111', 100, 'Green', 'Stainless Steel', 850000, 750000, 1.0, null, 'https://www.iwc.com/us-en/watches/ingenieur/iw328908-ingenieur-automatic-40'),
  -- Ingenieur Automatic 42 (42mm, Cal. 32111, Ceramic)
  ('b0000000-0000-0000-0000-000000000007', 'IW328906', 'Ingenieur Automatic 42', null, 'Ingenieur', 'Ceramic', 42.0, 'automatic', '32111', 100, 'Black', 'Rubber', 1950000, 1750000, 0.7, null, 'https://www.iwc.com/us-en/watches/ingenieur/iw328906-ingenieur-automatic-42'),
  -- Ingenieur Automatic 35 (35mm)
  ('b0000000-0000-0000-0000-000000000007', 'IW324901', 'Ingenieur Automatic 35', null, 'Ingenieur', 'Stainless Steel', 35.0, 'automatic', '32111', 100, 'Silver', 'Stainless Steel', 750000, 680000, 0.5, null, 'https://www.iwc.com/us-en/watches/ingenieur/iw324901-ingenieur-automatic-35'),
  ('b0000000-0000-0000-0000-000000000007', 'IW324906', 'Ingenieur Automatic 35', null, 'Ingenieur', 'Stainless Steel', 35.0, 'automatic', '32111', 100, 'Black', 'Stainless Steel', 750000, 680000, 0.4, null, 'https://www.iwc.com/us-en/watches/ingenieur/iw324906-ingenieur-automatic-35'),
  ('b0000000-0000-0000-0000-000000000007', 'IW324903', 'Ingenieur Automatic 35', null, 'Ingenieur', '18k 5N Gold', 35.0, 'automatic', '32111', 100, 'Gold', '18k 5N Gold', 3800000, 3400000, -0.2, null, 'https://www.iwc.com/us-en/watches/ingenieur/iw324903-ingenieur-automatic-35'),
  -- Ingenieur Perpetual Calendar 41 (41mm, Cal. 82600)
  ('b0000000-0000-0000-0000-000000000007', 'IW344903', 'Ingenieur Perpetual Calendar 41', null, 'Ingenieur', 'Stainless Steel', 41.0, 'automatic', '82600', 100, 'Black', 'Stainless Steel', 3890000, 3500000, 0.9, null, 'https://www.iwc.com/us-en/watches/ingenieur/iw344903-ingenieur-perpetual-calendar-41'),
  -- Aquatimer Automatic (42mm, Cal. 32111)
  ('b0000000-0000-0000-0000-000000000007', 'IW328801', 'Aquatimer Automatic', null, 'Aquatimer', 'Stainless Steel', 42.0, 'automatic', '32111', 300, 'Black', 'Rubber', 580000, 480000, 0.3, null, 'https://www.iwc.com/us-en/watches/aquatimer/iw328801-aquatimer-automatic'),
  ('b0000000-0000-0000-0000-000000000007', 'IW328803', 'Aquatimer Automatic', null, 'Aquatimer', 'Stainless Steel', 42.0, 'automatic', '32111', 300, 'Blue', 'Rubber', 580000, 490000, 0.5, null, 'https://www.iwc.com/us-en/watches/aquatimer/iw328803-aquatimer-automatic'),
  ('b0000000-0000-0000-0000-000000000007', 'IW328802', 'Aquatimer Automatic', null, 'Aquatimer', 'Stainless Steel', 42.0, 'automatic', '32111', 300, 'Green', 'Rubber', 580000, 500000, 0.7, null, 'https://www.iwc.com/us-en/watches/aquatimer/iw328802-aquatimer-automatic');

-- ============================================================
-- JAEGER-LECOULTRE (~50 watches)
-- ============================================================
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  -- Reverso Classic Medium Thin (40.1 x 24.4mm, Cal. 822/2)
  ('b0000000-0000-0000-0000-000000000008', 'Q3828420', 'Reverso Classic Medium Thin', null, 'Reverso', 'Stainless Steel', 40.1, 'manual', '822/2', 30, 'Silver', 'Leather', 715000, 580000, 0.3, null, 'https://www.jaeger-lecoultre.com/us-en/watches/reverso/reverso-classic-medium-thin-stainless-steel-q3828420'),
  ('b0000000-0000-0000-0000-000000000008', 'Q2548440', 'Reverso Classic Medium Thin', null, 'Reverso', '18k Rose Gold', 40.1, 'manual', '822/2', 30, 'Silver', 'Leather', 1180000, 950000, 0.1, null, 'https://www.jaeger-lecoultre.com/us-en/watches/reverso/reverso-classic-medium-thin-pink-gold-q2548440'),
  -- Reverso Classic Large (45.6 x 27.4mm, Cal. 822/2)
  ('b0000000-0000-0000-0000-000000000008', 'Q3858520', 'Reverso Classic Large', null, 'Reverso', 'Stainless Steel', 45.6, 'manual', '822/2', 30, 'Silver', 'Leather', 695000, 570000, 0.2, null, 'https://www.jaeger-lecoultre.com/us-en/watches/reverso/reverso-classic-large-stainless-steel-q3858520'),
  -- Reverso Classic Large Duoface (47.0 x 28.3mm, Cal. 854 A/2)
  ('b0000000-0000-0000-0000-000000000008', 'Q2438522', 'Reverso Classic Large Duoface', null, 'Reverso', 'Stainless Steel', 47.0, 'manual', '854 A/2', 30, 'Silver/Black', 'Leather', 1140000, 980000, 0.7, null, 'https://www.jaeger-lecoultre.com/us-en/watches/reverso/reverso-classic-large-duoface-stainless-steel-q2438522'),
  -- Reverso Tribute Monoface Small Seconds (45.6 x 27.4mm, Cal. 822/2)
  ('b0000000-0000-0000-0000-000000000008', 'Q3978480', 'Reverso Tribute Monoface Small Seconds', null, 'Reverso', 'Stainless Steel', 45.6, 'manual', '822/2', 30, 'Blue', 'Leather', 870000, 750000, 0.5, null, 'https://www.jaeger-lecoultre.com/us-en/watches/reverso/reverso-tribute-monoface-small-seconds-stainless-steel-q3978480'),
  ('b0000000-0000-0000-0000-000000000008', 'Q3978430', 'Reverso Tribute Monoface Small Seconds', null, 'Reverso', 'Stainless Steel', 45.6, 'manual', '822/2', 30, 'Silver', 'Leather', 870000, 740000, 0.3, null, 'https://www.jaeger-lecoultre.com/us-en/watches/reverso/reverso-tribute-monoface-small-seconds-stainless-steel-q3978430'),
  -- Reverso Tribute Duoface Small Seconds (47.0 x 28.3mm, Cal. 854 A/2)
  ('b0000000-0000-0000-0000-000000000008', 'Q3988482', 'Reverso Tribute Duoface Small Seconds', null, 'Reverso', 'Stainless Steel', 47.0, 'manual', '854 A/2', 30, 'Blue/Silver', 'Leather', 1160000, 1020000, 1.5, null, 'https://www.jaeger-lecoultre.com/us-en/watches/reverso/reverso-tribute-duoface-small-seconds-stainless-steel-q3988482'),
  ('b0000000-0000-0000-0000-000000000008', 'Q3988481', 'Reverso Tribute Duoface Small Seconds', null, 'Reverso', 'Stainless Steel', 47.0, 'manual', '854 A/2', 30, 'Silver/Grey', 'Leather', 1160000, 1000000, 1.2, null, 'https://www.jaeger-lecoultre.com/us-en/watches/reverso/reverso-tribute-duoface-small-seconds-stainless-steel-q3988481'),
  ('b0000000-0000-0000-0000-000000000008', 'Q3912420', 'Reverso Tribute Duoface', null, 'Reverso', '18k Rose Gold', 47.0, 'manual', '854 A/2', 30, 'Silver/Chocolate', 'Leather', 2200000, 1850000, 0.4, null, 'https://www.jaeger-lecoultre.com/us-en/watches/reverso/reverso-tribute-duoface-pink-gold-q3912420'),
  -- Reverso Tribute Duoface Calendar (49.4 x 29.9mm, Cal. 853 A)
  ('b0000000-0000-0000-0000-000000000008', 'Q3918420', 'Reverso Tribute Duoface Calendar', null, 'Reverso', 'Stainless Steel', 49.4, 'manual', '853 A', 30, 'Silver/Blue', 'Leather', 1700000, 1450000, 0.8, null, 'https://www.jaeger-lecoultre.com/us-en/watches/reverso/reverso-tribute-duoface-calendar-stainless-steel-q3918420'),
  -- Reverso Classic Monoface Small Seconds (Mid-size, 2025)
  ('b0000000-0000-0000-0000-000000000008', 'Q3868520', 'Reverso Classic Monoface Small Seconds', null, 'Reverso', 'Stainless Steel', 42.9, 'manual', '822/2', 30, 'Silver', 'Leather', 800000, 720000, 0.6, null, 'https://www.jaeger-lecoultre.com/us-en/watches/reverso/reverso-classic-monoface-small-seconds-stainless-steel-q3868520'),
  -- Master Ultra Thin Date (39mm, Cal. 899)
  ('b0000000-0000-0000-0000-000000000008', 'Q1368420', 'Master Ultra Thin Date', null, 'Master', 'Stainless Steel', 39.0, 'automatic', '899', 50, 'Silver', 'Leather', 820000, 650000, 0.1, null, 'https://www.jaeger-lecoultre.com/us-en/watches/master-ultra-thin/master-ultra-thin-date-stainless-steel-q1368420'),
  ('b0000000-0000-0000-0000-000000000008', 'Q1368480', 'Master Ultra Thin Date', null, 'Master', 'Stainless Steel', 39.0, 'automatic', '899', 50, 'Blue', 'Leather', 820000, 670000, 0.4, null, 'https://www.jaeger-lecoultre.com/us-en/watches/master-ultra-thin/master-ultra-thin-date-stainless-steel-q1368480'),
  ('b0000000-0000-0000-0000-000000000008', 'Q1282510', 'Master Ultra Thin Date', null, 'Master', '18k Rose Gold', 39.0, 'automatic', '899', 50, 'Silver', 'Leather', 1500000, 1200000, -0.3, null, 'https://www.jaeger-lecoultre.com/us-en/watches/master-ultra-thin/master-ultra-thin-date-pink-gold-q1282510'),
  -- Master Ultra Thin Moon (39mm, Cal. 925/1)
  ('b0000000-0000-0000-0000-000000000008', 'Q1548420', 'Master Ultra Thin Moon', null, 'Master', 'Stainless Steel', 39.0, 'automatic', '925/1', 50, 'Blue', 'Leather', 1155000, 920000, -1.1, null, 'https://www.jaeger-lecoultre.com/us-en/watches/master-ultra-thin/master-ultra-thin-moon-stainless-steel-q1548420'),
  ('b0000000-0000-0000-0000-000000000008', 'Q1362520', 'Master Ultra Thin Moon', null, 'Master', '18k Rose Gold', 39.0, 'automatic', '925/1', 50, 'Silver', 'Leather', 2050000, 1650000, -0.2, null, 'https://www.jaeger-lecoultre.com/us-en/watches/master-ultra-thin/master-ultra-thin-moon-pink-gold-q1362520'),
  -- Master Ultra Thin Perpetual Calendar (39mm, Cal. 868)
  ('b0000000-0000-0000-0000-000000000008', 'Q1308470', 'Master Ultra Thin Perpetual Calendar', null, 'Master', 'Stainless Steel', 39.0, 'automatic', '868', 50, 'Black', 'Leather', 2100000, 1700000, 0.3, null, 'https://www.jaeger-lecoultre.com/us-en/watches/master-ultra-thin/master-ultra-thin-perpetual-calendar-stainless-steel-q1308470'),
  ('b0000000-0000-0000-0000-000000000008', 'Q1302520', 'Master Ultra Thin Perpetual Calendar', null, 'Master', '18k Rose Gold', 39.0, 'automatic', '868', 50, 'Silver', 'Leather', 3350000, 2800000, -0.4, null, 'https://www.jaeger-lecoultre.com/us-en/watches/master-ultra-thin/master-ultra-thin-perpetual-calendar-pink-gold-q1302520'),
  -- Master Control Date (40mm, Cal. 899/1)
  ('b0000000-0000-0000-0000-000000000008', 'Q1558420', 'Master Control Date', null, 'Master', 'Stainless Steel', 40.0, 'automatic', '899/1', 50, 'Silver', 'Leather', 800000, 620000, -0.3, null, 'https://www.jaeger-lecoultre.com/us-en/watches/master/master-control-date-stainless-steel-q1558420'),
  ('b0000000-0000-0000-0000-000000000008', 'Q1548530', 'Master Control Date', null, 'Master', 'Stainless Steel', 40.0, 'automatic', '899/1', 50, 'Black', 'Leather', 800000, 630000, -0.1, null, 'https://www.jaeger-lecoultre.com/us-en/watches/master/master-control-date-stainless-steel-q1548530'),
  -- Master Control Calendar (40mm, Cal. 866 AA/1)
  ('b0000000-0000-0000-0000-000000000008', 'Q4148420', 'Master Control Calendar', null, 'Master', 'Stainless Steel', 40.0, 'automatic', '866 AA/1', 50, 'Silver', 'Leather', 1110000, 880000, -0.2, null, 'https://www.jaeger-lecoultre.com/us-en/watches/master/master-control-calendar-stainless-steel-q4148420'),
  ('b0000000-0000-0000-0000-000000000008', 'Q4148450', 'Master Control Calendar', null, 'Master', 'Stainless Steel', 40.0, 'automatic', '866', 50, 'Silver Sector', 'Leather', 1110000, 900000, 0.5, null, 'https://www.jaeger-lecoultre.com/us-en/watches/master/master-control-calendar-stainless-steel-q4148450'),
  ('b0000000-0000-0000-0000-000000000008', 'Q4142520', 'Master Control Calendar', null, 'Master', '18k Rose Gold', 40.0, 'automatic', '866 AA/1', 50, 'Silver', 'Leather', 2400000, 1950000, -0.3, null, 'https://www.jaeger-lecoultre.com/us-en/watches/master/master-control-calendar-pink-gold-q4142520'),
  -- Master Control Chronograph (40mm, Cal. 759)
  ('b0000000-0000-0000-0000-000000000008', 'Q1538530', 'Master Control Chronograph', null, 'Master', 'Stainless Steel', 40.0, 'automatic', '759', 50, 'Blue', 'Leather', 1250000, 1000000, 0.4, null, 'https://www.jaeger-lecoultre.com/us-en/watches/master/master-control-chronograph-stainless-steel-q1538530'),
  -- Polaris Automatic (42mm, Cal. 899AB/1)
  ('b0000000-0000-0000-0000-000000000008', 'Q9008471', 'Polaris Automatic', null, 'Polaris', 'Stainless Steel', 42.0, 'automatic', '899AB/1', 200, 'Blue', 'Stainless Steel', 860000, 690000, 0.2, null, 'https://www.jaeger-lecoultre.com/us-en/watches/polaris/polaris-automatic-stainless-steel-q9008471'),
  ('b0000000-0000-0000-0000-000000000008', 'Q9008480', 'Polaris Automatic', null, 'Polaris', 'Stainless Steel', 42.0, 'automatic', '899AB/1', 200, 'Black', 'Rubber', 810000, 650000, 0.1, null, 'https://www.jaeger-lecoultre.com/us-en/watches/polaris/polaris-automatic-stainless-steel-q9008480'),
  -- Polaris Date (42mm, Cal. 899AB/1)
  ('b0000000-0000-0000-0000-000000000008', 'Q9068670', 'Polaris Date', null, 'Polaris', 'Stainless Steel', 42.0, 'automatic', '899AB/1', 200, 'Blue', 'Stainless Steel', 935000, 750000, 0.3, null, 'https://www.jaeger-lecoultre.com/us-en/watches/polaris/polaris-date-stainless-steel-q9068670'),
  ('b0000000-0000-0000-0000-000000000008', 'Q9068650', 'Polaris Date', null, 'Polaris', 'Stainless Steel', 42.0, 'automatic', '899AB/1', 200, 'Grey', 'Rubber', 885000, 720000, 0.2, null, 'https://www.jaeger-lecoultre.com/us-en/watches/polaris/polaris-date-stainless-steel-q9068650'),
  -- Polaris Chronograph (42mm, Cal. 751H)
  ('b0000000-0000-0000-0000-000000000008', 'Q9028180', 'Polaris Chronograph', null, 'Polaris', 'Stainless Steel', 42.0, 'automatic', '751H', 200, 'Blue', 'Stainless Steel', 1310000, 1050000, 0.4, null, 'https://www.jaeger-lecoultre.com/us-en/watches/polaris/polaris-chronograph-stainless-steel-q9028180'),
  ('b0000000-0000-0000-0000-000000000008', 'Q9028480', 'Polaris Chronograph WT', null, 'Polaris', 'Stainless Steel', 44.0, 'automatic', '752', 200, 'Blue', 'Rubber', 1500000, 1200000, 0.5, null, 'https://www.jaeger-lecoultre.com/us-en/watches/polaris/polaris-chronograph-world-time-stainless-steel-q9028480'),
  -- Polaris Mariner Date (42mm, Cal. 899, 300m)
  ('b0000000-0000-0000-0000-000000000008', 'Q9068180', 'Polaris Mariner Date', null, 'Polaris', 'Stainless Steel', 42.0, 'automatic', '899', 300, 'Blue', 'Stainless Steel', 1200000, 980000, 0.6, null, 'https://www.jaeger-lecoultre.com/us-en/watches/polaris/polaris-mariner-date-stainless-steel-q9068180'),
  -- Polaris Mariner Memovox (42mm, Cal. 956, 300m)
  ('b0000000-0000-0000-0000-000000000008', 'Q9038180', 'Polaris Mariner Memovox', null, 'Polaris', 'Stainless Steel', 42.0, 'automatic', '956', 300, 'Blue', 'Stainless Steel', 1850000, 1500000, 0.8, null, 'https://www.jaeger-lecoultre.com/us-en/watches/polaris/polaris-mariner-memovox-stainless-steel-q9038180'),
  -- Rendez-Vous Night & Day Small (29mm, Cal. 898E)
  ('b0000000-0000-0000-0000-000000000008', 'Q3468410', 'Rendez-Vous Night & Day Small', null, 'Rendez-Vous', 'Stainless Steel', 29.0, 'automatic', '898E', 50, 'Silver', 'Leather', 720000, 580000, 0.1, null, 'https://www.jaeger-lecoultre.com/us-en/watches/rendez-vous/rendez-vous-night-and-day-small-stainless-steel-q3468410'),
  ('b0000000-0000-0000-0000-000000000008', 'Q3462430', 'Rendez-Vous Night & Day Small', null, 'Rendez-Vous', 'Stainless Steel', 29.0, 'automatic', '898E', 50, 'Blue', 'Leather', 720000, 590000, 0.3, null, 'https://www.jaeger-lecoultre.com/us-en/watches/rendez-vous/rendez-vous-night-and-day-small-stainless-steel-q3462430'),
  -- Rendez-Vous Night & Day Medium (34mm, Cal. 898E/1)
  ('b0000000-0000-0000-0000-000000000008', 'Q3442430', 'Rendez-Vous Night & Day Medium', null, 'Rendez-Vous', 'Stainless Steel', 34.0, 'automatic', '898E/1', 50, 'Silver', 'Leather', 900000, 730000, 0.2, null, 'https://www.jaeger-lecoultre.com/us-en/watches/rendez-vous/rendez-vous-night-and-day-medium-stainless-steel-q3442430'),
  ('b0000000-0000-0000-0000-000000000008', 'Q3448420', 'Rendez-Vous Night & Day Medium', null, 'Rendez-Vous', '18k Rose Gold', 34.0, 'automatic', '898E/1', 50, 'Silver', 'Leather', 1800000, 1450000, -0.2, null, 'https://www.jaeger-lecoultre.com/us-en/watches/rendez-vous/rendez-vous-night-and-day-medium-pink-gold-q3448420'),
  -- Rendez-Vous Dazzling Moon (36mm, Cal. 925/1)
  ('b0000000-0000-0000-0000-000000000008', 'Q3572430', 'Rendez-Vous Dazzling Moon', null, 'Rendez-Vous', 'Stainless Steel', 36.0, 'automatic', '925/1', 50, 'Blue', 'Leather', 1350000, 1080000, 0.5, null, 'https://www.jaeger-lecoultre.com/us-en/watches/rendez-vous/rendez-vous-dazzling-moon-stainless-steel-q3572430'),
  -- Atmos Classique (Cal. 528)
  ('b0000000-0000-0000-0000-000000000008', 'Q5101202', 'Atmos Classique Phases de Lune', null, 'Atmos', 'Rhodium-plated Brass', null, 'automatic', '528', null, 'White', 'Glass', 1250000, 1050000, 0.1, null, 'https://www.jaeger-lecoultre.com/us-en/clocks/atmos/atmos-classique-phases-de-lune-q5101202'),
  ('b0000000-0000-0000-0000-000000000008', 'Q5102201', 'Atmos Classique', null, 'Atmos', 'Gold-plated Brass', null, 'automatic', '528', null, 'White', 'Glass', 980000, 820000, 0.0, null, 'https://www.jaeger-lecoultre.com/us-en/clocks/atmos/atmos-classique-q5102201'),
  ('b0000000-0000-0000-0000-000000000008', 'Q5135204', 'Atmos Transparente', null, 'Atmos', 'Glass/Rhodium', null, 'automatic', '528', null, 'Transparent', 'Glass', 1050000, 880000, 0.2, null, 'https://www.jaeger-lecoultre.com/us-en/clocks/atmos/atmos-transparente-q5135204'),
  -- Duometre Chronographe (42mm, Cal. 380, Dual-Wing)
  ('b0000000-0000-0000-0000-000000000008', 'Q6062520', 'Duometre Chronographe', null, 'Duometre', '18k Rose Gold', 42.0, 'manual', '380', 50, 'Silver', 'Leather', 3700000, 3200000, -0.5, null, 'https://www.jaeger-lecoultre.com/us-en/watches/duometre/duometre-chronographe-pink-gold-q6062520'),
  -- Duometre Quantieme Lunaire (42.5mm, Cal. 381)
  ('b0000000-0000-0000-0000-000000000008', 'Q604848J', 'Duometre Quantieme Lunaire', null, 'Duometre', 'Stainless Steel', 42.5, 'manual', '381', 50, 'Silver', 'Leather', 4430000, 3800000, -0.3, null, 'https://www.jaeger-lecoultre.com/us-en/watches/duometre/duometre-quantieme-lunaire-stainless-steel-q604848j');
-- ============================================================
-- VACHERON CONSTANTIN (~90 watches)
-- ============================================================
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  ('b0000000-0000-0000-0000-000000000009', '4520V/210A-B128', 'Overseas Self-Winding', null, 'Overseas', 'Stainless Steel', 41.0, 'automatic', '5100', 150, 'Blue', 'Stainless Steel', 2595000, 3500000, 2.4, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/4520v-210a-b128.html'),
  ('b0000000-0000-0000-0000-000000000009', '4520V/210A-B126', 'Overseas Self-Winding', null, 'Overseas', 'Stainless Steel', 41.0, 'automatic', '5100', 150, 'Silver', 'Stainless Steel', 2595000, 3200000, 1.8, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/4520v-210a-b126.html'),
  ('b0000000-0000-0000-0000-000000000009', '4520V/210A-B483', 'Overseas Self-Winding', null, 'Overseas', 'Stainless Steel', 41.0, 'automatic', '5100', 150, 'Black', 'Stainless Steel', 2595000, 3100000, 1.5, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/4520v-210a-b483.html'),
  ('b0000000-0000-0000-0000-000000000009', '4520V/210R-B705', 'Overseas Self-Winding', null, 'Overseas', '18k Rose Gold', 41.0, 'automatic', '5100', 150, 'Blue', '18k Rose Gold', 6500000, 4800000, 0.8, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/4520v-210r-b705.html'),
  ('b0000000-0000-0000-0000-000000000009', '4520V/210R-B967', 'Overseas Self-Winding', null, 'Overseas', '18k Rose Gold', 41.0, 'automatic', '5100', 150, 'Green', '18k Rose Gold', 6500000, 4700000, 0.6, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/4520v-210r-b967.html'),

  -- ── OVERSEAS SELF-WINDING 34.5mm (Cal. 1088/1, 40h PR, 150m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '4600V/200A-B980', 'Overseas Self-Winding 34.5mm', null, 'Overseas', 'Stainless Steel', 34.5, 'automatic', '1088/1', 150, 'Blue', 'Stainless Steel', 2310000, 2500000, 1.2, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/4600v-200a-b980.html'),
  ('b0000000-0000-0000-0000-000000000009', '4600V/200R-B979', 'Overseas Self-Winding 34.5mm', null, 'Overseas', '18k Rose Gold', 34.5, 'automatic', '1088/1', 150, 'Blue', '18k Rose Gold', 5200000, 4500000, 0.5, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/4600v-200r-b979.html'),

  -- ── OVERSEAS SELF-WINDING 35mm Diamond Bezel (Cal. 1088/1, 40h PR, 150m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '4605V/200R-B968', 'Overseas Self-Winding Diamond', null, 'Overseas', '18k Rose Gold', 35.0, 'automatic', '1088/1', 150, 'Gold', '18k Rose Gold', 3560000, 3200000, 0.4, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/4605v-200r-b968.html'),
  ('b0000000-0000-0000-0000-000000000009', '4605V/200R-B978', 'Overseas Self-Winding Diamond', null, 'Overseas', '18k Rose Gold', 35.0, 'automatic', '1088/1', 150, 'Blue', '18k Rose Gold', 3560000, 3100000, 0.3, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/4605v-200r-b978.html'),
  ('b0000000-0000-0000-0000-000000000009', '4605V/200R-B969', 'Overseas Self-Winding Diamond', null, 'Overseas', '18k Rose Gold', 35.0, 'automatic', '1088/1', 150, 'Green', '18k Rose Gold', 3560000, 3000000, 0.2, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/4605v-200r-b969.html'),

  -- ── OVERSEAS CHRONOGRAPH 42.5mm (Cal. 5200, 52h PR, 150m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '5520V/210A-B148', 'Overseas Chronograph', null, 'Overseas', 'Stainless Steel', 42.5, 'automatic', '5200', 150, 'Blue', 'Stainless Steel', 3560000, 4200000, 1.8, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/5520v-210a-b148.html'),
  ('b0000000-0000-0000-0000-000000000009', '5520V/210A-B686', 'Overseas Chronograph', null, 'Overseas', 'Stainless Steel', 42.5, 'automatic', '5200', 150, 'Silver', 'Stainless Steel', 3560000, 3900000, 1.2, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/5520v-210a-b686.html'),
  ('b0000000-0000-0000-0000-000000000009', '5520V/210A-B481', 'Overseas Chronograph', null, 'Overseas', 'Stainless Steel', 42.5, 'automatic', '5200', 150, 'Black', 'Stainless Steel', 3560000, 3800000, 1.0, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/5520v-210a-b481.html'),
  ('b0000000-0000-0000-0000-000000000009', '5520V/210R-B955', 'Overseas Chronograph', null, 'Overseas', '18k Rose Gold', 42.5, 'automatic', '5200', 150, 'Brown', '18k Rose Gold', 8950000, 6200000, -0.5, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/5520v-210r-b955.html'),
  ('b0000000-0000-0000-0000-000000000009', '5520V/210R-B966', 'Overseas Chronograph', null, 'Overseas', '18k Rose Gold', 42.5, 'automatic', '5200', 150, 'Green', '18k Rose Gold', 8950000, 7500000, 0.8, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/5520v-210r-b966.html'),
  ('b0000000-0000-0000-0000-000000000009', '5520V/210R-B952', 'Overseas Chronograph', null, 'Overseas', '18k Rose Gold', 42.5, 'automatic', '5200', 150, 'Blue', '18k Rose Gold', 8950000, 7200000, 0.6, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/5520v-210r-b952.html'),

  -- ── OVERSEAS DUAL TIME 41mm (Cal. 5110 DT, 60h PR, 150m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '7920V/210A-B334', 'Overseas Dual Time', null, 'Overseas', 'Stainless Steel', 41.0, 'automatic', '5110 DT', 150, 'Blue', 'Stainless Steel', 3090000, 3500000, 1.6, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/7920v-210a-b334.html'),
  ('b0000000-0000-0000-0000-000000000009', '7920V/210A-B546', 'Overseas Dual Time', null, 'Overseas', 'Stainless Steel', 41.0, 'automatic', '5110 DT', 150, 'Black', 'Stainless Steel', 3090000, 3300000, 1.2, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/7920v-210a-b546.html'),
  ('b0000000-0000-0000-0000-000000000009', '7920V/210A-B333', 'Overseas Dual Time', null, 'Overseas', 'Stainless Steel', 41.0, 'automatic', '5110 DT', 150, 'Silver', 'Stainless Steel', 3090000, 3200000, 1.0, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/7920v-210a-b333.html'),
  ('b0000000-0000-0000-0000-000000000009', '7920V/000R-B336', 'Overseas Dual Time', null, 'Overseas', '18k Rose Gold', 41.0, 'automatic', '5110 DT', 150, 'Blue', 'Leather', 5500000, 4900000, 0.3, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/7920v-000r-b336.html'),

  -- ── OVERSEAS MOON PHASE RETROGRADE DATE 41mm (Cal. 2460 R31L, 40h PR, 50m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '4000V/210A-B911', 'Overseas Moon Phase Retrograde Date', null, 'Overseas', 'Stainless Steel', 41.0, 'automatic', '2460 R31L', 50, 'Blue', 'Stainless Steel', 5510000, 5800000, 1.5, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/4000v-210a-b911.html'),

  -- ── OVERSEAS PERPETUAL CALENDAR ULTRA-THIN 41.5mm (Cal. 1120 QP/1, 40h PR, 50m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '4300V/220R-H144', 'Overseas Perpetual Calendar Ultra-Thin', null, 'Overseas', '18k Rose Gold', 41.5, 'automatic', '1120 QP/1', 50, 'Gold', 'Leather', 12000000, 14000000, 0.8, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/4300v-220r-h144.html'),
  ('b0000000-0000-0000-0000-000000000009', '4300V/220G-H151', 'Overseas Perpetual Calendar Ultra-Thin', null, 'Overseas', '18k White Gold', 41.5, 'automatic', '1120 QP/1', 50, 'Burgundy', 'Leather', 12000000, 14500000, 0.5, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/4300v-220g-h151.html'),
  ('b0000000-0000-0000-0000-000000000009', '4300V/120R-B064', 'Overseas Perpetual Calendar Ultra-Thin', null, 'Overseas', '18k Rose Gold', 41.5, 'automatic', '1120 QP/1', 50, 'Blue', '18k Rose Gold', 12000000, 13000000, 3.1, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/4300v-120r-b064.html'),
  ('b0000000-0000-0000-0000-000000000009', '4300V/120G-B945', 'Overseas Perpetual Calendar Ultra-Thin', null, 'Overseas', '18k White Gold', 41.5, 'automatic', '1120 QP/1', 50, 'Blue', '18k White Gold', 12000000, 13500000, 2.5, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/4300v-120g-b945.html'),

  -- ── OVERSEAS WORLD TIME 43.5mm (Cal. 2460 WT, 40h PR, 150m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '7700V/110A-B172', 'Overseas World Time', null, 'Overseas', 'Stainless Steel', 43.5, 'automatic', '2460 WT', 150, 'Blue', 'Stainless Steel', 5200000, 5800000, 1.5, null, 'https://www.vacheron-constantin.com/us/en/collections/overseas/7700v-110a-b172.html'),

  -- ── PATRIMONY SELF-WINDING 40mm (Cal. 2450 Q6, 43h PR, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '85180/000R-9248', 'Patrimony Self-Winding', null, 'Patrimony', '18k Rose Gold', 40.0, 'automatic', '2450 Q6', 30, 'Silver', 'Leather', 3180000, 2200000, 0.6, null, 'https://www.vacheron-constantin.com/us/en/collections/patrimony/85180-000r-9248.html'),
  ('b0000000-0000-0000-0000-000000000009', '85180/000G-9230', 'Patrimony Self-Winding', null, 'Patrimony', '18k White Gold', 40.0, 'automatic', '2450 Q6', 30, 'Silver', 'Leather', 3180000, 2250000, 0.4, null, 'https://www.vacheron-constantin.com/us/en/collections/patrimony/85180-000g-9230.html'),
  ('b0000000-0000-0000-0000-000000000009', '85180/000R-B515', 'Patrimony Self-Winding', null, 'Patrimony', '18k Rose Gold', 40.0, 'automatic', '2450 Q6', 30, 'Blue', 'Leather', 3180000, 2800000, 1.2, null, 'https://www.vacheron-constantin.com/us/en/collections/patrimony/85180-000r-b515.html'),
  ('b0000000-0000-0000-0000-000000000009', '85180/000R-H116', 'Patrimony Self-Winding 270th Anniversary', null, 'Patrimony', '18k Rose Gold', 40.0, 'automatic', '2450 Q6', 30, 'Blue', 'Leather', 3820000, 4200000, 1.8, null, 'https://www.vacheron-constantin.com/us/en/collections/patrimony/85180-000r-h116.html'),
  ('b0000000-0000-0000-0000-000000000009', '85180/000G-H035', 'Patrimony Self-Winding 270th Anniversary', null, 'Patrimony', '18k White Gold', 40.0, 'automatic', '2450 Q6', 30, 'Grey', 'Leather', 3820000, 4100000, 1.5, null, 'https://www.vacheron-constantin.com/us/en/collections/patrimony/85180-000g-h035.html'),

  -- ── PATRIMONY MANUAL-WINDING 40mm (Cal. 1400, 40h PR, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '81180/000R-9159', 'Patrimony Manual-Winding', null, 'Patrimony', '18k Rose Gold', 40.0, 'manual', '1400', 30, 'Silver', 'Leather', 2350000, 2000000, 0.3, null, 'https://www.vacheron-constantin.com/us/en/collections/patrimony/81180-000r-9159.html'),
  ('b0000000-0000-0000-0000-000000000009', '81180/000G-9117', 'Patrimony Manual-Winding', null, 'Patrimony', '18k White Gold', 40.0, 'manual', '1400', 30, 'Silver', 'Leather', 2350000, 2050000, 0.2, null, 'https://www.vacheron-constantin.com/us/en/collections/patrimony/81180-000g-9117.html'),
  ('b0000000-0000-0000-0000-000000000009', '81180/000R-B518', 'Patrimony Manual-Winding', null, 'Patrimony', '18k Rose Gold', 40.0, 'manual', '1400', 30, 'Anthracite', 'Leather', 2350000, 2100000, 0.4, null, 'https://www.vacheron-constantin.com/us/en/collections/patrimony/81180-000r-b518.html'),

  -- ── PATRIMONY MOON PHASE RETROGRADE DATE 42.5mm (Cal. 2460 R31L, 40h PR, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '4010U/000R-B329', 'Patrimony Moon Phase Retrograde Date', null, 'Patrimony', '18k Rose Gold', 42.5, 'automatic', '2460 R31L', 30, 'Silver', 'Leather', 4940000, 5000000, -0.4, null, 'https://www.vacheron-constantin.com/us/en/collections/patrimony/4010u-000r-b329.html'),
  ('b0000000-0000-0000-0000-000000000009', '4010U/000G-B330', 'Patrimony Moon Phase Retrograde Date', null, 'Patrimony', '18k White Gold', 42.5, 'automatic', '2460 R31L', 30, 'Silver', 'Leather', 5300000, 5100000, 0.2, null, 'https://www.vacheron-constantin.com/us/en/collections/patrimony/4010u-000g-b330.html'),
  ('b0000000-0000-0000-0000-000000000009', '4010U/000G-H070', 'Patrimony Moon Phase Retrograde Date', null, 'Patrimony', '18k White Gold', 42.5, 'automatic', '2460 R31L', 30, 'Green', 'Leather', 5300000, 5400000, 0.8, null, 'https://www.vacheron-constantin.com/us/en/collections/patrimony/4010u-000g-h070.html'),
  ('b0000000-0000-0000-0000-000000000009', '4010U/000G-H057', 'Patrimony Moon Phase Retrograde Date 270th Anniversary', null, 'Patrimony', '18k White Gold', 42.5, 'automatic', '2460 R31L', 30, 'Blue', 'Leather', 5800000, 6200000, 1.5, null, 'https://www.vacheron-constantin.com/us/en/collections/patrimony/4010u-000g-h057.html'),

  -- ── PATRIMONY RETROGRADE DAY-DATE 42.5mm (Cal. 2460 R31R, 40h PR, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '4000U/000R-B516', 'Patrimony Retrograde Day-Date', null, 'Patrimony', '18k Rose Gold', 42.5, 'automatic', '2460 R31R', 30, 'Blue', 'Leather', 4340000, 3800000, 0.5, null, 'https://www.vacheron-constantin.com/us/en/collections/patrimony/4000u-000r-b516.html'),
  ('b0000000-0000-0000-0000-000000000009', '4000U/000R-B110', 'Patrimony Retrograde Day-Date', null, 'Patrimony', '18k Rose Gold', 42.5, 'automatic', '2460 R31R', 30, 'Silver', 'Leather', 4340000, 3600000, 0.3, null, 'https://www.vacheron-constantin.com/us/en/collections/patrimony/4000u-000r-b110.html'),
  ('b0000000-0000-0000-0000-000000000009', '4000U/000P-H003', 'Patrimony Retrograde Day-Date', null, 'Patrimony', 'Platinum', 42.5, 'automatic', '2460 R31R', 30, 'Salmon', 'Leather', 6450000, 5800000, 0.8, null, 'https://www.vacheron-constantin.com/us/en/collections/patrimony/4000u-000p-h003.html'),

  -- ── PATRIMONY PERPETUAL CALENDAR ULTRA-THIN 41mm (Cal. 1120 QP, 40h PR, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '43175/000R-9687', 'Patrimony Perpetual Calendar Ultra-Thin', null, 'Patrimony', '18k Rose Gold', 41.0, 'automatic', '1120 QP', 30, 'Silver', 'Leather', 9200000, 8500000, 0.4, null, 'https://www.vacheron-constantin.com/us/en/collections/patrimony/43175-000r-9687.html'),
  ('b0000000-0000-0000-0000-000000000009', '43175/000R-B519', 'Patrimony Perpetual Calendar Ultra-Thin', null, 'Patrimony', '18k Rose Gold', 41.0, 'automatic', '1120 QP', 30, 'Blue', 'Leather', 9200000, 9000000, 0.6, null, 'https://www.vacheron-constantin.com/us/en/collections/patrimony/43175-000r-b519.html'),

  -- ── PATRIMONY MINUTE REPEATER ULTRA-THIN 41mm (Cal. 1731, 65h PR, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '30110/000R-9793', 'Patrimony Minute Repeater Ultra-Thin', null, 'Patrimony', '18k Rose Gold', 41.0, 'manual', '1731', 30, 'Silver', 'Leather', 29400000, 28000000, 0.2, null, 'https://www.vacheron-constantin.com/us/en/collections/patrimony/30110-000r-9793.html'),
  ('b0000000-0000-0000-0000-000000000009', '30110/000P-9999', 'Patrimony Minute Repeater Ultra-Thin', null, 'Patrimony', 'Platinum', 41.0, 'manual', '1731', 30, 'Silver', 'Leather', 36100000, 34000000, 0.1, null, 'https://www.vacheron-constantin.com/us/en/collections/patrimony/30110-000p-9999.html'),

  -- ── TRADITIONNELLE MANUAL-WINDING 38mm (Cal. 4400 AS, 65h PR, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '82172/000R-H008', 'Traditionnelle Manual-Winding', null, 'Traditionelle', '18k Rose Gold', 38.0, 'manual', '4400 AS', 30, 'Green', 'Leather', 2370000, 2100000, 0.5, null, 'https://www.vacheron-constantin.com/us/en/collections/traditionnelle/82172-000r-h008.html'),
  ('b0000000-0000-0000-0000-000000000009', '82172/000R-9382', 'Traditionnelle Manual-Winding', null, 'Traditionelle', '18k Rose Gold', 38.0, 'manual', '4400 AS', 30, 'Silver', 'Leather', 2370000, 2050000, 0.2, null, 'https://www.vacheron-constantin.com/us/en/collections/traditionnelle/82172-000r-9382.html'),
  ('b0000000-0000-0000-0000-000000000009', '82172/000P-H062', 'Traditionnelle Manual-Winding 270th Anniversary', null, 'Traditionelle', 'Platinum', 38.0, 'manual', '4400 AS', 30, 'Blue', 'Leather', 3630000, 4200000, 2.5, null, 'https://www.vacheron-constantin.com/us/en/collections/traditionnelle/82172-000p-h062.html'),
  ('b0000000-0000-0000-0000-000000000009', '82172/000R-H118', 'Traditionnelle Manual-Winding 270th Anniversary', null, 'Traditionelle', '18k Rose Gold', 38.0, 'manual', '4400 AS', 30, 'Blue', 'Leather', 2610000, 3000000, 2.0, null, 'https://www.vacheron-constantin.com/us/en/collections/traditionnelle/82172-000r-h118.html'),

  -- ── TRADITIONNELLE COMPLETE CALENDAR 41.5mm (Cal. 2460 QCL/1, 40h PR, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '4010T/000R-B344', 'Traditionnelle Complete Calendar', null, 'Traditionelle', '18k Rose Gold', 41.5, 'automatic', '2460 QCL/1', 30, 'Silver', 'Leather', 5100000, 4500000, 0.5, null, 'https://www.vacheron-constantin.com/us/en/collections/traditionnelle/4010t-000r-b344.html'),

  -- ── TRADITIONNELLE COMPLETE CALENDAR OPENFACE 41mm (Cal. 2460 QCL, 40h PR, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '4020T/000P-H038', 'Traditionnelle Complete Calendar Openface 270th', null, 'Traditionelle', 'Platinum', 41.0, 'automatic', '2460 QCL/270', 30, 'Silver', 'Leather', 6950000, 7200000, 1.5, null, 'https://www.vacheron-constantin.com/us/en/collections/traditionnelle/4020t-000p-h038.html'),
  ('b0000000-0000-0000-0000-000000000009', '4020T/000G-B655', 'Traditionnelle Complete Calendar Openface', null, 'Traditionelle', '18k White Gold', 41.0, 'automatic', '2460 QCL/1', 30, 'Silver', 'Leather', 6000000, 5500000, 0.6, null, 'https://www.vacheron-constantin.com/us/en/collections/traditionnelle/4020t-000g-b655.html'),
  ('b0000000-0000-0000-0000-000000000009', '4020T/000R-B654', 'Traditionnelle Complete Calendar Openface', null, 'Traditionelle', '18k Rose Gold', 41.0, 'automatic', '2460 QCL/1', 30, 'Silver', 'Leather', 6000000, 5400000, 0.4, null, 'https://www.vacheron-constantin.com/us/en/collections/traditionnelle/4020t-000r-b654.html'),

  -- ── TRADITIONNELLE PERPETUAL CALENDAR RETROGRADE DATE OPENFACE 41mm 270th ──
  ('b0000000-0000-0000-0000-000000000009', '4030T/000P-H054', 'Traditionnelle Perpetual Calendar Retrograde Date Openface 270th', null, 'Traditionelle', 'Platinum', 41.0, 'automatic', '2460 QPR31/270', 30, 'Silver', 'Leather', 11100000, 11500000, 1.0, null, 'https://www.vacheron-constantin.com/us/en/collections/traditionnelle/4030t-000p-h054.html'),

  -- ── TRADITIONNELLE MOON PHASE 42mm (Cal. 2460, 40h PR, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '83570/000R-H060', 'Traditionnelle Moon Phase 270th Anniversary', null, 'Traditionelle', '18k Rose Gold', 42.0, 'automatic', '2460', 30, 'Blue', 'Leather', 4500000, 5000000, 1.8, null, 'https://www.vacheron-constantin.com/us/en/collections/traditionnelle/83570-000r-h060.html'),

  -- ── TRADITIONNELLE TOURBILLON 41mm (Cal. 2160, 80h PR, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '6000T/000P-H025', 'Traditionnelle Tourbillon', null, 'Traditionelle', 'Platinum', 41.0, 'automatic', '2160', 30, 'Green', 'Leather', 19100000, 18000000, 0.3, null, 'https://www.vacheron-constantin.com/us/en/collections/traditionnelle/6000t-000p-h025.html'),

  -- ── TRADITIONNELLE TOURBILLON RETROGRADE DATE OPENFACE 41mm 270th ──
  ('b0000000-0000-0000-0000-000000000009', '6010T/000P-H055', 'Traditionnelle Tourbillon Retrograde Date Openface 270th', null, 'Traditionelle', 'Platinum', 41.0, 'automatic', '2160/270', 30, 'Silver', 'Leather', 22000000, 22500000, 0.5, null, 'https://www.vacheron-constantin.com/us/en/collections/traditionnelle/6010t-000p-h055.html'),

  -- ── TRADITIONNELLE TOURBILLON CHRONOGRAPH 42.5mm (Cal. 3200, 65h PR, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '5100T/000R-B623', 'Traditionnelle Tourbillon Chronograph', null, 'Traditionelle', '18k Rose Gold', 42.5, 'manual', '3200', 30, 'Silver', 'Leather', 19700000, 18500000, -0.3, null, 'https://www.vacheron-constantin.com/us/en/collections/traditionnelle/5100t-000r-b623.html'),

  -- ── TRADITIONNELLE TOURBILLON PERPETUAL CALENDAR 42mm 270th (Cal. 2162 QP/270, 72h PR, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '6300T/000P-H056', 'Traditionnelle Tourbillon Perpetual Calendar 270th', null, 'Traditionelle', 'Platinum', 42.0, 'automatic', '2162 QP/270', 30, 'Silver', 'Leather', 27300000, 28000000, 1.2, null, 'https://www.vacheron-constantin.com/us/en/collections/traditionnelle/6300t-000p-h056.html'),

  -- ── TRADITIONNELLE MINUTE REPEATER TOURBILLON 44mm (Cal. 2755 TMR, 58h PR, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '6500T/000R-B324', 'Traditionnelle Minute Repeater Tourbillon', null, 'Traditionelle', '18k Rose Gold', 44.0, 'manual', '2755 TMR', 30, 'Silver', 'Leather', 49090000, 47000000, 0.2, null, 'https://www.vacheron-constantin.com/us/en/collections/traditionnelle/6500t-000r-b324.html'),
  ('b0000000-0000-0000-0000-000000000009', '6500T/000P-B100', 'Traditionnelle Minute Repeater Tourbillon', null, 'Traditionelle', 'Platinum', 44.0, 'manual', '2755 TMR', 30, 'Slate', 'Leather', 54660000, 52000000, 0.1, null, 'https://www.vacheron-constantin.com/us/en/collections/traditionnelle/6500t-000p-b100.html'),

  -- ── HISTORIQUES 222 37mm (Cal. 2455/2, 40h PR, 50m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '4200H/222A-B978', 'Historiques 222', '222', 'Historiques', 'Stainless Steel', 37.0, 'automatic', '2455/2', 50, 'Gold', 'Stainless Steel', 3200000, 6500000, 4.5, null, 'https://www.vacheron-constantin.com/us/en/collections/historiques/4200h-222a-b978.html'),
  ('b0000000-0000-0000-0000-000000000009', '4200H/222A-B934', 'Historiques 222', '222 Steel Blue', 'Historiques', 'Stainless Steel', 37.0, 'automatic', '2455/2', 50, 'Blue', 'Stainless Steel', 3200000, 5800000, 3.8, null, 'https://www.vacheron-constantin.com/us/en/collections/historiques/4200h-222a-b934.html'),
  ('b0000000-0000-0000-0000-000000000009', '4200H/222J-B935', 'Historiques 222', '222 Yellow Gold', 'Historiques', '18k Yellow Gold', 37.0, 'automatic', '2455/2', 50, 'Gold', '18k Yellow Gold', 7750000, 8500000, 2.2, null, 'https://www.vacheron-constantin.com/us/en/collections/historiques/4200h-222j-b935.html'),

  -- ── HISTORIQUES AMERICAN 1921 40mm (Cal. 4400 AS, 65h PR, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '82035/000R-9359', 'Historiques American 1921', null, 'Historiques', '18k Rose Gold', 40.0, 'manual', '4400 AS', 30, 'White', 'Leather', 4500000, 3800000, 0.6, null, 'https://www.vacheron-constantin.com/us/en/collections/historiques/82035-000r-9359.html'),
  ('b0000000-0000-0000-0000-000000000009', '82035/000G-B735', 'Historiques American 1921', null, 'Historiques', '18k White Gold', 40.0, 'manual', '4400 AS', 30, 'Silver', 'Leather', 4500000, 3900000, 0.4, null, 'https://www.vacheron-constantin.com/us/en/collections/historiques/82035-000g-b735.html'),
  ('b0000000-0000-0000-0000-000000000009', '1100S/000R-B430', 'Historiques American 1921 Small', null, 'Historiques', '18k Rose Gold', 36.5, 'manual', '4400 AS', 30, 'Silver', 'Leather', 3720000, 3200000, 0.3, null, 'https://www.vacheron-constantin.com/us/en/collections/historiques/1100s-000r-b430.html'),

  -- ── HISTORIQUES CORNES DE VACHE 1955 38.5mm (Cal. 1142, 48h PR, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '5000H/000A-B582', 'Historiques Cornes de Vache 1955', null, 'Historiques', 'Stainless Steel', 38.5, 'manual', '1142', 30, 'Grey', 'Leather', 5050000, 4200000, 0.5, null, 'https://www.vacheron-constantin.com/us/en/collections/historiques/5000h-000a-b582.html'),
  ('b0000000-0000-0000-0000-000000000009', '5000H/000R-B059', 'Historiques Cornes de Vache 1955', null, 'Historiques', '18k Rose Gold', 38.5, 'manual', '1142', 30, 'Silver', 'Leather', 6850000, 5500000, 0.3, null, 'https://www.vacheron-constantin.com/us/en/collections/historiques/5000h-000r-b059.html'),

  -- ── FIFTYSIX SELF-WINDING 40mm (Cal. 1326, 48h PR, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '4600E/000A-B442', 'Fiftysix Self-Winding', null, 'Fiftysix', 'Stainless Steel', 40.0, 'automatic', '1326', 30, 'Silver', 'Leather', 1370000, 1050000, 0.4, null, 'https://www.vacheron-constantin.com/us/en/collections/fiftysix/4600e-000a-b442.html'),
  ('b0000000-0000-0000-0000-000000000009', '4600E/000A-B487', 'Fiftysix Self-Winding', null, 'Fiftysix', 'Stainless Steel', 40.0, 'automatic', '1326', 30, 'Blue', 'Leather', 1270000, 1080000, 0.6, null, 'https://www.vacheron-constantin.com/us/en/collections/fiftysix/4600e-000a-b487.html'),
  ('b0000000-0000-0000-0000-000000000009', '4600E/110A-B487', 'Fiftysix Self-Winding', null, 'Fiftysix', 'Stainless Steel', 40.0, 'automatic', '1326', 30, 'Blue', 'Stainless Steel', 1270000, 1150000, 0.5, null, 'https://www.vacheron-constantin.com/us/en/collections/fiftysix/4600e-110a-b487.html'),
  ('b0000000-0000-0000-0000-000000000009', '4600E/000R-B576', 'Fiftysix Self-Winding', null, 'Fiftysix', '18k Rose Gold', 40.0, 'automatic', '1326', 30, 'Brown', 'Leather', 2550000, 2200000, -0.2, null, 'https://www.vacheron-constantin.com/us/en/collections/fiftysix/4600e-000r-b576.html'),

  -- ── FIFTYSIX DAY-DATE 40mm (Cal. 2475 SC/2, 40h PR, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '4400E/000A-B437', 'Fiftysix Day-Date', null, 'Fiftysix', 'Stainless Steel', 40.0, 'automatic', '2475 SC/2', 30, 'Blue', 'Leather', 1790000, 1550000, 0.3, null, 'https://www.vacheron-constantin.com/us/en/collections/fiftysix/4400e-000a-b437.html'),
  ('b0000000-0000-0000-0000-000000000009', '4400E/000A-B943', 'Fiftysix Day-Date', null, 'Fiftysix', 'Stainless Steel', 40.0, 'automatic', '2475 SC/2', 30, 'Grey', 'Leather', 1790000, 1500000, 0.2, null, 'https://www.vacheron-constantin.com/us/en/collections/fiftysix/4400e-000a-b943.html'),
  ('b0000000-0000-0000-0000-000000000009', '4400E/000R-B436', 'Fiftysix Day-Date', null, 'Fiftysix', '18k Rose Gold', 40.0, 'automatic', '2475 SC/2', 30, 'Grey', 'Leather', 4870000, 2900000, -0.3, null, 'https://www.vacheron-constantin.com/us/en/collections/fiftysix/4400e-000r-b436.html'),

  -- ── FIFTYSIX COMPLETE CALENDAR 40mm (Cal. 2460 QCL/1, 40h PR, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '4000E/000A-B439', 'Fiftysix Complete Calendar', null, 'Fiftysix', 'Stainless Steel', 40.0, 'automatic', '2460 QCL/1', 30, 'Silver', 'Leather', 2850000, 2050000, 0.5, null, 'https://www.vacheron-constantin.com/us/en/collections/fiftysix/4000e-000a-b439.html'),
  ('b0000000-0000-0000-0000-000000000009', '4000E/000A-B548', 'Fiftysix Complete Calendar', null, 'Fiftysix', 'Stainless Steel', 40.0, 'automatic', '2460 QCL/1', 30, 'Blue', 'Leather', 2850000, 2200000, 0.6, null, 'https://www.vacheron-constantin.com/us/en/collections/fiftysix/4000e-000a-b548.html'),
  ('b0000000-0000-0000-0000-000000000009', '4000E/000R-B438', 'Fiftysix Complete Calendar', null, 'Fiftysix', '18k Rose Gold', 40.0, 'automatic', '2460 QCL/1', 30, 'Silver', 'Leather', 4910000, 3200000, -0.2, null, 'https://www.vacheron-constantin.com/us/en/collections/fiftysix/4000e-000r-b438.html'),

  -- ── EGERIE SELF-WINDING 35mm (Cal. 1088 L, 40h PR, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '4605F/110A-B495', 'Egerie Self-Winding', null, 'Egerie', 'Stainless Steel', 35.0, 'automatic', '1088 L', 30, 'White', 'Stainless Steel', 2340000, 2100000, 0.4, null, 'https://www.vacheron-constantin.com/us/en/collections/egerie/4605f-110a-b495.html'),
  ('b0000000-0000-0000-0000-000000000009', '4605F/000R-B496', 'Egerie Self-Winding', null, 'Egerie', '18k Rose Gold', 35.0, 'automatic', '1088 L', 30, 'White', 'Leather', 3410000, 3000000, 0.3, null, 'https://www.vacheron-constantin.com/us/en/collections/egerie/4605f-000r-b496.html'),

  -- ── EGERIE QUARTZ 30mm (Cal. 1207, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '1205F/000R-B622', 'Egerie Quartz', null, 'Egerie', '18k Rose Gold', 30.0, 'quartz', '1207', 30, 'Cream', 'Leather', 2140000, 1900000, 0.2, null, 'https://www.vacheron-constantin.com/us/en/collections/egerie/1205f-000r-b622.html'),

  -- ── METIERS D'ART ELEGANCE SARTORIALE 40mm (Cal. 2460 G4, 40h PR, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '1400U/000G-B215', 'Metiers d''Art Elegance Sartoriale', 'Prince of Wales', 'Metiers d''Art', '18k White Gold', 40.0, 'automatic', '2460 G4', 30, 'Patterned', 'Leather', 10500000, 9200000, -0.5, null, 'https://www.vacheron-constantin.com/us/en/collections/metiers-d-art/1400u-000g-b215.html'),
  ('b0000000-0000-0000-0000-000000000009', '1400U/000R-B159', 'Metiers d''Art Elegance Sartoriale', 'Herringbone', 'Metiers d''Art', '18k Rose Gold', 40.0, 'automatic', '2460 G4', 30, 'Patterned', 'Leather', 10500000, 9000000, -0.3, null, 'https://www.vacheron-constantin.com/us/en/collections/metiers-d-art/1400u-000r-b159.html'),
  ('b0000000-0000-0000-0000-000000000009', '1400U/000R-B216', 'Metiers d''Art Elegance Sartoriale', 'Windowpane', 'Metiers d''Art', '18k Rose Gold', 40.0, 'automatic', '2460 G4', 30, 'Patterned', 'Leather', 10500000, 9100000, -0.4, null, 'https://www.vacheron-constantin.com/us/en/collections/metiers-d-art/1400u-000r-b216.html'),
  ('b0000000-0000-0000-0000-000000000009', '1400U/000R-B217', 'Metiers d''Art Elegance Sartoriale', 'Pin Stripes', 'Metiers d''Art', '18k Rose Gold', 40.0, 'automatic', '2460 G4', 30, 'Patterned', 'Leather', 10500000, 9100000, -0.4, null, 'https://www.vacheron-constantin.com/us/en/collections/metiers-d-art/1400u-000r-b217.html'),
  ('b0000000-0000-0000-0000-000000000009', '1400U/000G-B218', 'Metiers d''Art Elegance Sartoriale', 'Tartan', 'Metiers d''Art', '18k White Gold', 40.0, 'automatic', '2460 G4', 30, 'Patterned', 'Leather', 10500000, 9300000, -0.3, null, 'https://www.vacheron-constantin.com/us/en/collections/metiers-d-art/1400u-000g-b218.html'),

  -- ── METIERS D'ART TRIBUTE TO THE CELESTIAL 39mm (Cal. 2160 Tourbillon, 80h PR, 30m WR) ──
  ('b0000000-0000-0000-0000-000000000009', '6007A/000G-H042', 'Metiers d''Art Tribute to the Celestial', 'Aries', 'Metiers d''Art', '18k White Gold', 39.0, 'automatic', '2160', 30, 'Blue Celestial', 'Leather', 26500000, 25000000, 0.3, null, 'https://www.vacheron-constantin.com/us/en/collections/metiers-d-art/6007a-000g-h042.html'),
  ('b0000000-0000-0000-0000-000000000009', '6007A/000G-H049', 'Metiers d''Art Tribute to the Celestial', 'Scorpio', 'Metiers d''Art', '18k White Gold', 39.0, 'automatic', '2160', 30, 'Blue Celestial', 'Leather', 26500000, 25000000, 0.3, null, 'https://www.vacheron-constantin.com/us/en/collections/metiers-d-art/6007a-000g-h049.html');


-- ============================================================
-- BREITLING (~65 watches)
-- ============================================================
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  -- ── Navitimer B01 Chronograph 41 ──
  ('b0000000-0000-0000-0000-000000000010', 'AB0139211B1A1', 'Navitimer B01 Chronograph 41', null, 'Navitimer', 'Stainless Steel', 41.0, 'automatic', 'B01', 30, 'Black', 'Stainless Steel', 985000, 780000, 0.9, null, 'https://www.breitling.com/us-en/watches/navitimer/navitimer-b01-chronograph-41-my22/AB0139211B1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'AB0139211B1P1', 'Navitimer B01 Chronograph 41', null, 'Navitimer', 'Stainless Steel', 41.0, 'automatic', 'B01', 30, 'Black', 'Leather', 930000, 740000, 0.7, null, 'https://www.breitling.com/us-en/watches/navitimer/navitimer-b01-chronograph-41-my22/AB0139211B1P1/'),
  ('b0000000-0000-0000-0000-000000000010', 'AB0139241C1A1', 'Navitimer B01 Chronograph 41', null, 'Navitimer', 'Stainless Steel', 41.0, 'automatic', 'B01', 30, 'Blue', 'Stainless Steel', 985000, 790000, 1.2, null, 'https://www.breitling.com/us-en/watches/navitimer/navitimer-b01-chronograph-41-my22/AB0139241C1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'AB0139241C1P1', 'Navitimer B01 Chronograph 41', null, 'Navitimer', 'Stainless Steel', 41.0, 'automatic', 'B01', 30, 'Blue', 'Leather', 930000, 750000, 1.0, null, 'https://www.breitling.com/us-en/watches/navitimer/navitimer-b01-chronograph-41-my22/AB0139241C1P1/'),
  ('b0000000-0000-0000-0000-000000000010', 'AB0139A71G1A1', 'Navitimer B01 Chronograph 41', null, 'Navitimer', 'Stainless Steel', 41.0, 'automatic', 'B01', 30, 'White', 'Stainless Steel', 985000, 800000, 0.8, null, 'https://www.breitling.com/us-en/watches/navitimer/navitimer-b01-chronograph-41-my22/AB0139A71G1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'AB0139A71G1P1', 'Navitimer B01 Chronograph 41', null, 'Navitimer', 'Stainless Steel', 41.0, 'automatic', 'B01', 30, 'White', 'Leather', 930000, 760000, 0.6, null, 'https://www.breitling.com/us-en/watches/navitimer/navitimer-b01-chronograph-41-my22/AB0139A71G1P1/'),
  ('b0000000-0000-0000-0000-000000000010', 'RB0139211B1R1', 'Navitimer B01 Chronograph 41', null, 'Navitimer', '18k Red Gold', 41.0, 'automatic', 'B01', 30, 'Black', 'Leather', 2350000, 1850000, -0.5, null, 'https://www.breitling.com/us-en/watches/navitimer/navitimer-b01-chronograph-41-my22/RB0139211B1R1/'),
  -- ── Navitimer B01 Chronograph 43 ──
  ('b0000000-0000-0000-0000-000000000010', 'AB0138211B1A1', 'Navitimer B01 Chronograph 43', null, 'Navitimer', 'Stainless Steel', 43.0, 'automatic', 'B01', 30, 'Black', 'Stainless Steel', 990000, 770000, 0.9, null, 'https://www.breitling.com/us-en/watches/navitimer/navitimer-b01-chronograph-43-my22/AB0138211B1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'AB0138241C1A1', 'Navitimer B01 Chronograph 43', null, 'Navitimer', 'Stainless Steel', 43.0, 'automatic', 'B01', 30, 'Blue', 'Stainless Steel', 1030000, 810000, 1.1, null, 'https://www.breitling.com/us-en/watches/navitimer/navitimer-b01-chronograph-43-my22/AB0138241C1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'AB0138241C1P1', 'Navitimer B01 Chronograph 43', null, 'Navitimer', 'Stainless Steel', 43.0, 'automatic', 'B01', 30, 'Blue', 'Leather', 975000, 770000, 0.8, null, 'https://www.breitling.com/us-en/watches/navitimer/navitimer-b01-chronograph-43-my22/AB0138241C1P1/'),
  ('b0000000-0000-0000-0000-000000000010', 'AB0138241G1P1', 'Navitimer B01 Chronograph 43', null, 'Navitimer', 'Stainless Steel', 43.0, 'automatic', 'B01', 30, 'Mint Green', 'Leather', 1030000, 830000, 1.5, null, 'https://www.breitling.com/us-en/watches/navitimer/navitimer-b01-chronograph-43-my22/AB0138241G1P1/'),
  ('b0000000-0000-0000-0000-000000000010', 'AB0138241K1P1', 'Navitimer B01 Chronograph 43', null, 'Navitimer', 'Stainless Steel', 43.0, 'automatic', 'B01', 30, 'Copper', 'Leather', 1030000, 820000, 1.3, null, 'https://www.breitling.com/us-en/watches/navitimer/navitimer-b01-chronograph-43-my22/AB0138241K1P1/'),
  ('b0000000-0000-0000-0000-000000000010', 'AB0138241L1P1', 'Navitimer B01 Chronograph 43', null, 'Navitimer', 'Stainless Steel', 43.0, 'automatic', 'B01', 30, 'Silver', 'Leather', 1030000, 800000, 0.7, null, 'https://www.breitling.com/us-en/watches/navitimer/navitimer-b01-chronograph-43-my22/AB0138241L1P1/'),
  ('b0000000-0000-0000-0000-000000000010', 'RB0138211B1R1', 'Navitimer B01 Chronograph 43', null, 'Navitimer', '18k Red Gold', 43.0, 'automatic', 'B01', 30, 'Black', 'Leather', 2450000, 1900000, -0.6, null, 'https://www.breitling.com/us-en/watches/navitimer/navitimer-b01-chronograph-43-my22/RB0138211B1R1/'),
  -- ── Navitimer B01 Chronograph 46 ──
  ('b0000000-0000-0000-0000-000000000010', 'AB0137211B1A1', 'Navitimer B01 Chronograph 46', null, 'Navitimer', 'Stainless Steel', 46.0, 'automatic', 'B01', 30, 'Black', 'Stainless Steel', 1050000, 810000, 0.6, null, 'https://www.breitling.com/us-en/watches/navitimer/navitimer-b01-chronograph-46-my22/AB0137211B1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'AB0137241C1P1', 'Navitimer B01 Chronograph 46', null, 'Navitimer', 'Stainless Steel', 46.0, 'automatic', 'B01', 30, 'Blue', 'Leather', 995000, 780000, 0.5, null, 'https://www.breitling.com/us-en/watches/navitimer/navitimer-b01-chronograph-46-my22/AB0137241C1P1/'),
  ('b0000000-0000-0000-0000-000000000010', 'AB0137241L1P1', 'Navitimer B01 Chronograph 46', null, 'Navitimer', 'Stainless Steel', 46.0, 'automatic', 'B01', 30, 'Silver', 'Leather', 1050000, 820000, 0.4, null, 'https://www.breitling.com/us-en/watches/navitimer/navitimer-b01-chronograph-46-my22/AB0137241L1P1/'),
  -- ── Navitimer Automatic (3-hand) ──
  ('b0000000-0000-0000-0000-000000000010', 'A17395161C1P1', 'Navitimer Automatic 35', null, 'Navitimer', 'Stainless Steel', 35.0, 'automatic', '17', 100, 'Blue', 'Leather', 430000, 350000, 0.3, null, 'https://www.breitling.com/us-en/watches/navitimer/navitimer-automatic-35/A17395161C1P1/'),
  ('b0000000-0000-0000-0000-000000000010', 'A17395F41G1P1', 'Navitimer Automatic 35', null, 'Navitimer', 'Stainless Steel', 35.0, 'automatic', '17', 100, 'Mint Green', 'Leather', 430000, 360000, 0.5, null, 'https://www.breitling.com/us-en/watches/navitimer/navitimer-automatic-35/A17395F41G1P1/'),
  ('b0000000-0000-0000-0000-000000000010', 'A17325211C1A1', 'Navitimer Automatic 38', null, 'Navitimer', 'Stainless Steel', 38.0, 'automatic', '17', 100, 'Blue', 'Stainless Steel', 485000, 390000, 0.2, null, 'https://www.breitling.com/us-en/watches/navitimer/navitimer-automatic-38/A17325211C1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'A17326211B1A1', 'Navitimer Automatic 41', null, 'Navitimer', 'Stainless Steel', 41.0, 'automatic', '17', 100, 'Black', 'Stainless Steel', 520000, 420000, 0.4, null, 'https://www.breitling.com/us-en/watches/navitimer/navitimer-automatic-41/A17326211B1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'A17326241C1P1', 'Navitimer Automatic 41', null, 'Navitimer', 'Stainless Steel', 41.0, 'automatic', '17', 100, 'Blue', 'Leather', 465000, 380000, 0.3, null, 'https://www.breitling.com/us-en/watches/navitimer/navitimer-automatic-41/A17326241C1P1/'),
  -- ── Chronomat B01 42 ──
  ('b0000000-0000-0000-0000-000000000010', 'AB0134101B1A1', 'Chronomat B01 42', null, 'Chronomat', 'Stainless Steel', 42.0, 'automatic', 'B01', 200, 'Black', 'Rouleaux', 895000, 670000, 0.3, null, 'https://www.breitling.com/us-en/watches/chronomat/chronomat-b01-42/AB0134101B1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'AB0134101C1A1', 'Chronomat B01 42', null, 'Chronomat', 'Stainless Steel', 42.0, 'automatic', 'B01', 200, 'Blue', 'Rouleaux', 895000, 680000, 0.5, null, 'https://www.breitling.com/us-en/watches/chronomat/chronomat-b01-42/AB0134101C1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'AB0134101G1A1', 'Chronomat B01 42', null, 'Chronomat', 'Stainless Steel', 42.0, 'automatic', 'B01', 200, 'Green', 'Rouleaux', 895000, 690000, 0.8, null, 'https://www.breitling.com/us-en/watches/chronomat/chronomat-b01-42/AB0134101G1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'AB0134101K1A1', 'Chronomat B01 42', null, 'Chronomat', 'Stainless Steel', 42.0, 'automatic', 'B01', 200, 'Copper', 'Rouleaux', 895000, 700000, 1.0, null, 'https://www.breitling.com/us-en/watches/chronomat/chronomat-b01-42/AB0134101K1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'UB0134101B1U1', 'Chronomat B01 42', null, 'Chronomat', 'Steel/18k Red Gold', 42.0, 'automatic', 'B01', 200, 'Black', 'Rouleaux', 1220000, 950000, -0.3, null, 'https://www.breitling.com/us-en/watches/chronomat/chronomat-b01-42/UB0134101B1U1/'),
  -- ── Super Chronomat B01 44 ──
  ('b0000000-0000-0000-0000-000000000010', 'AB0136251B1S1', 'Super Chronomat B01 44', null, 'Chronomat', 'Stainless Steel', 44.0, 'automatic', 'B01', 200, 'Black', 'Rubber', 1065000, 820000, -0.5, null, 'https://www.breitling.com/us-en/watches/chronomat/super-chronomat-b01-44/AB0136251B1S1/'),
  ('b0000000-0000-0000-0000-000000000010', 'AB0136251C1S1', 'Super Chronomat B01 44', null, 'Chronomat', 'Stainless Steel', 44.0, 'automatic', 'B01', 200, 'Blue', 'Rubber', 1065000, 830000, -0.3, null, 'https://www.breitling.com/us-en/watches/chronomat/super-chronomat-b01-44/AB0136251C1S1/'),
  ('b0000000-0000-0000-0000-000000000010', 'AB0136251B1A1', 'Super Chronomat B01 44', null, 'Chronomat', 'Stainless Steel', 44.0, 'automatic', 'B01', 200, 'Black', 'Rouleaux', 1120000, 870000, -0.2, null, 'https://www.breitling.com/us-en/watches/chronomat/super-chronomat-b01-44/AB0136251B1A1/'),
  -- ── Chronomat Automatic 36 ──
  ('b0000000-0000-0000-0000-000000000010', 'A10380101A3A1', 'Chronomat Automatic 36', null, 'Chronomat', 'Stainless Steel', 36.0, 'automatic', '10', 100, 'White', 'Rouleaux', 520000, 400000, 0.2, null, 'https://www.breitling.com/us-en/watches/chronomat/chronomat-automatic-36/A10380101A3A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'A10380101C1A1', 'Chronomat Automatic 36', null, 'Chronomat', 'Stainless Steel', 36.0, 'automatic', '10', 100, 'Blue', 'Rouleaux', 520000, 410000, 0.4, null, 'https://www.breitling.com/us-en/watches/chronomat/chronomat-automatic-36/A10380101C1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'A10380101A2A1', 'Chronomat Automatic 36', null, 'Chronomat', 'Stainless Steel', 36.0, 'automatic', '10', 100, 'Green', 'Rouleaux', 520000, 420000, 0.6, null, 'https://www.breitling.com/us-en/watches/chronomat/chronomat-automatic-36/A10380101A2A1/'),
  -- ── Chronomat 32 ──
  ('b0000000-0000-0000-0000-000000000010', 'A77310101A2A1', 'Chronomat 32', null, 'Chronomat', 'Stainless Steel', 32.0, 'quartz', null, 100, 'Green', 'Rouleaux', 390000, 310000, 0.1, null, 'https://www.breitling.com/us-en/watches/chronomat/chronomat-32/A77310101A2A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'A77310101C1A1', 'Chronomat 32', null, 'Chronomat', 'Stainless Steel', 32.0, 'quartz', null, 100, 'Blue', 'Rouleaux', 390000, 300000, 0.0, null, 'https://www.breitling.com/us-en/watches/chronomat/chronomat-32/A77310101C1A1/'),
  -- ── Superocean Automatic 42 / 44 / 46 ──
  ('b0000000-0000-0000-0000-000000000010', 'A17375211B2A1', 'Superocean Automatic 42', null, 'Superocean', 'Stainless Steel', 42.0, 'automatic', '17', 300, 'Blue', 'Stainless Steel', 570000, 430000, -0.3, null, 'https://www.breitling.com/us-en/watches/superocean/superocean-automatic-42/A17375211B2A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'A17375211C1S1', 'Superocean Automatic 42', null, 'Superocean', 'Stainless Steel', 42.0, 'automatic', '17', 300, 'Blue', 'Rubber', 525000, 400000, -0.2, null, 'https://www.breitling.com/us-en/watches/superocean/superocean-automatic-42/A17375211C1S1/'),
  ('b0000000-0000-0000-0000-000000000010', 'A17375211B1A1', 'Superocean Automatic 42', null, 'Superocean', 'Stainless Steel', 42.0, 'automatic', '17', 300, 'Black', 'Stainless Steel', 570000, 420000, 0.1, null, 'https://www.breitling.com/us-en/watches/superocean/superocean-automatic-42/A17375211B1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'A17377211O1S1', 'Superocean Automatic 36', null, 'Superocean', 'Stainless Steel', 36.0, 'automatic', '17', 300, 'Orange', 'Rubber', 560000, 440000, 0.5, null, 'https://www.breitling.com/us-en/watches/superocean/superocean-automatic-36/A17377211O1S1/'),
  ('b0000000-0000-0000-0000-000000000010', 'A17377211A1S1', 'Superocean Automatic 36', null, 'Superocean', 'Stainless Steel', 36.0, 'automatic', '17', 300, 'Turquoise', 'Rubber', 560000, 450000, 0.7, null, 'https://www.breitling.com/us-en/watches/superocean/superocean-automatic-36/A17377211A1S1/'),
  ('b0000000-0000-0000-0000-000000000010', 'A17376211C1S1', 'Superocean Automatic 44', null, 'Superocean', 'Stainless Steel', 44.0, 'automatic', '17', 300, 'Green', 'Rubber', 525000, 400000, 0.3, null, 'https://www.breitling.com/us-en/watches/superocean/superocean-automatic-44/A17376211C1S1/'),
  ('b0000000-0000-0000-0000-000000000010', 'A17376211B1S1', 'Superocean Automatic 46', null, 'Superocean', 'Stainless Steel', 46.0, 'automatic', '17', 300, 'Black', 'Rubber', 525000, 390000, -0.1, null, 'https://www.breitling.com/us-en/watches/superocean/superocean-automatic-46/A17376211B1S1/'),
  -- ── Superocean Heritage ──
  ('b0000000-0000-0000-0000-000000000010', 'A10370121B1A1', 'Superocean Heritage ''57', null, 'Superocean Heritage', 'Stainless Steel', 42.0, 'automatic', 'B20', 100, 'Black', 'Stainless Steel', 605000, 460000, 0.3, null, 'https://www.breitling.com/us-en/watches/superocean-heritage/superocean-heritage-57-42mm/A10370121B1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'A10370161C1A1', 'Superocean Heritage ''57', null, 'Superocean Heritage', 'Stainless Steel', 42.0, 'automatic', 'B20', 100, 'Blue', 'Stainless Steel Mesh', 605000, 470000, 0.5, null, 'https://www.breitling.com/us-en/watches/superocean-heritage/superocean-heritage-57-42mm/A10370161C1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'AB0162121B1A1', 'Superocean Heritage B01 Chronograph 44', null, 'Superocean Heritage', 'Stainless Steel', 44.0, 'automatic', 'B01', 200, 'Black', 'Stainless Steel', 880000, 670000, 0.2, null, 'https://www.breitling.com/us-en/watches/superocean-heritage/superocean-heritage-b01-chronograph-44/AB0162121B1A1/'),
  -- ── Avenger ──
  ('b0000000-0000-0000-0000-000000000010', 'A17318101B1A1', 'Avenger Automatic 43', null, 'Avenger', 'Stainless Steel', 43.0, 'automatic', '17', 300, 'Black', 'Stainless Steel', 480000, 360000, 0.1, null, 'https://www.breitling.com/us-en/watches/avenger/avenger-automatic-43/A17318101B1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'A17318101C1A1', 'Avenger Automatic 43', null, 'Avenger', 'Stainless Steel', 43.0, 'automatic', '17', 300, 'Blue', 'Stainless Steel', 480000, 370000, 0.3, null, 'https://www.breitling.com/us-en/watches/avenger/avenger-automatic-43/A17318101C1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'A17319101B1A1', 'Avenger Automatic 45 Seawolf', null, 'Avenger', 'Stainless Steel', 45.0, 'automatic', '17', 3000, 'Black', 'Stainless Steel', 560000, 430000, 0.2, null, 'https://www.breitling.com/us-en/watches/avenger/avenger-automatic-45-seawolf/A17319101B1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'A17319101I1A1', 'Avenger Automatic 45 Seawolf', 'Night Mission', 'Avenger', 'Stainless Steel', 45.0, 'automatic', '17', 3000, 'Yellow', 'Stainless Steel', 560000, 440000, 0.4, null, 'https://www.breitling.com/us-en/watches/avenger/avenger-automatic-45-seawolf/A17319101I1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'A32320101B1A1', 'Avenger Automatic GMT 44', null, 'Avenger', 'Stainless Steel', 44.0, 'automatic', '32', 300, 'Black', 'Stainless Steel', 555000, 420000, 0.1, null, 'https://www.breitling.com/us-en/watches/avenger/avenger-automatic-gmt-44/A32320101B1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'A32320101C1A1', 'Avenger Automatic GMT 44', null, 'Avenger', 'Stainless Steel', 44.0, 'automatic', '32', 300, 'Blue', 'Stainless Steel', 585000, 450000, 0.3, null, 'https://www.breitling.com/us-en/watches/avenger/avenger-automatic-gmt-44/A32320101C1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'A13317101B1A1', 'Avenger Chronograph 44', null, 'Avenger', 'Stainless Steel', 44.0, 'automatic', '13', 300, 'Black', 'Stainless Steel', 630000, 480000, -0.3, null, 'https://www.breitling.com/us-en/watches/avenger/avenger-chronograph-44/A13317101B1A1/'),
  ('b0000000-0000-0000-0000-000000000010', 'V17311101B1W1', 'Avenger Automatic GMT 44 Night Mission', null, 'Avenger', 'DLC-Coated Titanium', 44.0, 'automatic', '32', 300, 'Black', 'Leather', 590000, 460000, 0.2, null, 'https://www.breitling.com/us-en/watches/avenger/avenger-automatic-gmt-44/V17311101B1W1/'),
  -- ── Premier ──
  ('b0000000-0000-0000-0000-000000000010', 'AB0118A11L1X1', 'Premier B01 Chronograph 42', null, 'Premier', 'Stainless Steel', 42.0, 'automatic', 'B01', 100, 'Blue', 'Leather', 870000, 650000, 0.2, null, 'https://www.breitling.com/us-en/watches/premier/premier-b01-chronograph-42/AB0118A11L1X1/'),
  ('b0000000-0000-0000-0000-000000000010', 'AB0118221G1P2', 'Premier B01 Chronograph 42', null, 'Premier', 'Stainless Steel', 42.0, 'automatic', 'B01', 100, 'Green', 'Leather', 870000, 660000, 0.4, null, 'https://www.breitling.com/us-en/watches/premier/premier-b01-chronograph-42/AB0118221G1P2/'),
  ('b0000000-0000-0000-0000-000000000010', 'A37340351B1X1', 'Premier Automatic Day & Date 40', null, 'Premier', 'Stainless Steel', 40.0, 'automatic', '45', 100, 'Silver', 'Leather', 490000, 380000, -0.1, null, 'https://www.breitling.com/us-en/watches/premier/premier-automatic-day-date-40/A37340351B1X1/'),
  ('b0000000-0000-0000-0000-000000000010', 'A45340241B1X1', 'Premier Automatic 40', null, 'Premier', 'Stainless Steel', 40.0, 'automatic', '37', 100, 'Black', 'Leather', 435000, 340000, 0.1, null, 'https://www.breitling.com/us-en/watches/premier/premier-automatic-40/A45340241B1X1/'),
  -- ── Top Time ──
  ('b0000000-0000-0000-0000-000000000010', 'AB01764A1C1X1', 'Top Time B01 Chronograph 41', null, 'Top Time', 'Stainless Steel', 41.0, 'automatic', 'B01', 100, 'Blue', 'Leather', 880000, 720000, 0.5, null, 'https://www.breitling.com/us-en/watches/top-time/top-time-b01-chronograph-41/AB01764A1C1X1/'),
  ('b0000000-0000-0000-0000-000000000010', 'AB01763A1K1X1', 'Top Time B01 Chronograph 41', null, 'Top Time', 'Stainless Steel', 41.0, 'automatic', 'B01', 100, 'Copper', 'Leather', 880000, 730000, 0.6, null, 'https://www.breitling.com/us-en/watches/top-time/top-time-b01-chronograph-41/AB01763A1K1X1/'),
  ('b0000000-0000-0000-0000-000000000010', 'AB01765A1B1X1', 'Top Time B01 Chronograph 41', 'Top Time Deus', 'Top Time', 'Stainless Steel', 41.0, 'automatic', 'B01', 100, 'White', 'Leather', 920000, 780000, 1.0, null, 'https://www.breitling.com/us-en/watches/top-time/top-time-b01-chronograph-41/AB01765A1B1X1/'),
  -- ── Professional: Endurance Pro ──
  ('b0000000-0000-0000-0000-000000000010', 'X82310A71B1S1', 'Endurance Pro', null, 'Professional', 'Breitlight', 44.0, 'quartz', null, 100, 'Black', 'Rubber', 370000, 280000, -0.5, null, 'https://www.breitling.com/us-en/watches/professional/endurance-pro/X82310A71B1S1/'),
  ('b0000000-0000-0000-0000-000000000010', 'X82310D51B1S1', 'Endurance Pro', null, 'Professional', 'Breitlight', 44.0, 'quartz', null, 100, 'Orange', 'Rubber', 370000, 280000, -0.4, null, 'https://www.breitling.com/us-en/watches/professional/endurance-pro/X82310D51B1S1/'),
  ('b0000000-0000-0000-0000-000000000010', 'X82310E51B1S1', 'Endurance Pro', null, 'Professional', 'Breitlight', 44.0, 'quartz', null, 100, 'Yellow', 'Rubber', 370000, 275000, -0.6, null, 'https://www.breitling.com/us-en/watches/professional/endurance-pro/X82310E51B1S1/'),
  -- ── Professional: Aerospace Evo ──
  ('b0000000-0000-0000-0000-000000000010', 'E79363101B1E1', 'Aerospace Evo', null, 'Professional', 'Titanium', 43.0, 'quartz', null, 100, 'Black', 'Titanium', 437500, 290000, -0.8, null, 'https://www.breitling.com/us-en/watches/professional/aerospace-evo/E79363101B1E1/'),
  ('b0000000-0000-0000-0000-000000000010', 'E79363101B1S1', 'Aerospace Evo', null, 'Professional', 'Titanium', 43.0, 'quartz', null, 100, 'Black', 'Rubber', 519500, 350000, -0.5, null, 'https://www.breitling.com/us-en/watches/professional/aerospace-evo/E79363101B1S1/'),
  -- ── Professional: Emergency ──
  ('b0000000-0000-0000-0000-000000000010', 'E76325A5/O508', 'Emergency', null, 'Professional', 'Titanium', 51.0, 'quartz', null, 50, 'Black', 'Rubber', 1869500, 1300000, -1.0, null, 'https://www.breitling.com/us-en/watches/professional/emergency/E76325A5-O508/');

-- ============================================================
-- RICHARD MILLE (~45 watches)
-- ============================================================
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  -- ── RM 005 (Historical / Secondary Market) ──
  ('b0000000-0000-0000-0000-000000000011', 'RM 005', 'RM 005 Automatic', null, 'RM 005', 'Titanium', 48.0, 'automatic', 'RM005', 50, 'Skeleton', 'Rubber', null, 8500000, 0.6, null, 'https://www.richardmille.com/historical-models/rm-005-automatic'),
  ('b0000000-0000-0000-0000-000000000011', 'RM 005 RG', 'RM 005 Automatic', null, 'RM 005', '18k Rose Gold', 48.0, 'automatic', 'RM005', 50, 'Skeleton', 'Rubber', null, 12000000, 0.4, null, null),
  -- ── RM 007 (Ladies) ──
  ('b0000000-0000-0000-0000-000000000011', 'RM 007 Ti', 'RM 007 Automatic', null, 'RM 007', 'Titanium', 45.6, 'automatic', 'APRP', 50, 'Skeleton', 'Rubber', null, 9500000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000011', 'RM 007 RG', 'RM 007 Automatic', null, 'RM 007', '18k Rose Gold', 45.6, 'automatic', 'APRP', 50, 'Skeleton', 'Rubber', null, 14000000, 0.5, null, null),
  -- ── RM 07-01 (Ladies, Current Production) ──
  ('b0000000-0000-0000-0000-000000000011', 'RM 07-01 Carbon TPT', 'RM 07-01 Automatic', null, 'RM 07-01', 'Carbon TPT', 45.7, 'automatic', 'CRMA2', 50, 'Skeleton', 'Rubber', 20500000, 17500000, -0.3, null, 'https://www.richardmille.com/collections/rm-07-01-automatic'),
  ('b0000000-0000-0000-0000-000000000011', 'RM 07-01 Ceramic White', 'RM 07-01 Coloured Ceramics', 'White Ceramic Ladies', 'RM 07-01', 'White Ceramic', 45.7, 'automatic', 'CRMA2', 50, 'Skeleton', 'Rubber', 16300000, 14500000, 0.5, null, 'https://www.richardmille.com/collections/rm-07-01-coloured-ceramics-ii'),
  ('b0000000-0000-0000-0000-000000000011', 'RM 07-01 Ceramic Pink', 'RM 07-01 Coloured Ceramics', 'Pink Ceramic Ladies', 'RM 07-01', 'Pink Ceramic', 45.7, 'automatic', 'CRMA2', 50, 'Skeleton', 'Rubber', 16300000, 15000000, 0.8, null, 'https://www.richardmille.com/collections/rm-07-01-coloured-ceramics-ii'),
  ('b0000000-0000-0000-0000-000000000011', 'RM 07-01 Ceramic Blue', 'RM 07-01 Coloured Ceramics', 'Powder Blue Ceramic', 'RM 07-01', 'Blue Ceramic', 45.7, 'automatic', 'CRMA2', 50, 'Skeleton', 'Rubber', 16300000, 15200000, 1.0, null, null),
  ('b0000000-0000-0000-0000-000000000011', 'RM 07-01 RG', 'RM 07-01 Automatic', null, 'RM 07-01', '18k Rose Gold', 45.7, 'automatic', 'CRMA2', 50, 'Skeleton', 'Rubber', 15800000, 13000000, -0.2, null, null),
  -- ── RM 07-04 (Ladies Sport, Current Production) ──
  ('b0000000-0000-0000-0000-000000000011', 'RM 07-04 White', 'RM 07-04 Automatic Sport', 'Creamy White Sport', 'RM 07-04', 'Quartz TPT', 44.9, 'automatic', 'CRMA8', 50, 'Skeleton', 'Rubber', 20840000, 22000000, 1.5, null, 'https://www.richardmille.com/collections/rm-07-04-automatic-sport'),
  ('b0000000-0000-0000-0000-000000000011', 'RM 07-04 Green', 'RM 07-04 Automatic Sport', null, 'RM 07-04', 'Quartz TPT', 44.9, 'automatic', 'CRMA8', 50, 'Skeleton', 'Rubber', 21453000, 23000000, 2.0, null, null),
  ('b0000000-0000-0000-0000-000000000011', 'RM 07-04 Blue', 'RM 07-04 Automatic Sport', 'Dark Blue Sport', 'RM 07-04', 'Quartz TPT', 44.9, 'automatic', 'CRMA8', 50, 'Skeleton', 'Rubber', 21453000, 22500000, 1.8, null, null),
  -- ── RM 010 (Historical / Secondary Market) ──
  ('b0000000-0000-0000-0000-000000000011', 'RM 010 Ti', 'RM 010 Automatic', null, 'RM 010', 'Titanium', 48.0, 'automatic', 'RM010', 50, 'Skeleton', 'Rubber', null, 10000000, 0.8, null, 'https://www.richardmille.com/historical-models/rm-010-automatic'),
  ('b0000000-0000-0000-0000-000000000011', 'RM 010 RG', 'RM 010 Automatic', null, 'RM 010', '18k Rose Gold', 48.0, 'automatic', 'RM010', 50, 'Skeleton', 'Rubber', null, 15500000, 0.5, null, null),
  -- ── RM 011 (Flyback Chronograph) ──
  ('b0000000-0000-0000-0000-000000000011', 'RM 11-03 Ti', 'RM 11-03 Automatic Flyback Chronograph', null, 'RM 011', 'Titanium', 50.0, 'automatic', 'RMAC3', 50, 'Skeleton', 'Rubber', 19800000, 18000000, 1.5, null, 'https://www.richardmille.com/collections/rm-11-03-automatic-flyback-chronograph'),
  ('b0000000-0000-0000-0000-000000000011', 'RM 11-03 RG', 'RM 11-03 Automatic Flyback Chronograph', null, 'RM 011', '18k Rose Gold', 50.0, 'automatic', 'RMAC3', 50, 'Skeleton', 'Rubber', 35000000, 30000000, 0.8, null, null),
  ('b0000000-0000-0000-0000-000000000011', 'RM 11-03 Carbon TPT', 'RM 11-03 Automatic Flyback Chronograph', null, 'RM 011', 'Carbon TPT', 50.0, 'automatic', 'RMAC3', 50, 'Skeleton', 'Rubber', 22000000, 20000000, 1.0, null, null),
  ('b0000000-0000-0000-0000-000000000011', 'RM 011 FM', 'RM 011 Automatic Flyback Chronograph', 'Felipe Massa', 'RM 011', 'Titanium', 50.0, 'automatic', 'RMAC3', 50, 'Skeleton', 'Rubber', null, 18000000, 1.2, null, null),
  -- ── RM 016 (Rectangular, Extra Flat) ──
  ('b0000000-0000-0000-0000-000000000011', 'RM 016 Ti', 'RM 016 Automatic Extra Flat', null, 'RM 016', 'Titanium', 49.8, 'automatic', 'RMAS7', 30, 'Skeleton', 'Rubber', null, 8500000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000011', 'RM 016 RG', 'RM 016 Automatic Extra Flat', null, 'RM 016', '18k Rose Gold', 49.8, 'automatic', 'RMAS7', 30, 'Skeleton', 'Leather', null, 14000000, 0.4, null, null),
  -- ── RM 027 (Tourbillon, Rafael Nadal) ──
  ('b0000000-0000-0000-0000-000000000011', 'RM 027-04', 'RM 027-04 Tourbillon Rafael Nadal', 'Nadal Tourbillon', 'RM 027', 'Carbon TPT/Quartz TPT', 47.7, 'manual', 'RM027', 50, 'Skeleton', 'Rubber', null, 75000000, 3.0, null, null),
  -- ── RM 029 (Automatic with Oversize Date) ──
  ('b0000000-0000-0000-0000-000000000011', 'RM 029 Ti', 'RM 029 Automatic with Oversize Date', null, 'RM 029', 'Titanium', 48.0, 'automatic', 'RMAR1', 50, 'Skeleton', 'Rubber', null, 10000000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000011', 'RM 029 RG', 'RM 029 Automatic with Oversize Date', null, 'RM 029', '18k Rose Gold', 48.0, 'automatic', 'RMAR1', 50, 'Skeleton', 'Rubber', null, 15000000, 0.6, null, null),
  -- ── RM 030 (Automatic Declutchable Rotor) ──
  ('b0000000-0000-0000-0000-000000000011', 'RM 030 Ti', 'RM 030 Automatic Declutchable Rotor', null, 'RM 030', 'Titanium', 50.0, 'automatic', 'RMAR1', 50, 'Skeleton', 'Rubber', 13500000, 11000000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000011', 'RM 030 RG', 'RM 030 Automatic Declutchable Rotor', null, 'RM 030', '18k Rose Gold', 50.0, 'automatic', 'RMAR1', 50, 'Skeleton', 'Rubber', 17500000, 16000000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000011', 'RM 030 Carbon TPT', 'RM 030 Automatic Declutchable Rotor', null, 'RM 030', 'Carbon TPT', 50.0, 'automatic', 'RMAR1', 50, 'Skeleton', 'Rubber', 16000000, 14500000, 0.5, null, null),
  -- ── RM 035 (Rafael Nadal, Current Production) ──
  ('b0000000-0000-0000-0000-000000000011', 'RM 35-02', 'RM 35-02 Automatic Rafael Nadal', 'Nadal', 'RM 035', 'Carbon TPT', 49.9, 'automatic', 'RMUL3', 50, 'Skeleton', 'Rubber', 20000000, 18000000, 0.8, null, 'https://www.richardmille.com/historical-models/rm-35-02-automatic-rafael-nadal'),
  ('b0000000-0000-0000-0000-000000000011', 'RM 35-03', 'RM 35-03 Automatic Rafael Nadal', 'Baby Nadal', 'RM 035', 'Red Quartz TPT/Carbon TPT', 49.9, 'automatic', 'RMAL2', 50, 'Skeleton', 'Rubber', 23800000, 22000000, 1.2, null, null),
  -- ── RM 037 (Ladies, Current Production) ──
  ('b0000000-0000-0000-0000-000000000011', 'RM 037 Carbon TPT', 'RM 037 Automatic', null, 'RM 037', 'Carbon TPT', 52.6, 'automatic', 'CRMA1', 50, 'Skeleton', 'Rubber', 16800000, 14500000, 0.3, null, 'https://www.richardmille.com/collections/rm-037-automatic'),
  ('b0000000-0000-0000-0000-000000000011', 'RM 037 Ceramic White', 'RM 037 Automatic', 'White Ceramic', 'RM 037', 'White Ceramic', 52.6, 'automatic', 'CRMA1', 50, 'Skeleton', 'Rubber', 14500000, 12000000, 0.5, null, 'https://www.richardmille.com/page/rm-037-white-ceramic'),
  ('b0000000-0000-0000-0000-000000000011', 'RM 037 RG', 'RM 037 Automatic', null, 'RM 037', '18k Rose Gold', 52.6, 'automatic', 'CRMA1', 50, 'Skeleton', 'Rubber', 18500000, 16000000, 0.2, null, null),
  -- ── RM 039 (Aviation E6-B Tourbillon) ──
  ('b0000000-0000-0000-0000-000000000011', 'RM 039-01', 'RM 039-01 Aviation E6-B Flyback Chronograph', null, 'RM 039', 'Titanium', 50.0, 'automatic', 'RMAC3', 50, 'Skeleton', 'Rubber', null, 85000000, 2.0, null, null),
  -- ── RM 050 (Tourbillon Split-Seconds) ──
  ('b0000000-0000-0000-0000-000000000011', 'RM 050', 'RM 050 Tourbillon Split-Seconds Chronograph', null, 'RM 050', 'Carbon Nanotubes', 50.0, 'manual', 'RMCC1', 50, 'Skeleton', 'Rubber', null, 95000000, 1.5, null, null),
  ('b0000000-0000-0000-0000-000000000011', 'RM 50-03 McLaren F1', 'RM 50-03 Tourbillon Split-Seconds McLaren F1', 'McLaren F1', 'RM 050', 'Graph TPT', 50.0, 'manual', 'RM50-03', 50, 'Skeleton', 'Rubber', null, 150000000, 2.5, null, null),
  -- ── RM 055 (Bubba Watson) ──
  ('b0000000-0000-0000-0000-000000000011', 'RM 055 White Ceramic', 'RM 055 Bubba Watson', 'Bubba Watson White', 'RM 055', 'White Ceramic/Carbon TPT', 49.9, 'manual', 'RMUL2', 50, 'Skeleton', 'Rubber', 19000000, 16000000, -1.2, null, null),
  ('b0000000-0000-0000-0000-000000000011', 'RM 055 Carbon TPT', 'RM 055 Bubba Watson', 'Bubba Watson', 'RM 055', 'Carbon TPT', 49.9, 'manual', 'RMUL2', 50, 'Skeleton', 'Rubber', 18500000, 15500000, -0.8, null, null),
  -- ── RM 056 (Sapphire Tourbillon) ──
  ('b0000000-0000-0000-0000-000000000011', 'RM 056', 'RM 056 Tourbillon Split-Seconds', 'Sapphire RM', 'RM 056', 'Sapphire Crystal', 50.5, 'manual', 'RM056', 30, 'Skeleton', 'Rubber', null, 200000000, 5.0, null, null),
  -- ── RM 067 (Extra Flat, Current Production) ──
  ('b0000000-0000-0000-0000-000000000011', 'RM 67-01 Ti', 'RM 67-01 Automatic Extra Flat', null, 'RM 067', 'Titanium', 47.5, 'automatic', 'CRMA6', 30, 'Skeleton', 'Rubber', 12000000, 9500000, 0.5, null, 'https://www.richardmille.com/collections/rm-67-01-automatic-extra-flat'),
  ('b0000000-0000-0000-0000-000000000011', 'RM 67-01 RG', 'RM 67-01 Automatic Extra Flat', null, 'RM 067', '18k Rose Gold', 47.5, 'automatic', 'CRMA6', 30, 'Skeleton', 'Rubber', 17100000, 14000000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000011', 'RM 67-02 Sprint', 'RM 67-02 Automatic Extra Flat', null, 'RM 067', 'Quartz TPT/Carbon TPT', 47.5, 'automatic', 'CRMA7', 30, 'Skeleton', 'Elastic', 17000000, 15000000, 1.0, null, 'https://www.richardmille.com/collections/rm-67-02-automatic-extra-flat'),
  ('b0000000-0000-0000-0000-000000000011', 'RM 67-02 Alexander Zverev', 'RM 67-02 Automatic Extra Flat', 'Zverev', 'RM 067', 'Quartz TPT/Carbon TPT', 47.5, 'automatic', 'CRMA7', 30, 'Skeleton', 'Elastic', 17000000, 16000000, 1.2, null, null),
  -- ── RM 068 (Tourbillon Cyril Kongo) ──
  ('b0000000-0000-0000-0000-000000000011', 'RM 68-01', 'RM 68-01 Tourbillon Cyril Kongo', 'Kongo', 'RM 068', 'Carbon TPT/Quartz TPT', 50.0, 'manual', 'RM68-01', 50, 'Hand-painted', 'Rubber', null, 120000000, 3.5, null, null),
  -- ── RM 069 (Erotic Tourbillon) ──
  ('b0000000-0000-0000-0000-000000000011', 'RM 69 RG', 'RM 69 Erotic Tourbillon', null, 'RM 069', '18k Rose Gold', 47.3, 'manual', 'RM69', 30, 'Skeleton/Erotic', 'Rubber', null, 95000000, 2.0, null, null),
  -- ── RM 072 (Lifestyle Chronograph) ──
  ('b0000000-0000-0000-0000-000000000011', 'RM 72-01 Ceramic', 'RM 72-01 Lifestyle Chronograph', null, 'RM 072', 'Ceramic', 47.3, 'automatic', 'CRMC1', 50, 'Skeleton', 'Rubber', 21500000, 19000000, -0.5, null, null),
  ('b0000000-0000-0000-0000-000000000011', 'RM 72-01 Leclerc', 'RM 72-01 Lifestyle Chronograph', 'Charles Leclerc', 'RM 072', 'Carbon TPT', 47.3, 'automatic', 'CRMC1', 50, 'Skeleton', 'Rubber', 33000000, 45000000, 5.0, null, null);

-- ============================================================
-- TISSOT (~60 watches)
-- ============================================================
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  -- ── PRX Powermatic 80 (40mm) ──
  ('b0000000-0000-0000-0000-000000000012', 'T137.407.11.041.00', 'PRX Powermatic 80', 'PRX Blue', 'PRX', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80', 100, 'Blue', 'Stainless Steel', 65000, 60000, 0.5, null, 'https://www.tissotwatches.com/en-us/T1374071104100.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T137.407.11.051.00', 'PRX Powermatic 80', 'PRX Black', 'PRX', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80', 100, 'Black', 'Stainless Steel', 65000, 58000, 0.3, null, 'https://www.tissotwatches.com/en-us/T1374071105100.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T137.407.11.091.00', 'PRX Powermatic 80', 'PRX Green', 'PRX', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80', 100, 'Green', 'Stainless Steel', 65000, 62000, 1.2, null, 'https://www.tissotwatches.com/en-us/T1374071109100.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T137.407.11.091.01', 'PRX Powermatic 80', null, 'PRX', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80', 100, 'Dark Green', 'Stainless Steel', 65000, 63000, 1.5, null, 'https://www.tissotwatches.com/en-us/T1374071109101.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T137.407.11.031.00', 'PRX Powermatic 80', null, 'PRX', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80', 100, 'Silver', 'Stainless Steel', 65000, 57000, 0.2, null, 'https://www.tissotwatches.com/en-us/T1374071103100.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T137.407.16.041.00', 'PRX Powermatic 80', null, 'PRX', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80', 100, 'Blue', 'Leather', 60000, 55000, 0.2, null, 'https://www.tissotwatches.com/en-us/T1374071604100.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T137.407.11.351.00', 'PRX Powermatic 80', null, 'PRX', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80', 100, 'Gradient Blue', 'Stainless Steel', 65000, 62000, 0.8, null, 'https://www.tissotwatches.com/en-us/T1374071135100.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T137.407.33.041.00', 'PRX Powermatic 80', null, 'PRX', 'Rose Gold PVD', 40.0, 'automatic', 'Powermatic 80', 100, 'Blue', 'Stainless Steel', 75000, 68000, 0.4, null, 'https://www.tissotwatches.com/en-us/T1374073304100.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T137.407.33.021.00', 'PRX Powermatic 80', null, 'PRX', 'Rose Gold PVD', 40.0, 'automatic', 'Powermatic 80', 100, 'Silver', 'Stainless Steel', 75000, 65000, 0.3, null, 'https://www.tissotwatches.com/en-us/T1374073302100.html'),
  -- ── PRX Quartz (40mm) ──
  ('b0000000-0000-0000-0000-000000000012', 'T137.410.11.041.00', 'PRX', 'PRX Quartz Blue', 'PRX', 'Stainless Steel', 40.0, 'quartz', null, 100, 'Blue', 'Stainless Steel', 35000, 30000, 0.1, null, 'https://www.tissotwatches.com/en-us/T1374101104100.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T137.410.11.051.00', 'PRX', 'PRX Quartz Black', 'PRX', 'Stainless Steel', 40.0, 'quartz', null, 100, 'Black', 'Stainless Steel', 35000, 29000, 0.0, null, 'https://www.tissotwatches.com/en-us/T1374101105100.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T137.410.11.031.00', 'PRX', null, 'PRX', 'Stainless Steel', 40.0, 'quartz', null, 100, 'Silver', 'Stainless Steel', 35000, 28000, -0.1, null, 'https://www.tissotwatches.com/en-us/T1374101103100.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T137.410.11.091.00', 'PRX', null, 'PRX', 'Stainless Steel', 40.0, 'quartz', null, 100, 'Green', 'Stainless Steel', 35000, 30000, 0.2, null, 'https://www.tissotwatches.com/en-us/T1374101109100.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T137.410.11.421.00', 'PRX', null, 'PRX', 'Stainless Steel', 40.0, 'quartz', null, 100, 'Red', 'Stainless Steel', 35000, 31000, 0.5, null, 'https://www.tissotwatches.com/en-us/T1374101142100.html'),
  -- ── PRX 35mm (Women) ──
  ('b0000000-0000-0000-0000-000000000012', 'T137.210.11.041.00', 'PRX 35', null, 'PRX', 'Stainless Steel', 35.0, 'quartz', null, 100, 'Blue', 'Stainless Steel', 35000, 29000, 0.1, null, 'https://www.tissotwatches.com/en-us/T1372101104100.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T137.210.11.091.00', 'PRX 35', null, 'PRX', 'Stainless Steel', 35.0, 'quartz', null, 100, 'Green', 'Stainless Steel', 35000, 30000, 0.3, null, 'https://www.tissotwatches.com/en-us/T1372101109100.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T137.207.11.041.00', 'PRX Powermatic 80 35', null, 'PRX', 'Stainless Steel', 35.0, 'automatic', 'Powermatic 80', 100, 'Blue', 'Stainless Steel', 65000, 58000, 0.4, null, 'https://www.tissotwatches.com/en-us/T1372071104100.html'),
  -- ── PRX Chronograph ──
  ('b0000000-0000-0000-0000-000000000012', 'T137.427.11.041.00', 'PRX Automatic Chronograph', null, 'PRX', 'Stainless Steel', 42.0, 'automatic', 'ETA A05.H31', 100, 'Blue', 'Stainless Steel', 130000, 125000, 1.8, null, 'https://www.tissotwatches.com/en-us/T1374271104100.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T137.427.11.051.00', 'PRX Automatic Chronograph', null, 'PRX', 'Stainless Steel', 42.0, 'automatic', 'ETA A05.H31', 100, 'Black', 'Stainless Steel', 130000, 122000, 1.5, null, 'https://www.tissotwatches.com/en-us/T1374271105100.html'),
  -- ── Gentleman ──
  ('b0000000-0000-0000-0000-000000000012', 'T127.407.11.041.00', 'Gentleman Powermatic 80 Silicium', null, 'Gentleman', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80.811', 50, 'Blue', 'Stainless Steel', 59500, 50000, -0.3, null, 'https://www.tissotwatches.com/en-us/T1274071104100.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T127.407.11.051.00', 'Gentleman Powermatic 80 Silicium', null, 'Gentleman', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80.811', 50, 'Black', 'Stainless Steel', 59500, 48000, -0.2, null, 'https://www.tissotwatches.com/en-us/T1274071105100.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T127.407.16.041.01', 'Gentleman Powermatic 80 Silicium', null, 'Gentleman', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80.811', 50, 'Blue', 'Leather', 54500, 45000, -0.2, null, 'https://www.tissotwatches.com/en-us/T1274071604101.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T127.407.16.031.01', 'Gentleman Powermatic 80 Silicium', null, 'Gentleman', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80.811', 50, 'Silver', 'Leather', 54500, 44000, -0.1, null, 'https://www.tissotwatches.com/en-us/T1274071603101.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T127.410.11.041.00', 'Gentleman', null, 'Gentleman', 'Stainless Steel', 40.0, 'quartz', null, 50, 'Blue', 'Stainless Steel', 33500, 27000, -0.1, null, 'https://www.tissotwatches.com/en-us/T1274101104100.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T127.410.44.081.00', 'Gentleman Titanium', null, 'Gentleman', 'Titanium', 40.0, 'quartz', null, 50, 'Grey', 'Titanium', 42500, 35000, 0.2, null, 'https://www.tissotwatches.com/en-us/T1274104408100.html'),
  -- ── Seastar 1000 Powermatic 80 ──
  ('b0000000-0000-0000-0000-000000000012', 'T120.407.11.041.03', 'Seastar 1000 Powermatic 80', null, 'Seastar', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80', 300, 'Blue', 'Stainless Steel', 72500, 60000, 0.4, null, 'https://www.tissotwatches.com/en-us/T1204071104103.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T120.407.11.051.00', 'Seastar 1000 Powermatic 80', null, 'Seastar', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80', 300, 'Black', 'Stainless Steel', 72500, 58000, 0.2, null, 'https://www.tissotwatches.com/en-us/T1204071105100.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T120.407.11.091.01', 'Seastar 1000 Powermatic 80', null, 'Seastar', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80', 300, 'Green', 'Stainless Steel', 72500, 62000, 0.6, null, 'https://www.tissotwatches.com/en-us/T1204071109101.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T120.407.37.051.00', 'Seastar 1000 Powermatic 80', null, 'Seastar', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80', 300, 'Black', 'Rubber', 67500, 55000, 0.3, null, 'https://www.tissotwatches.com/en-us/T1204073705100.html'),
  -- ── Seastar 1000 Chronograph (Quartz) ──
  ('b0000000-0000-0000-0000-000000000012', 'T120.417.11.041.01', 'Seastar 1000 Chronograph', null, 'Seastar', 'Stainless Steel', 45.5, 'quartz', null, 300, 'Blue', 'Stainless Steel', 57500, 38000, -0.3, null, 'https://www.tissotwatches.com/en-us/T1204171104101.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T120.417.11.051.01', 'Seastar 1000 Chronograph', null, 'Seastar', 'Stainless Steel', 45.5, 'quartz', null, 300, 'Black', 'Stainless Steel', 57500, 37000, -0.2, null, 'https://www.tissotwatches.com/en-us/T1204171105101.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T120.417.17.051.00', 'Seastar 1000 Chronograph', null, 'Seastar', 'Stainless Steel', 45.5, 'quartz', null, 300, 'Black', 'Rubber', 52500, 35000, -0.1, null, 'https://www.tissotwatches.com/en-us/T1204171705100.html'),
  -- ── Seastar 2000 Professional ──
  ('b0000000-0000-0000-0000-000000000012', 'T120.607.11.041.00', 'Seastar 2000 Professional Powermatic 80', null, 'Seastar', 'Stainless Steel', 46.0, 'automatic', 'Powermatic 80', 600, 'Blue', 'Stainless Steel', 89900, 78000, 0.5, null, 'https://www.tissotwatches.com/en-us/T1206071104100.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T120.607.11.051.00', 'Seastar 2000 Professional Powermatic 80', null, 'Seastar', 'Stainless Steel', 46.0, 'automatic', 'Powermatic 80', 600, 'Black', 'Stainless Steel', 89900, 76000, 0.3, null, 'https://www.tissotwatches.com/en-us/T1206071105100.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T120.607.17.441.00', 'Seastar 2000 Professional Powermatic 80', null, 'Seastar', 'Stainless Steel', 46.0, 'automatic', 'Powermatic 80', 600, 'Blue', 'Rubber', 89900, 75000, 0.4, null, 'https://www.tissotwatches.com/en-us/T1206071744100.html'),
  -- ── Le Locle ──
  ('b0000000-0000-0000-0000-000000000012', 'T006.407.11.033.00', 'Le Locle Powermatic 80', null, 'Le Locle', 'Stainless Steel', 39.3, 'automatic', 'Powermatic 80', 30, 'Silver', 'Stainless Steel', 52500, 40000, -0.1, null, 'https://www.tissotwatches.com/en-us/T0064071103300.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T006.407.16.033.00', 'Le Locle Powermatic 80', null, 'Le Locle', 'Stainless Steel', 39.3, 'automatic', 'Powermatic 80', 30, 'Silver', 'Leather', 47500, 38000, -0.2, null, 'https://www.tissotwatches.com/en-us/T0064071603300.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T006.407.36.053.00', 'Le Locle Powermatic 80', null, 'Le Locle', 'Rose Gold PVD', 39.3, 'automatic', 'Powermatic 80', 30, 'Black', 'Leather', 55000, 42000, 0.1, null, 'https://www.tissotwatches.com/en-us/T0064073605300.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T006.407.11.043.00', 'Le Locle Powermatic 80 Open Heart', null, 'Le Locle', 'Stainless Steel', 39.3, 'automatic', 'Powermatic 80', 30, 'Blue', 'Stainless Steel', 57500, 45000, 0.3, null, 'https://www.tissotwatches.com/en-us/T0064071104300.html'),
  -- ── Chemin des Tourelles ──
  ('b0000000-0000-0000-0000-000000000012', 'T099.407.11.038.00', 'Chemin des Tourelles Powermatic 80', null, 'Chemin des Tourelles', 'Stainless Steel', 42.0, 'automatic', 'Powermatic 80', 50, 'Silver', 'Stainless Steel', 72500, 55000, -0.2, null, 'https://www.tissotwatches.com/en-us/T0994071103800.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T099.407.16.038.00', 'Chemin des Tourelles Powermatic 80', null, 'Chemin des Tourelles', 'Stainless Steel', 42.0, 'automatic', 'Powermatic 80', 50, 'Silver', 'Leather', 67500, 52000, -0.1, null, 'https://www.tissotwatches.com/en-us/T0994071603800.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T099.407.11.048.00', 'Chemin des Tourelles Powermatic 80', null, 'Chemin des Tourelles', 'Stainless Steel', 42.0, 'automatic', 'Powermatic 80', 50, 'Blue', 'Stainless Steel', 72500, 56000, 0.2, null, 'https://www.tissotwatches.com/en-us/T0994071104800.html'),
  -- ── Ballade ──
  ('b0000000-0000-0000-0000-000000000012', 'T108.408.11.037.00', 'Ballade Powermatic 80 COSC', null, 'Ballade', 'Stainless Steel', 41.0, 'automatic', 'Powermatic 80.111', 50, 'Silver', 'Stainless Steel', 95000, 70000, 0.1, null, 'https://www.tissotwatches.com/en-us/T1084081103700.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T108.408.16.037.00', 'Ballade Powermatic 80 COSC', null, 'Ballade', 'Stainless Steel', 41.0, 'automatic', 'Powermatic 80.111', 50, 'Silver', 'Leather', 90000, 65000, 0.0, null, 'https://www.tissotwatches.com/en-us/T1084081603700.html'),
  -- ── Carson ──
  ('b0000000-0000-0000-0000-000000000012', 'T122.410.11.033.00', 'Carson Premium', null, 'Carson', 'Stainless Steel', 40.0, 'quartz', null, 50, 'Silver', 'Stainless Steel', 28500, 22000, -0.1, null, 'https://www.tissotwatches.com/en-us/T1224101103300.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T122.407.11.031.00', 'Carson Premium Powermatic 80', null, 'Carson', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80', 50, 'Silver', 'Stainless Steel', 47500, 38000, 0.2, null, 'https://www.tissotwatches.com/en-us/T1224071103100.html'),
  -- ── Everytime ──
  ('b0000000-0000-0000-0000-000000000012', 'T143.410.11.011.00', 'Everytime 40mm', null, 'Everytime', 'Stainless Steel', 40.0, 'quartz', null, 30, 'White', 'Stainless Steel', 22500, 18000, 0.0, null, 'https://www.tissotwatches.com/en-us/T1434101101100.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T143.410.16.041.00', 'Everytime 40mm', null, 'Everytime', 'Stainless Steel', 40.0, 'quartz', null, 30, 'Blue', 'Leather', 19500, 16000, 0.1, null, 'https://www.tissotwatches.com/en-us/T1434101604100.html'),
  -- ── T-Race ──
  ('b0000000-0000-0000-0000-000000000012', 'T141.417.11.057.00', 'T-Race Chronograph', null, 'T-Race', 'Stainless Steel', 45.0, 'quartz', null, 100, 'Black', 'Stainless Steel/Rubber', 62500, 50000, 0.3, null, 'https://www.tissotwatches.com/en-us/T1414171105700.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T141.427.11.041.00', 'T-Race MotoGP Automatic Chronograph', null, 'T-Race', 'Stainless Steel', 45.0, 'automatic', 'ETA A05.H31', 100, 'Blue', 'Rubber', 209500, 195000, 1.5, null, 'https://www.tissotwatches.com/en-us/T1414271104100.html'),
  -- ── Supersport ──
  ('b0000000-0000-0000-0000-000000000012', 'T125.610.11.051.00', 'Supersport', null, 'Supersport', 'Stainless Steel', 40.0, 'quartz', null, 100, 'Black', 'Stainless Steel', 32500, 26000, -0.1, null, 'https://www.tissotwatches.com/en-us/T1256101105100.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T125.617.11.051.00', 'Supersport Chrono', null, 'Supersport', 'Stainless Steel', 45.5, 'quartz', null, 100, 'Black', 'Stainless Steel', 45000, 36000, 0.2, null, 'https://www.tissotwatches.com/en-us/T1256171105100.html'),
  -- ── Heritage ──
  ('b0000000-0000-0000-0000-000000000012', 'T142.464.16.062.00', 'Heritage Porto', null, 'Heritage', 'Stainless Steel', 39.2, 'manual', null, 30, 'Silver', 'Leather', 47500, 42000, 0.8, null, 'https://www.tissotwatches.com/en-us/T1424641606200.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T142.464.16.032.00', 'Heritage Porto', null, 'Heritage', 'Stainless Steel', 39.2, 'manual', null, 30, 'Silver', 'Leather', 47500, 41000, 0.5, null, 'https://www.tissotwatches.com/en-us/T1424641603200.html'),
  ('b0000000-0000-0000-0000-000000000012', 'T142.462.16.062.00', 'Heritage Porto Mechanical', null, 'Heritage', 'Stainless Steel', 42.0, 'manual', null, 30, 'Silver', 'Leather', 42500, 38000, 0.6, null, 'https://www.tissotwatches.com/en-us/T1424621606200.html');

-- ============================================================
-- HERMES — COMPLETE CATALOG (~100 watches)
-- Collections: Arceau, Cape Cod, Heure H, Slim d Hermes,
-- H08, Nantucket, Kelly, Galop, Hermes Cut, Carre H,
-- Faubourg, Medor
-- Calibers: H1837 (auto, Vaucher, 50h PR, 4Hz)
--           H1912 (auto, Vaucher, 42h PR)
--           H1950 (ultra-thin auto, Vaucher, 42h PR)
--           H1925 (chrono auto)
-- ============================================================
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  -- ── Arceau ──
  ('b0000000-0000-0000-0000-000000000013', 'W055765WW00', 'Arceau 40', null, 'Arceau', 'Stainless Steel', 40.0, 'quartz', null, 30, 'Blue Lacquer', 'Leather (Alligator)', 382500, 310000, 0.5, null, 'https://www.hermes.com/us/en/product/arceau-watch-40mm-W055765WW00/'),
  ('b0000000-0000-0000-0000-000000000013', 'W055751WW00', 'Arceau 40', null, 'Arceau', 'Stainless Steel', 40.0, 'quartz', null, 30, 'Opaline Silver', 'Leather (Alligator)', 382500, 315000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W041140WW00', 'Arceau Automatique 40', null, 'Arceau', 'Stainless Steel', 40.0, 'automatic', 'H1912', 30, 'Silver', 'Leather (Alligator)', 550000, 400000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W055756WW00', 'Arceau Automatique 34', null, 'Arceau', 'Stainless Steel', 34.0, 'automatic', 'H1912', 30, 'Silver', 'Leather (Alligator)', 500000, 380000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W055760WW00', 'Arceau 28', null, 'Arceau', 'Stainless Steel', 28.0, 'quartz', null, 30, 'Blue Lacquer', 'Leather (Alligator)', 335000, 270000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W055761WW00', 'Arceau 28', null, 'Arceau', 'Stainless Steel', 28.0, 'quartz', null, 30, 'White', 'Leather (Alligator)', 335000, 265000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W055762WW00', 'Arceau 36', null, 'Arceau', 'Stainless Steel', 36.0, 'quartz', null, 30, 'Silver', 'Leather (Alligator)', 362500, 290000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W042942WW00', 'Arceau Casaque 36', null, 'Arceau', 'Stainless Steel', 36.0, 'quartz', null, 30, 'Multicolor', 'Leather', 415000, 350000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W042943WW00', 'Arceau Casaque 28', null, 'Arceau', 'Stainless Steel', 28.0, 'quartz', null, 30, 'Multicolor', 'Leather', 382500, 320000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W045183WW00', 'Arceau Le Temps Voyageur', null, 'Arceau', 'Stainless Steel', 41.0, 'automatic', 'H1837', 30, 'White', 'Leather (Alligator)', 1050000, 850000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W044578WW00', 'Arceau Squelette', null, 'Arceau', 'Stainless Steel', 40.0, 'automatic', 'H1950', 30, 'Skeleton', 'Leather (Alligator)', 2650000, 2200000, 0.8, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W045763WW00', 'Arceau Grande Lune', null, 'Arceau', 'Stainless Steel', 43.0, 'automatic', 'H1837', 30, 'White', 'Leather (Alligator)', 950000, 780000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W044268WW00', 'Arceau Le Temps Suspendu', null, 'Arceau', '18k Rose Gold', 43.0, 'automatic', 'H1912', 30, 'White', 'Leather (Alligator)', 5172500, 4200000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W403912WW00', 'Arceau Petite Lune 38', null, 'Arceau', 'Stainless Steel', 38.0, 'automatic', 'H1837', 30, 'Opaline', 'Leather (Alligator)', 895000, 720000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W403913WW00', 'Arceau Petite Lune 38', null, 'Arceau', 'Stainless Steel', 38.0, 'automatic', 'H1837', 30, 'Blue', 'Leather (Alligator)', 895000, 730000, 0.7, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W055770WW00', 'Arceau Automatique 40 Diamonds', null, 'Arceau', 'Stainless Steel/Diamonds', 40.0, 'automatic', 'H1912', 30, 'Silver', 'Leather (Alligator)', 825000, 650000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W403920WW00', 'Arceau 36 Rose Gold', null, 'Arceau', '18k Rose Gold', 36.0, 'quartz', null, 30, 'Opaline', 'Leather (Alligator)', 1250000, 1000000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W403922WW00', 'Arceau Lift Tourbillon', null, 'Arceau', '18k White Gold', 40.0, 'manual', null, 30, 'Skeleton', 'Leather (Alligator)', 12500000, 10000000, 1.0, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W403925WW00', 'Arceau Ecuyère au Galop', null, 'Arceau', '18k White Gold', 41.0, 'automatic', 'H1912', 30, 'Enamel', 'Leather (Alligator)', 8950000, 7500000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W403927WW00', 'Arceau Robe du Soir', null, 'Arceau', '18k Rose Gold', 38.0, 'automatic', 'H1912', 30, 'Aventurine', 'Leather (Alligator)', 4200000, 3500000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W403928WW00', 'Arceau Cheval Cosmique', null, 'Arceau', '18k White Gold', 41.0, 'automatic', 'H1912', 30, 'Blue Enamel', 'Leather (Alligator)', 9500000, 8000000, 0.4, null, null),
  -- ── Cape Cod ──
  ('b0000000-0000-0000-0000-000000000013', 'W044344WW00', 'Cape Cod Automatique 41', null, 'Cape Cod', 'Stainless Steel', 41.0, 'automatic', 'H1912', 30, 'Silver', 'Leather (Alligator)', 550000, 420000, 0.4, null, 'https://www.hermes.com/us/en/product/cape-cod-watch-41mm-W044344WW00/'),
  ('b0000000-0000-0000-0000-000000000013', 'W055694WW00', 'Cape Cod Automatique 41', null, 'Cape Cod', 'Stainless Steel', 41.0, 'automatic', 'H1912', 30, 'Blue', 'Leather (Alligator)', 595000, 450000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W048728WW00', 'Cape Cod Automatique 33', null, 'Cape Cod', 'Stainless Steel', 33.0, 'automatic', 'H1912', 30, 'Silver', 'Leather (Alligator)', 550000, 420000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W048729WW00', 'Cape Cod Automatique 33', null, 'Cape Cod', 'Stainless Steel', 33.0, 'automatic', 'H1912', 30, 'Blue', 'Leather (Alligator)', 595000, 440000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W040246WW00', 'Cape Cod Small Model 31', null, 'Cape Cod', 'Stainless Steel', 31.0, 'quartz', null, 30, 'Silver', 'Leather', 370000, 280000, 0.3, null, 'https://www.hermes.com/us/en/product/cape-cod-watch-small-model-31mm-W040246WW00/'),
  ('b0000000-0000-0000-0000-000000000013', 'W059549WW00', 'Cape Cod Small Model 31', null, 'Cape Cod', 'Stainless Steel', 31.0, 'quartz', null, 30, 'Brown', 'Leather (Double Tour)', 415000, 320000, 0.5, null, 'https://www.hermes.com/us/en/product/cape-cod-watch-small-model-31mm-W059549WW00/'),
  ('b0000000-0000-0000-0000-000000000013', 'W044854WW00', 'Cape Cod Small Model 31', null, 'Cape Cod', 'Stainless Steel', 31.0, 'quartz', null, 30, 'Silver', 'Leather (Double Tour)', 415000, 300000, 0.8, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W044307WW00', 'Cape Cod 29', null, 'Cape Cod', 'Stainless Steel', 29.0, 'quartz', null, 30, 'Gold', 'Leather', 370000, 290000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W045776WW00', 'Cape Cod Chaîne d''Ancre 23', null, 'Cape Cod', 'Stainless Steel', 23.0, 'quartz', null, 30, 'Silver', 'Leather', 490000, 380000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W045777WW00', 'Cape Cod Chaîne d''Ancre 23', null, 'Cape Cod', 'Stainless Steel', 23.0, 'quartz', null, 30, 'White Mother-of-Pearl', 'Leather', 545000, 420000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W048295WW00', 'Cape Cod Chaîne d''Ancre Joaillier 23', null, 'Cape Cod', 'Stainless Steel/Diamonds', 23.0, 'quartz', null, 30, 'Silver', 'Leather', 780000, 600000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W048296WW00', 'Cape Cod 29 Rose Gold', null, 'Cape Cod', '18k Rose Gold', 29.0, 'quartz', null, 30, 'Opaline', 'Leather (Alligator)', 920000, 720000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W048297WW00', 'Cape Cod Large 37', null, 'Cape Cod', 'Stainless Steel', 37.0, 'quartz', null, 30, 'Silver', 'Leather', 395000, 310000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W048298WW00', 'Cape Cod Large 37', null, 'Cape Cod', 'Stainless Steel', 37.0, 'quartz', null, 30, 'Blue', 'Leather (Double Tour)', 435000, 340000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W048299WW00', 'Cape Cod 23 Diamonds', null, 'Cape Cod', 'Stainless Steel/Diamonds', 23.0, 'quartz', null, 30, 'White Mother-of-Pearl', 'Leather', 680000, 520000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W048300WW00', 'Cape Cod Automatique 41 Rose Gold', null, 'Cape Cod', '18k Rose Gold', 41.0, 'automatic', 'H1912', 30, 'Opaline', 'Leather (Alligator)', 1650000, 1300000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W048301WW00', 'Cape Cod Small Model 31 Diamonds', null, 'Cape Cod', 'Stainless Steel/Diamonds', 31.0, 'quartz', null, 30, 'White Mother-of-Pearl', 'Leather', 595000, 460000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W048302WW00', 'Cape Cod 29 Chaîne d''Ancre Double Tour', null, 'Cape Cod', 'Stainless Steel', 29.0, 'quartz', null, 30, 'Silver', 'Leather (Double Tour)', 435000, 340000, 0.3, null, null),
  -- ── Heure H ──
  ('b0000000-0000-0000-0000-000000000013', 'W036784WW00', 'Heure H 26 x 26', null, 'Heure H', 'Stainless Steel', 26.0, 'quartz', null, 30, 'Silver', 'Leather', 340000, 260000, 0.2, null, 'https://www.hermes.com/us/en/product/heure-h-watch-26-x-26mm-W036784WW00/'),
  ('b0000000-0000-0000-0000-000000000013', 'W036756WW00', 'Heure H Small Model 25', null, 'Heure H', 'Stainless Steel', 25.0, 'quartz', null, 30, 'White', 'Leather', 330000, 250000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W036794WW00', 'Heure H Medium Model 26 x 26', null, 'Heure H', 'Stainless Steel', 26.0, 'quartz', null, 30, 'White Lacquer', 'Leather', 342500, 270000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W046514WW00', 'Heure H Small Model 25', null, 'Heure H', 'Stainless Steel', 25.0, 'quartz', null, 30, 'Blue', 'Leather', 330000, 260000, 0.4, null, 'https://www.hermes.com/us/en/product/heure-h-watch-small-model-25mm-W046514WW00/'),
  ('b0000000-0000-0000-0000-000000000013', 'W036813WW00', 'Heure H Mini 21 x 21', null, 'Heure H', 'Stainless Steel', 21.0, 'quartz', null, 30, 'White', 'Leather', 275000, 200000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W053246WW00', 'Heure H Mini 21 x 21', null, 'Heure H', 'Stainless Steel', 21.0, 'quartz', null, 30, 'Blue Lacquer', 'Leather', 275000, 210000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W038928WW00', 'Heure H 26 x 26 Diamonds', null, 'Heure H', 'Stainless Steel/Diamonds', 26.0, 'quartz', null, 30, 'White', 'Leather', 680000, 520000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W053247WW00', 'Heure H Large 34 x 34', null, 'Heure H', 'Stainless Steel', 34.0, 'quartz', null, 30, 'Silver', 'Leather', 395000, 310000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W053248WW00', 'Heure H Large 34 x 34', null, 'Heure H', 'Stainless Steel', 34.0, 'quartz', null, 30, 'Black', 'Leather', 395000, 305000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W053249WW00', 'Heure H TGM Automatique', null, 'Heure H', 'Stainless Steel', 34.0, 'automatic', 'H1912', 30, 'Silver', 'Leather', 595000, 470000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W054125WW00', 'Heure H 25 Rose Gold', null, 'Heure H', '18k Rose Gold', 25.0, 'quartz', null, 30, 'Opaline', 'Leather', 850000, 680000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W054126WW00', 'Heure H 26 x 26 Rose Gold', null, 'Heure H', '18k Rose Gold', 26.0, 'quartz', null, 30, 'White Lacquer', 'Leather', 920000, 740000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W054128WW00', 'Heure H Mini 21 Diamonds', null, 'Heure H', 'Stainless Steel/Diamonds', 21.0, 'quartz', null, 30, 'White Mother-of-Pearl', 'Leather', 550000, 420000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W054129WW00', 'Heure H 26 x 26 Full Diamonds', null, 'Heure H', '18k White Gold/Diamonds', 26.0, 'quartz', null, 30, 'White Mother-of-Pearl', 'Leather', 2850000, 2300000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W054130WW00', 'Heure H 25 Double Tour', null, 'Heure H', 'Stainless Steel', 25.0, 'quartz', null, 30, 'White', 'Leather (Double Tour)', 375000, 290000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W054131WW00', 'Heure H 26 x 26 Black PVD', null, 'Heure H', 'Stainless Steel/Black PVD', 26.0, 'quartz', null, 30, 'Black', 'Leather', 395000, 310000, 0.4, null, null),
  -- ── Slim d''Hermes ──
  ('b0000000-0000-0000-0000-000000000013', 'W041759WW00', 'Slim d''Hermes 39.5', null, 'Slim d''Hermes', 'Stainless Steel', 39.5, 'automatic', 'H1950', 30, 'Blue', 'Leather (Alligator)', 750000, 580000, -0.3, null, 'https://www.hermes.com/us/en/product/slim-d-hermes-watch-39.5mm-W041759WW00/'),
  ('b0000000-0000-0000-0000-000000000013', 'W043203WW00', 'Slim d''Hermes 39.5', null, 'Slim d''Hermes', 'Stainless Steel', 39.5, 'automatic', 'H1950', 30, 'Graphite', 'Leather (Alligator)', 750000, 570000, -0.2, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W043204WW00', 'Slim d''Hermes 39.5', null, 'Slim d''Hermes', 'Stainless Steel', 39.5, 'automatic', 'H1950', 30, 'Blue Opaline', 'Leather (Alligator)', 750000, 575000, -0.1, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W041762WW00', 'Slim d''Hermes 39.5', null, 'Slim d''Hermes', '18k Rose Gold', 39.5, 'automatic', 'H1950', 30, 'Silver', 'Leather (Alligator)', 1650000, 1350000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W054192WW00', 'Slim d''Hermes 39', null, 'Slim d''Hermes', 'Stainless Steel', 39.0, 'automatic', 'H1950', 30, 'Blue Abyss', 'Leather (Alligator)', 792500, 620000, 0.5, null, 'https://www.hermes.com/us/en/product/slim-d-hermes-watch-39mm-W054192WW00/'),
  ('b0000000-0000-0000-0000-000000000013', 'W053254WW00', 'Slim d''Hermes Quantieme Perpetuel', null, 'Slim d''Hermes', 'Platinum', 39.5, 'automatic', 'H1950', 30, 'Blue Lacquer', 'Leather (Alligator)', 6100000, 5000000, 1.0, null, 'https://www.hermes.com/us/en/product/slim-d-hermes-quantieme-perpetuel-watch-39.5mm-W053254WW00/'),
  ('b0000000-0000-0000-0000-000000000013', 'W407949WW00', 'Slim d''Hermes GMT', null, 'Slim d''Hermes', 'Stainless Steel', 39.5, 'automatic', 'H1950', 30, 'Blue', 'Leather (Alligator)', 2950000, 2400000, 0.4, null, 'https://www.hermes.com/us/en/product/slim-d-hermes-gmt-watch-39.5mm-W407949WW00/'),
  ('b0000000-0000-0000-0000-000000000013', 'W407940WW00', 'Slim d''Hermes Manufacture', null, 'Slim d''Hermes', 'Stainless Steel', 39.5, 'automatic', 'H1950', 30, 'Silver', 'Leather (Alligator)', 850000, 680000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W407941WW00', 'Slim d''Hermes Squelette Lune', null, 'Slim d''Hermes', 'Titanium', 39.5, 'automatic', 'H1950', 30, 'Skeleton', 'Leather (Alligator)', 3500000, 2900000, 0.7, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W407942WW00', 'Slim d''Hermes Flagship', null, 'Slim d''Hermes', '18k Rose Gold', 39.5, 'automatic', 'H1950', 30, 'Opaline', 'Leather (Alligator)', 1850000, 1500000, 0.4, null, null),
  -- ── Nantucket ──
  ('b0000000-0000-0000-0000-000000000013', 'W042669WW00', 'Nantucket', null, 'Nantucket', 'Stainless Steel', 29.0, 'quartz', null, 30, 'White', 'Leather', 350000, 280000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W042659WW00', 'Nantucket Small Model', null, 'Nantucket', 'Stainless Steel', 29.0, 'quartz', null, 30, 'Silver', 'Leather', 350000, 270000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W049385WW00', 'Nantucket Diamonds', null, 'Nantucket', 'Stainless Steel/Diamonds', 29.0, 'quartz', null, 30, 'White', 'Leather', 650000, 500000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W048715WW00', 'Nantucket Dual Time', null, 'Nantucket', 'Stainless Steel', 29.0, 'quartz', null, 30, 'Silver', 'Leather (Double Tour)', 415000, 330000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W049575WW00', 'Nantucket Rose Gold', null, 'Nantucket', '18k Rose Gold', 29.0, 'quartz', null, 30, 'Opaline', 'Leather (Alligator)', 920000, 720000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W049576WW00', 'Nantucket Mini', null, 'Nantucket', 'Stainless Steel', 20.0, 'quartz', null, 30, 'White', 'Leather', 295000, 230000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W049577WW00', 'Nantucket Rose Gold Diamonds', null, 'Nantucket', '18k Rose Gold/Diamonds', 29.0, 'quartz', null, 30, 'White Mother-of-Pearl', 'Leather (Alligator)', 1350000, 1050000, 0.4, null, null),
  -- ── H08 ──
  ('b0000000-0000-0000-0000-000000000013', 'W049430WW00', 'H08 42', null, 'H08', 'Titanium/DLC', 39.0, 'automatic', 'H1837', 100, 'Black', 'Rubber', 570000, 430000, 1.5, null, 'https://www.hermes.com/us/en/product/hermes-h08-watch-42mm-W049430WW00/'),
  ('b0000000-0000-0000-0000-000000000013', 'W055737WW00', 'H08 42', null, 'H08', 'Titanium', 39.0, 'automatic', 'H1837', 100, 'Black', 'Rubber', 620000, 500000, 1.5, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W055738WW00', 'H08 42', null, 'H08', 'Titanium/DLC', 39.0, 'automatic', 'H1837', 100, 'Black', 'Titanium', 720000, 600000, 1.8, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W054852WW00', 'H08 42 Graphene', null, 'H08', 'Graphene Composite', 39.0, 'automatic', 'H1837', 100, 'Black', 'Rubber', 890000, 750000, 2.0, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W049431WW00', 'H08 42', null, 'H08', 'Titanium', 39.0, 'automatic', 'H1837', 100, 'Silver', 'Titanium', 650000, 520000, 1.2, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W054853WW00', 'H08 42 Deep Blue', null, 'H08', 'Titanium', 39.0, 'automatic', 'H1837', 100, 'Blue', 'Rubber', 825000, 680000, 1.8, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W055739WW00', 'H08 39', null, 'H08', 'Titanium', 39.0, 'automatic', 'H1837', 100, 'Silver', 'Rubber', 570000, 440000, 1.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W055740WW00', 'H08 39', null, 'H08', 'Titanium/DLC', 39.0, 'automatic', 'H1837', 100, 'Black', 'Rubber/Titanium', 650000, 510000, 1.4, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W408220WW00', 'H08 Chronographe', null, 'H08', 'Titanium', 42.0, 'automatic', 'H1925', 100, 'Black', 'Rubber', 950000, 800000, 2.2, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W408221WW00', 'H08 Chronographe', null, 'H08', 'Titanium/DLC', 42.0, 'automatic', 'H1925', 100, 'Black', 'Titanium', 1050000, 900000, 2.5, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W408222WW00', 'H08 42 Bleu Saint-Cyr', null, 'H08', 'Titanium', 39.0, 'automatic', 'H1837', 100, 'Bleu Saint-Cyr', 'Rubber', 650000, 550000, 2.5, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W408223WW00', 'H08 42 Bleu Saint-Cyr', null, 'H08', 'Titanium', 39.0, 'automatic', 'H1837', 100, 'Bleu Saint-Cyr', 'Titanium', 750000, 640000, 2.8, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W408224WW00', 'H08 42 Vert Jade', null, 'H08', 'Titanium', 39.0, 'automatic', 'H1837', 100, 'Vert Jade', 'Rubber', 650000, 540000, 2.0, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W408225WW00', 'H08 42 Rose Gold', null, 'H08', '18k Rose Gold', 39.0, 'automatic', 'H1837', 100, 'Anthracite', 'Rubber', 2200000, 1800000, 1.5, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W408226WW00', 'H08 La Matiere du Temps', null, 'H08', 'Titanium', 39.0, 'automatic', 'H1837', 100, 'Meteorite', 'Rubber', 1250000, 1050000, 2.0, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W408227WW00', 'H08 42 Diamonds', null, 'H08', 'Titanium/Diamonds', 39.0, 'automatic', 'H1837', 100, 'Black', 'Rubber', 1450000, 1200000, 1.8, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W408228WW00', 'H08 42 Ceramic', null, 'H08', 'Ceramic/Titanium', 39.0, 'automatic', 'H1837', 100, 'Black', 'Rubber', 750000, 620000, 2.0, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W408230WW00', 'H08 Chronographe Graphene', null, 'H08', 'Graphene Composite', 42.0, 'automatic', 'H1925', 100, 'Black', 'Rubber', 1250000, 1050000, 2.5, null, null),
  -- ── Kelly ──
  ('b0000000-0000-0000-0000-000000000013', 'W041329WW00', 'Kelly 2', null, 'Kelly', 'Stainless Steel', 20.0, 'quartz', null, 30, 'White', 'Leather', 380000, 280000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W045810WW00', 'Kelly 2', null, 'Kelly', '18k Rose Gold', 20.0, 'quartz', null, 30, 'White', 'Leather', 1050000, 800000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W042658WW00', 'Kelly Cadenas', null, 'Kelly', 'Stainless Steel', 20.0, 'quartz', null, 30, 'Silver', 'Leather', 650000, 480000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W046481WW00', 'Kelly Cadenas Rose Gold', null, 'Kelly', '18k Rose Gold', 20.0, 'quartz', null, 30, 'Opaline', 'Leather (Alligator)', 1800000, 1400000, 0.5, null, null),
  -- ── Galop d''Hermes ──
  ('b0000000-0000-0000-0000-000000000013', 'W047893WW00', 'Galop d''Hermes 40.8 x 26', null, 'Galop d''Hermes', 'Stainless Steel', 40.8, 'quartz', null, 30, 'Silver', 'Leather', 427500, 340000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W047894WW00', 'Galop d''Hermes 40.8 x 26', null, 'Galop d''Hermes', '18k Rose Gold', 40.8, 'quartz', null, 30, 'Opaline', 'Leather', 1580000, 1200000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W048788WW00', 'Galop d''Hermes Small Model', null, 'Galop d''Hermes', 'Stainless Steel', 26.0, 'quartz', null, 30, 'Silver', 'Leather', 362500, 280000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W053770WW00', 'Galop d''Hermes 40.8 x 26 Diamonds', null, 'Galop d''Hermes', 'Stainless Steel/Diamonds', 40.8, 'quartz', null, 30, 'White Mother-of-Pearl', 'Leather', 750000, 580000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W053771WW00', 'Galop d''Hermes Small Rose Gold', null, 'Galop d''Hermes', '18k Rose Gold', 26.0, 'quartz', null, 30, 'Opaline', 'Leather (Alligator)', 1350000, 1050000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W053776WW00', 'Galop d''Hermes 40.8 x 26 White Gold', null, 'Galop d''Hermes', '18k White Gold', 40.8, 'quartz', null, 30, 'Silver', 'Leather (Alligator)', 1580000, 1250000, 0.3, null, null),
  -- ── Hermes Cut ──
  ('b0000000-0000-0000-0000-000000000013', 'W403206WW00', 'Hermes Cut 36', null, 'Hermes Cut', 'Stainless Steel', 36.0, 'automatic', 'H1912', 100, 'Bleu Celeste', 'Rubber', 550000, 460000, 2.0, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W403207WW00', 'Hermes Cut 36', null, 'Hermes Cut', 'Stainless Steel', 36.0, 'automatic', 'H1912', 100, 'Black', 'Rubber', 550000, 450000, 1.8, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W403208WW00', 'Hermes Cut 36', null, 'Hermes Cut', 'Stainless Steel', 36.0, 'automatic', 'H1912', 100, 'Blanc', 'Rubber', 550000, 445000, 1.5, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W403190WW00', 'Hermes Cut 36 Titanium', null, 'Hermes Cut', 'Titanium', 36.0, 'automatic', 'H1912', 100, 'Grey', 'Rubber', 650000, 540000, 2.2, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W403192WW00', 'Hermes Cut Le Temps Suspendu', null, 'Hermes Cut', 'Titanium', 36.0, 'automatic', 'H1912', 100, 'Skeleton', 'Rubber', 1650000, 1400000, 2.5, null, null),
  -- ── Carre H ──
  ('b0000000-0000-0000-0000-000000000013', 'W045778WW00', 'Carre H 38 x 38', null, 'Carre H', 'Stainless Steel', 38.0, 'quartz', null, 30, 'Silver', 'Leather', 395000, 310000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W046443WW00', 'Carre H 38 x 38', null, 'Carre H', 'Stainless Steel', 38.0, 'quartz', null, 30, 'Blue', 'Leather', 395000, 315000, 0.4, null, null),
  -- ── Faubourg ──
  ('b0000000-0000-0000-0000-000000000013', 'W049310WW00', 'Faubourg 15.5', null, 'Faubourg', '18k White Gold/Diamonds', 15.5, 'quartz', null, 30, 'White Mother-of-Pearl', 'Satin', 2500000, 2000000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W049311WW00', 'Faubourg 15.5', null, 'Faubourg', '18k Rose Gold/Diamonds', 15.5, 'quartz', null, 30, 'White Mother-of-Pearl', 'Satin', 2500000, 2050000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W049312WW00', 'Faubourg Manchette Joaillerie', null, 'Faubourg', '18k White Gold/Diamonds', 15.5, 'quartz', null, 30, 'Pave Diamond', 'Leather (Alligator)', 8500000, 7000000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W403945WW00', 'Faubourg Secret', null, 'Faubourg', '18k Rose Gold/Diamonds', 17.0, 'quartz', null, 30, 'Hidden', 'Chain Bracelet', 4500000, 3700000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W403947WW00', 'Faubourg Polka', null, 'Faubourg', '18k White Gold/Diamonds', 15.5, 'quartz', null, 30, 'Lacquer', 'Satin', 3200000, 2600000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W403949WW00', 'Faubourg Laque', null, 'Faubourg', '18k Rose Gold', 15.5, 'quartz', null, 30, 'Red Lacquer', 'Leather (Alligator)', 1800000, 1450000, 0.3, null, null),
  -- ── Medor ──
  ('b0000000-0000-0000-0000-000000000013', 'W047893WW01', 'Medor 23', null, 'Medor', 'Stainless Steel', 23.0, 'quartz', null, 30, 'White', 'Leather', 395000, 310000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W059255WW00', 'Medor 23 Diamonds', null, 'Medor', 'Stainless Steel/Diamonds', 23.0, 'quartz', null, 30, 'White Mother-of-Pearl', 'Leather', 680000, 530000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000013', 'W046479WW00', 'Medor Rose Gold', null, 'Medor', '18k Rose Gold', 23.0, 'quartz', null, 30, 'Opaline', 'Leather (Alligator)', 1250000, 980000, 0.4, null, null);


-- ============================================================
-- TUDOR — COMPLETE CATALOG (~150 watches)
-- Comprehensive Tudor catalog covering all collections
-- ============================================================
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  -- ══════════════════════════════════════════════════════════════
  -- BLACK BAY 41 mm — Cal MT5602 · 200 m
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000014', 'M79230N-0009', 'Black Bay', null, 'Black Bay', 'Stainless Steel', 41.0, 'automatic', 'MT5602', 200, 'Black', 'Stainless Steel', 395000, 350000, 0.5, null, 'https://www.tudorwatch.com/en/watches/black-bay/m79230n-0009'),
  ('b0000000-0000-0000-0000-000000000014', 'M79230N-0008', 'Black Bay', null, 'Black Bay', 'Stainless Steel', 41.0, 'automatic', 'MT5602', 200, 'Black', 'Fabric', 360000, 320000, 0.3, null, 'https://www.tudorwatch.com/en/watches/black-bay/m79230n-0008'),
  ('b0000000-0000-0000-0000-000000000014', 'M79230R-0012', 'Black Bay', 'Red Bezel BB', 'Black Bay', 'Stainless Steel', 41.0, 'automatic', 'MT5602', 200, 'Black', 'Stainless Steel', 395000, 340000, 0.3, null, 'https://www.tudorwatch.com/en/watches/black-bay/m79230r-0012'),
  ('b0000000-0000-0000-0000-000000000014', 'M79230R-0010', 'Black Bay', null, 'Black Bay', 'Stainless Steel', 41.0, 'automatic', 'MT5602', 200, 'Black', 'Fabric', 360000, 310000, 0.2, null, 'https://www.tudorwatch.com/en/watches/black-bay/m79230r-0010'),
  ('b0000000-0000-0000-0000-000000000014', 'M79230B-0008', 'Black Bay', 'Blue Bezel BB', 'Black Bay', 'Stainless Steel', 41.0, 'automatic', 'MT5602', 200, 'Black', 'Stainless Steel', 395000, 330000, 0.2, null, 'https://www.tudorwatch.com/en/watches/black-bay/m79230b-0008'),
  ('b0000000-0000-0000-0000-000000000014', 'M79230B-0006', 'Black Bay', null, 'Black Bay', 'Stainless Steel', 41.0, 'automatic', 'MT5602', 200, 'Black', 'Fabric', 360000, 305000, 0.1, null, 'https://www.tudorwatch.com/en/watches/black-bay/m79230b-0006'),
  ('b0000000-0000-0000-0000-000000000014', 'M79230DK-0008', 'Black Bay Dark', null, 'Black Bay', 'PVD Steel', 41.0, 'automatic', 'MT5602', 200, 'Black', 'Fabric', 435000, 400000, 0.7, null, 'https://www.tudorwatch.com/en/watches/black-bay/m79230dk-0008'),
  ('b0000000-0000-0000-0000-000000000014', 'M79230DK-0006', 'Black Bay Dark', null, 'Black Bay', 'PVD Steel', 41.0, 'automatic', 'MT5602', 200, 'Black', 'Leather', 435000, 395000, 0.5, null, 'https://www.tudorwatch.com/en/watches/black-bay/m79230dk-0006'),
  -- ── Black Bay S&G (Steel & Gold) 41 mm ──
  ('b0000000-0000-0000-0000-000000000014', 'M79733N-0008', 'Black Bay S&G', null, 'Black Bay', 'Steel/Yellow Gold', 41.0, 'automatic', 'MT5612', 200, 'Black', 'Steel/Gold', 530000, 460000, 0.4, null, 'https://www.tudorwatch.com/en/watches/black-bay/m79733n-0008'),
  ('b0000000-0000-0000-0000-000000000014', 'M79733N-0004', 'Black Bay S&G', null, 'Black Bay', 'Steel/Yellow Gold', 41.0, 'automatic', 'MT5612', 200, 'Black', 'Fabric', 495000, 430000, 0.3, null, 'https://www.tudorwatch.com/en/watches/black-bay/m79733n-0004'),
  ('b0000000-0000-0000-0000-000000000014', 'M79733N-0002', 'Black Bay S&G', null, 'Black Bay', 'Steel/Yellow Gold', 41.0, 'automatic', 'MT5612', 200, 'Black', 'Leather', 495000, 425000, 0.2, null, 'https://www.tudorwatch.com/en/watches/black-bay/m79733n-0002'),
  ('b0000000-0000-0000-0000-000000000014', 'M79733N-0007', 'Black Bay S&G', null, 'Black Bay', 'Steel/Yellow Gold', 41.0, 'automatic', 'MT5612', 200, 'Champagne', 'Steel/Gold', 530000, 465000, 0.5, null, 'https://www.tudorwatch.com/en/watches/black-bay/m79733n-0007'),
  -- ── Black Bay Bronze 43 mm ──
  ('b0000000-0000-0000-0000-000000000014', 'M79250BA-0002', 'Black Bay Bronze', null, 'Black Bay', 'Bronze', 43.0, 'automatic', 'MT5602', 200, 'Brown', 'Leather', 465000, 490000, 1.0, null, 'https://www.tudorwatch.com/en/watches/black-bay/m79250ba-0002'),
  ('b0000000-0000-0000-0000-000000000014', 'M79250BA-0001', 'Black Bay Bronze', null, 'Black Bay', 'Bronze', 43.0, 'automatic', 'MT5602', 200, 'Slate', 'Fabric', 430000, 450000, 0.8, null, 'https://www.tudorwatch.com/en/watches/black-bay/m79250ba-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M79250BM-0005', 'Black Bay Bronze', null, 'Black Bay', 'Bronze', 43.0, 'automatic', 'MT5602', 200, 'Green', 'Fabric', 430000, 470000, 1.2, null, 'https://www.tudorwatch.com/en/watches/black-bay/m79250bm-0005'),
  -- ══════════════════════════════════════════════════════════════
  -- BLACK BAY 68 — 43 mm · Cal MT5602 · 200 m (2025 novelty)
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000014', 'M7941A1A0RU-0001', 'Black Bay 68', null, 'Black Bay', 'Stainless Steel', 43.0, 'automatic', 'MT5602', 200, 'Black', 'Stainless Steel', 425000, 400000, 1.2, null, 'https://www.tudorwatch.com/en/watches/black-bay/m7941a1a0ru-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M7941A1A0RU-0002', 'Black Bay 68', null, 'Black Bay', 'Stainless Steel', 43.0, 'automatic', 'MT5602', 200, 'Black', 'Fabric', 390000, 375000, 1.0, null, 'https://www.tudorwatch.com/en/watches/black-bay/m7941a1a0ru-0002'),
  ('b0000000-0000-0000-0000-000000000014', 'M7941A1A0DU-0001', 'Black Bay 68', null, 'Black Bay', 'Stainless Steel', 43.0, 'automatic', 'MT5602', 200, 'Blue', 'Stainless Steel', 425000, 410000, 1.5, null, 'https://www.tudorwatch.com/en/watches/black-bay/m7941a1a0du-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M7941A1A0DU-0002', 'Black Bay 68', null, 'Black Bay', 'Stainless Steel', 43.0, 'automatic', 'MT5602', 200, 'Blue', 'Fabric', 390000, 385000, 1.3, null, 'https://www.tudorwatch.com/en/watches/black-bay/m7941a1a0du-0002'),
  -- ══════════════════════════════════════════════════════════════
  -- BLACK BAY 54 — 37 mm · Cal MT5400 · 200 m
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000014', 'M79000N-0001', 'Black Bay 54', null, 'Black Bay', 'Stainless Steel', 37.0, 'automatic', 'MT5400', 200, 'Black', 'Stainless Steel', 435000, 410000, 0.8, null, 'https://www.tudorwatch.com/en/watches/black-bay-54/m79000n-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M79000N-0002', 'Black Bay 54', null, 'Black Bay', 'Stainless Steel', 37.0, 'automatic', 'MT5400', 200, 'Black', 'Fabric', 400000, 380000, 0.6, null, 'https://www.tudorwatch.com/en/watches/black-bay-54/m79000n-0002'),
  ('b0000000-0000-0000-0000-000000000014', 'M79000N-0003', 'Black Bay 54', null, 'Black Bay', 'Stainless Steel', 37.0, 'automatic', 'MT5400', 200, 'Black', 'Leather', 400000, 375000, 0.5, null, 'https://www.tudorwatch.com/en/watches/black-bay-54/m79000n-0003'),
  ('b0000000-0000-0000-0000-000000000014', 'M79000-0001', 'Black Bay 54', 'Blue Lagoon', 'Black Bay', 'Stainless Steel', 37.0, 'automatic', 'MT5400', 200, 'Blue', 'Stainless Steel', 477500, 520000, 2.5, null, 'https://www.tudorwatch.com/en/watches/black-bay-54/m79000-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M79000-0002', 'Black Bay 54', null, 'Black Bay', 'Stainless Steel', 37.0, 'automatic', 'MT5400', 200, 'Blue', 'Fabric', 442500, 490000, 2.2, null, 'https://www.tudorwatch.com/en/watches/black-bay-54/m79000-0002'),
  -- ══════════════════════════════════════════════════════════════
  -- BLACK BAY CHRONO — 41 mm · Cal MT5813 · 200 m
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000014', 'M79360N-0002', 'Black Bay Chrono', null, 'Black Bay', 'Stainless Steel', 41.0, 'automatic', 'MT5813', 200, 'Black/Cream', 'Stainless Steel', 565000, 500000, 0.8, null, 'https://www.tudorwatch.com/en/watches/black-bay-chrono/m79360n-0002'),
  ('b0000000-0000-0000-0000-000000000014', 'M79360N-0005', 'Black Bay Chrono', null, 'Black Bay', 'Stainless Steel', 41.0, 'automatic', 'MT5813', 200, 'Black/Cream', 'Fabric', 530000, 475000, 0.6, null, 'https://www.tudorwatch.com/en/watches/black-bay-chrono/m79360n-0005'),
  ('b0000000-0000-0000-0000-000000000014', 'M79360N-0011', 'Black Bay Chrono', 'Reverse Panda', 'Black Bay', 'Stainless Steel', 41.0, 'automatic', 'MT5813', 200, 'Black', 'Stainless Steel', 599500, 550000, 1.2, null, 'https://www.tudorwatch.com/en/watches/black-bay-chrono/m79360n-0011'),
  ('b0000000-0000-0000-0000-000000000014', 'M79360N-0014', 'Black Bay Chrono', 'Panda', 'Black Bay', 'Stainless Steel', 41.0, 'automatic', 'MT5813', 200, 'White', 'Stainless Steel', 599500, 560000, 1.5, null, 'https://www.tudorwatch.com/en/watches/black-bay-chrono/m79360n-0014'),
  ('b0000000-0000-0000-0000-000000000014', 'M79360N-0018', 'Black Bay Chrono', null, 'Black Bay', 'Stainless Steel', 41.0, 'automatic', 'MT5813', 200, 'White', 'Fabric', 564500, 530000, 1.3, null, 'https://www.tudorwatch.com/en/watches/black-bay-chrono/m79360n-0018'),
  ('b0000000-0000-0000-0000-000000000014', 'M79360N-0024', 'Black Bay Chrono', 'Flamingo Blue', 'Black Bay', 'Stainless Steel', 41.0, 'automatic', 'MT5813', 200, 'Turquoise', 'Stainless Steel', 599500, 620000, 2.8, null, 'https://www.tudorwatch.com/en/watches/black-bay-chrono/m79360n-0024'),
  ('b0000000-0000-0000-0000-000000000014', 'M79360N-0027', 'Black Bay Chrono', null, 'Black Bay', 'Stainless Steel', 41.0, 'automatic', 'MT5813', 200, 'Green', 'Stainless Steel', 599500, 610000, 2.5, null, 'https://www.tudorwatch.com/en/watches/black-bay-chrono/m79360n-0027'),
  ('b0000000-0000-0000-0000-000000000014', 'M79363N-0001', 'Black Bay Chrono S&G', null, 'Black Bay', 'Steel/Gold', 41.0, 'automatic', 'MT5813', 200, 'Black', 'Steel/Gold', 665000, 580000, 0.4, null, 'https://www.tudorwatch.com/en/watches/black-bay-chrono/m79363n-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M79363N-0002', 'Black Bay Chrono S&G', null, 'Black Bay', 'Steel/Gold', 41.0, 'automatic', 'MT5813', 200, 'Champagne', 'Steel/Gold', 665000, 575000, 0.3, null, 'https://www.tudorwatch.com/en/watches/black-bay-chrono/m79363n-0002'),
  -- ══════════════════════════════════════════════════════════════
  -- BLACK BAY CERAMIC — 41 mm · Cal MT5602-1U · 200 m
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000014', 'M79210CNU-0001', 'Black Bay Ceramic', null, 'Black Bay', 'Ceramic', 41.0, 'automatic', 'MT5602-1U', 200, 'Black', 'Rubber/Fabric', 510000, 550000, 1.5, null, 'https://www.tudorwatch.com/en/watches/black-bay-ceramic/m79210cnu-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M79210CNU-0003', 'Black Bay Ceramic', null, 'Black Bay', 'Ceramic', 41.0, 'automatic', 'MT5602-1U', 200, 'Black', 'Leather', 510000, 545000, 1.3, null, 'https://www.tudorwatch.com/en/watches/black-bay-ceramic/m79210cnu-0003'),
  -- ══════════════════════════════════════════════════════════════
  -- BLACK BAY FIFTY-EIGHT — 39 mm · Cal MT5402 · 200 m
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000014', 'M79030N-0001', 'Black Bay Fifty-Eight', 'BB58', 'Black Bay', 'Stainless Steel', 39.0, 'automatic', 'MT5402', 200, 'Black', 'Stainless Steel', 470000, 430000, 0.8, null, 'https://www.tudorwatch.com/en/watches/black-bay-58/m79030n-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M79030N-0002', 'Black Bay Fifty-Eight', null, 'Black Bay', 'Stainless Steel', 39.0, 'automatic', 'MT5402', 200, 'Black', 'Fabric', 430000, 400000, 0.5, null, 'https://www.tudorwatch.com/en/watches/black-bay-58/m79030n-0002'),
  ('b0000000-0000-0000-0000-000000000014', 'M79030N-0003', 'Black Bay Fifty-Eight', null, 'Black Bay', 'Stainless Steel', 39.0, 'automatic', 'MT5402', 200, 'Black', 'Leather', 430000, 395000, 0.4, null, 'https://www.tudorwatch.com/en/watches/black-bay-58/m79030n-0003'),
  ('b0000000-0000-0000-0000-000000000014', 'M79030B-0001', 'Black Bay Fifty-Eight Navy Blue', 'BB58 Navy', 'Black Bay', 'Stainless Steel', 39.0, 'automatic', 'MT5402', 200, 'Blue', 'Stainless Steel', 470000, 440000, 1.0, null, 'https://www.tudorwatch.com/en/watches/black-bay-58/m79030b-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M79030B-0003', 'Black Bay Fifty-Eight Navy Blue', null, 'Black Bay', 'Stainless Steel', 39.0, 'automatic', 'MT5402', 200, 'Blue', 'Fabric', 430000, 415000, 0.8, null, 'https://www.tudorwatch.com/en/watches/black-bay-58/m79030b-0003'),
  ('b0000000-0000-0000-0000-000000000014', 'M79012M-0001', 'Black Bay Fifty-Eight Bronze', 'BB58 Bronze', 'Black Bay', 'Bronze', 39.0, 'automatic', 'MT5400', 200, 'Brown', 'Fabric', 455000, 490000, 1.8, null, 'https://www.tudorwatch.com/en/watches/black-bay-58/m79012m-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M79018V-0001', 'Black Bay Fifty-Eight 925', 'BB58 Silver', 'Black Bay', 'Sterling Silver', 39.0, 'automatic', 'MT5400', 200, 'Taupe', 'Leather/Fabric', 435000, 420000, 0.5, null, 'https://www.tudorwatch.com/en/watches/black-bay-58/m79018v-0001'),
  -- ── BB58 Burgundy (2025) ──
  ('b0000000-0000-0000-0000-000000000014', 'M7939A1A0RU-0003', 'Black Bay 58 Burgundy', null, 'Black Bay', 'Stainless Steel', 39.0, 'automatic', 'MT5402', 200, 'Burgundy', 'Stainless Steel', 505000, 540000, 3.0, null, 'https://www.tudorwatch.com/en/watches/black-bay-58/m7939a1a0ru-0003'),
  ('b0000000-0000-0000-0000-000000000014', 'M7939A1A0RU-0004', 'Black Bay 58 Burgundy', null, 'Black Bay', 'Stainless Steel', 39.0, 'automatic', 'MT5402', 200, 'Burgundy', 'Fabric', 470000, 510000, 2.8, null, 'https://www.tudorwatch.com/en/watches/black-bay-58/m7939a1a0ru-0004'),
  -- ══════════════════════════════════════════════════════════════
  -- BLACK BAY 58 GMT — 39 mm · Cal MT5652 · 200 m
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000014', 'M7939A1A0RU-0001', 'Black Bay 58 GMT', null, 'Black Bay', 'Stainless Steel', 39.0, 'automatic', 'MT5652', 200, 'Black', 'Stainless Steel', 517500, 540000, 2.0, null, 'https://www.tudorwatch.com/en/watches/black-bay-58-gmt/m7939a1a0ru-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M7939A1A0RU-0002', 'Black Bay 58 GMT', null, 'Black Bay', 'Stainless Steel', 39.0, 'automatic', 'MT5652', 200, 'Black', 'Fabric', 482500, 510000, 1.8, null, 'https://www.tudorwatch.com/en/watches/black-bay-58-gmt/m7939a1a0ru-0002'),
  ('b0000000-0000-0000-0000-000000000014', 'M7939G1A0NRU-0001', 'Black Bay 58 GMT', 'BB58 Pepsi', 'Black Bay', 'Stainless Steel', 39.0, 'automatic', 'MT5652', 200, 'Blue/Red', 'Stainless Steel', 535000, 570000, 2.5, null, 'https://www.tudorwatch.com/en/watches/black-bay-58-gmt/m7939g1a0nru-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M7939G1A0NRU-0002', 'Black Bay 58 GMT', null, 'Black Bay', 'Stainless Steel', 39.0, 'automatic', 'MT5652', 200, 'Blue/Red', 'Fabric', 500000, 540000, 2.3, null, 'https://www.tudorwatch.com/en/watches/black-bay-58-gmt/m7939g1a0nru-0002'),
  -- ══════════════════════════════════════════════════════════════
  -- BLACK BAY PRO — 39 mm · Cal MT5652 · 200 m
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000014', 'M79470-0001', 'Black Bay Pro', null, 'Black Bay', 'Stainless Steel', 39.0, 'automatic', 'MT5652', 200, 'Black', 'Stainless Steel', 405000, 380000, 0.6, null, 'https://www.tudorwatch.com/en/watches/black-bay-pro/m79470-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M79470-0003', 'Black Bay Pro', null, 'Black Bay', 'Stainless Steel', 39.0, 'automatic', 'MT5652', 200, 'Black', 'Fabric', 370000, 350000, 0.4, null, 'https://www.tudorwatch.com/en/watches/black-bay-pro/m79470-0003'),
  ('b0000000-0000-0000-0000-000000000014', 'M79470-0004', 'Black Bay Pro', null, 'Black Bay', 'Stainless Steel', 39.0, 'automatic', 'MT5652', 200, 'Black', 'Leather', 370000, 345000, 0.3, null, 'https://www.tudorwatch.com/en/watches/black-bay-pro/m79470-0004'),
  ('b0000000-0000-0000-0000-000000000014', 'M79470-0006', 'Black Bay Pro', 'BB Pro Opaline', 'Black Bay', 'Stainless Steel', 39.0, 'automatic', 'MT5652', 200, 'Opaline', 'Stainless Steel', 405000, 430000, 2.2, null, 'https://www.tudorwatch.com/en/watches/black-bay-pro/m79470-0006'),
  ('b0000000-0000-0000-0000-000000000014', 'M79470-0008', 'Black Bay Pro', null, 'Black Bay', 'Stainless Steel', 39.0, 'automatic', 'MT5652', 200, 'Opaline', 'Fabric', 370000, 400000, 2.0, null, 'https://www.tudorwatch.com/en/watches/black-bay-pro/m79470-0008'),
  -- ══════════════════════════════════════════════════════════════
  -- BLACK BAY GMT — 41 mm · Cal MT5652 · 200 m
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000014', 'M79830RB-0001', 'Black Bay GMT', 'Pepsi Tudor', 'Black Bay', 'Stainless Steel', 41.0, 'automatic', 'MT5652', 200, 'Black', 'Stainless Steel', 445000, 430000, 0.9, null, 'https://www.tudorwatch.com/en/watches/black-bay-gmt/m79830rb-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M79830RB-0003', 'Black Bay GMT', null, 'Black Bay', 'Stainless Steel', 41.0, 'automatic', 'MT5652', 200, 'Black', 'Fabric', 410000, 400000, 0.7, null, 'https://www.tudorwatch.com/en/watches/black-bay-gmt/m79830rb-0003'),
  ('b0000000-0000-0000-0000-000000000014', 'M79830RB-0010', 'Black Bay GMT', null, 'Black Bay', 'Stainless Steel', 41.0, 'automatic', 'MT5652', 200, 'Opaline', 'Stainless Steel', 448800, 460000, 1.5, null, 'https://www.tudorwatch.com/en/watches/black-bay-gmt/m79830rb-0010'),
  ('b0000000-0000-0000-0000-000000000014', 'M79833MN-0001', 'Black Bay GMT S&G', null, 'Black Bay', 'Steel/Gold', 41.0, 'automatic', 'MT5652', 200, 'Black', 'Steel/Gold', 587500, 520000, 0.3, null, 'https://www.tudorwatch.com/en/watches/black-bay-gmt/m79833mn-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M79833MN-0004', 'Black Bay GMT S&G', null, 'Black Bay', 'Steel/Gold', 41.0, 'automatic', 'MT5652', 200, 'Brown', 'Fabric', 552500, 490000, 0.2, null, 'https://www.tudorwatch.com/en/watches/black-bay-gmt/m79833mn-0004'),
  -- ══════════════════════════════════════════════════════════════
  -- PELAGOS — 42 mm · Cal MT5612 · 500 m
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000014', 'M25600TN-0001', 'Pelagos', null, 'Pelagos', 'Titanium', 42.0, 'automatic', 'MT5612', 500, 'Black', 'Titanium', 582500, 490000, -0.3, null, 'https://www.tudorwatch.com/en/watches/pelagos/m25600tn-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M25600TN-0002', 'Pelagos', null, 'Pelagos', 'Titanium', 42.0, 'automatic', 'MT5612', 500, 'Black', 'Rubber', 547500, 470000, -0.4, null, 'https://www.tudorwatch.com/en/watches/pelagos/m25600tn-0002'),
  ('b0000000-0000-0000-0000-000000000014', 'M25600TB-0001', 'Pelagos', 'Blue Pelagos', 'Pelagos', 'Titanium', 42.0, 'automatic', 'MT5612', 500, 'Blue', 'Titanium', 582500, 500000, -0.1, null, 'https://www.tudorwatch.com/en/watches/pelagos/m25600tb-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M25600TB-0002', 'Pelagos', null, 'Pelagos', 'Titanium', 42.0, 'automatic', 'MT5612', 500, 'Blue', 'Rubber', 547500, 480000, -0.2, null, 'https://www.tudorwatch.com/en/watches/pelagos/m25600tb-0002'),
  -- ══════════════════════════════════════════════════════════════
  -- PELAGOS 39 — 39 mm · Cal MT5400 · 200 m
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000014', 'M25407N-0001', 'Pelagos 39', null, 'Pelagos', 'Titanium', 39.0, 'automatic', 'MT5400', 200, 'Black', 'Titanium', 547500, 560000, 1.5, null, 'https://www.tudorwatch.com/en/watches/pelagos-39/m25407n-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M25407N-0002', 'Pelagos 39', null, 'Pelagos', 'Titanium', 39.0, 'automatic', 'MT5400', 200, 'Black', 'Rubber', 512500, 530000, 1.3, null, 'https://www.tudorwatch.com/en/watches/pelagos-39/m25407n-0002'),
  ('b0000000-0000-0000-0000-000000000014', 'M25407B-0001', 'Pelagos 39', null, 'Pelagos', 'Titanium', 39.0, 'automatic', 'MT5400', 200, 'Blue', 'Titanium', 547500, 570000, 1.8, null, 'https://www.tudorwatch.com/en/watches/pelagos-39/m25407b-0001'),
  -- ══════════════════════════════════════════════════════════════
  -- PELAGOS FXD — 42 mm · Cal MT5602 · 200 m
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000014', 'M25707B/23-0001', 'Pelagos FXD', null, 'Pelagos', 'Titanium', 42.0, 'automatic', 'MT5602', 200, 'Blue', 'Fabric', 455000, 520000, 2.5, null, 'https://www.tudorwatch.com/en/watches/pelagos-fxd/m25707b-23-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M25707KN/23-0001', 'Pelagos FXD', null, 'Pelagos', 'Titanium', 42.0, 'automatic', 'MT5602', 200, 'Black', 'Fabric', 455000, 510000, 2.0, null, 'https://www.tudorwatch.com/en/watches/pelagos-fxd/m25707kn-23-0001'),
  -- ══════════════════════════════════════════════════════════════
  -- PELAGOS FXD CHRONO — 43 mm · Cal MT5813 · 200 m
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000014', 'M25717N/23-0001', 'Pelagos FXD Chrono', null, 'Pelagos', 'Titanium', 43.0, 'automatic', 'MT5813', 200, 'Black', 'Fabric', 595000, 650000, 3.0, null, 'https://www.tudorwatch.com/en/watches/pelagos-fxd/m25717n-23-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M25807KN/23-0001', 'Pelagos FXD Chrono', null, 'Pelagos', 'Titanium', 43.0, 'automatic', 'MT5813', 200, 'Black/Orange', 'Fabric', 595000, 660000, 3.2, null, 'https://www.tudorwatch.com/en/watches/pelagos-fxd/m25807kn-23-0001'),
  -- ══════════════════════════════════════════════════════════════
  -- RANGER — 39 mm · Cal MT5402 · 100 m
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000014', 'M79950-0001', 'Ranger', null, 'Ranger', 'Stainless Steel', 39.0, 'automatic', 'MT5402', 100, 'Black', 'Stainless Steel', 325000, 300000, 0.2, null, 'https://www.tudorwatch.com/en/watches/ranger/m79950-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M79950-0004', 'Ranger', null, 'Ranger', 'Stainless Steel', 39.0, 'automatic', 'MT5402', 100, 'Black', 'Fabric', 290000, 270000, 0.1, null, 'https://www.tudorwatch.com/en/watches/ranger/m79950-0004'),
  ('b0000000-0000-0000-0000-000000000014', 'M79950-0006', 'Ranger', null, 'Ranger', 'Stainless Steel', 39.0, 'automatic', 'MT5402', 100, 'Black', 'Rubber', 290000, 268000, 0.1, null, 'https://www.tudorwatch.com/en/watches/ranger/m79950-0006'),
  ('b0000000-0000-0000-0000-000000000014', 'M79950-0008', 'Ranger', null, 'Ranger', 'Stainless Steel', 39.0, 'automatic', 'MT5402', 100, 'Beige', 'Leather', 305000, 290000, 0.3, null, 'https://www.tudorwatch.com/en/watches/ranger/m79950-0008'),
  -- ══════════════════════════════════════════════════════════════
  -- ROYAL — Cal T601 · 100 m · 41/38/34/28 mm
  -- ══════════════════════════════════════════════════════════════
  -- 41 mm
  ('b0000000-0000-0000-0000-000000000014', 'M28600-0005', 'Royal', null, 'Royal', 'Stainless Steel', 41.0, 'automatic', 'T601', 100, 'Blue', 'Stainless Steel', 280000, 220000, -0.4, null, 'https://www.tudorwatch.com/en/watches/royal/m28600-0005'),
  ('b0000000-0000-0000-0000-000000000014', 'M28600-0003', 'Royal', null, 'Royal', 'Stainless Steel', 41.0, 'automatic', 'T601', 100, 'Black', 'Stainless Steel', 280000, 215000, -0.3, null, 'https://www.tudorwatch.com/en/watches/royal/m28600-0003'),
  ('b0000000-0000-0000-0000-000000000014', 'M28600-0001', 'Royal', null, 'Royal', 'Stainless Steel', 41.0, 'automatic', 'T601', 100, 'Silver', 'Stainless Steel', 280000, 218000, -0.3, null, 'https://www.tudorwatch.com/en/watches/royal/m28600-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M28600-0009', 'Royal', null, 'Royal', 'Stainless Steel', 41.0, 'automatic', 'T601', 100, 'Green', 'Stainless Steel', 280000, 225000, 0.1, null, 'https://www.tudorwatch.com/en/watches/royal/m28600-0009'),
  ('b0000000-0000-0000-0000-000000000014', 'M28600-0006', 'Royal', null, 'Royal', 'Stainless Steel', 41.0, 'automatic', 'T601', 100, 'Champagne', 'Stainless Steel', 280000, 216000, -0.2, null, 'https://www.tudorwatch.com/en/watches/royal/m28600-0006'),
  -- 38 mm
  ('b0000000-0000-0000-0000-000000000014', 'M28500-0005', 'Royal', null, 'Royal', 'Stainless Steel', 38.0, 'automatic', 'T601', 100, 'Blue', 'Stainless Steel', 260000, 200000, -0.2, null, 'https://www.tudorwatch.com/en/watches/royal/m28500-0005'),
  ('b0000000-0000-0000-0000-000000000014', 'M28500-0003', 'Royal', null, 'Royal', 'Stainless Steel', 38.0, 'automatic', 'T601', 100, 'Black', 'Stainless Steel', 260000, 198000, -0.2, null, 'https://www.tudorwatch.com/en/watches/royal/m28500-0003'),
  ('b0000000-0000-0000-0000-000000000014', 'M28500-0001', 'Royal', null, 'Royal', 'Stainless Steel', 38.0, 'automatic', 'T601', 100, 'Silver', 'Stainless Steel', 260000, 196000, -0.2, null, 'https://www.tudorwatch.com/en/watches/royal/m28500-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M28500-0009', 'Royal', null, 'Royal', 'Stainless Steel', 38.0, 'automatic', 'T601', 100, 'Green', 'Stainless Steel', 260000, 205000, 0.0, null, 'https://www.tudorwatch.com/en/watches/royal/m28500-0009'),
  ('b0000000-0000-0000-0000-000000000014', 'M28500-0006', 'Royal', null, 'Royal', 'Stainless Steel', 38.0, 'automatic', 'T601', 100, 'Champagne', 'Stainless Steel', 260000, 195000, -0.1, null, 'https://www.tudorwatch.com/en/watches/royal/m28500-0006'),
  -- 34 mm
  ('b0000000-0000-0000-0000-000000000014', 'M28300-0005', 'Royal', null, 'Royal', 'Stainless Steel', 34.0, 'automatic', 'T601', 100, 'Blue', 'Stainless Steel', 240000, 185000, -0.1, null, 'https://www.tudorwatch.com/en/watches/royal/m28300-0005'),
  ('b0000000-0000-0000-0000-000000000014', 'M28300-0003', 'Royal', null, 'Royal', 'Stainless Steel', 34.0, 'automatic', 'T601', 100, 'Black', 'Stainless Steel', 240000, 183000, -0.1, null, 'https://www.tudorwatch.com/en/watches/royal/m28300-0003'),
  ('b0000000-0000-0000-0000-000000000014', 'M28300-0001', 'Royal', null, 'Royal', 'Stainless Steel', 34.0, 'automatic', 'T601', 100, 'Silver', 'Stainless Steel', 240000, 182000, -0.1, null, 'https://www.tudorwatch.com/en/watches/royal/m28300-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M28300-0009', 'Royal', null, 'Royal', 'Stainless Steel', 34.0, 'automatic', 'T601', 100, 'Green', 'Stainless Steel', 240000, 188000, 0.0, null, 'https://www.tudorwatch.com/en/watches/royal/m28300-0009'),
  ('b0000000-0000-0000-0000-000000000014', 'M28300-0006', 'Royal', null, 'Royal', 'Stainless Steel', 34.0, 'automatic', 'T601', 100, 'Champagne', 'Stainless Steel', 240000, 181000, -0.1, null, 'https://www.tudorwatch.com/en/watches/royal/m28300-0006'),
  ('b0000000-0000-0000-0000-000000000014', 'M28300-0011', 'Royal', null, 'Royal', 'Stainless Steel', 34.0, 'automatic', 'T601', 100, 'Silver/Diamonds', 'Stainless Steel', 310000, 245000, 0.1, null, 'https://www.tudorwatch.com/en/watches/royal/m28300-0011'),
  -- 28 mm (quartz)
  ('b0000000-0000-0000-0000-000000000014', 'M28200-0005', 'Royal', null, 'Royal', 'Stainless Steel', 28.0, 'quartz', null, 100, 'Blue', 'Stainless Steel', 210000, 165000, -0.1, null, 'https://www.tudorwatch.com/en/watches/royal/m28200-0005'),
  ('b0000000-0000-0000-0000-000000000014', 'M28200-0003', 'Royal', null, 'Royal', 'Stainless Steel', 28.0, 'quartz', null, 100, 'Black', 'Stainless Steel', 210000, 163000, -0.1, null, 'https://www.tudorwatch.com/en/watches/royal/m28200-0003'),
  ('b0000000-0000-0000-0000-000000000014', 'M28200-0001', 'Royal', null, 'Royal', 'Stainless Steel', 28.0, 'quartz', null, 100, 'Silver', 'Stainless Steel', 210000, 162000, -0.1, null, 'https://www.tudorwatch.com/en/watches/royal/m28200-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M28200-0011', 'Royal', null, 'Royal', 'Stainless Steel', 28.0, 'quartz', null, 100, 'Silver/Diamonds', 'Stainless Steel', 280000, 225000, 0.0, null, 'https://www.tudorwatch.com/en/watches/royal/m28200-0011'),
  -- ══════════════════════════════════════════════════════════════
  -- 1926 — Cal T601 · 100 m · 41/39/36/28 mm
  -- ══════════════════════════════════════════════════════════════
  -- 41 mm bracelet
  ('b0000000-0000-0000-0000-000000000014', 'M91650-0001', '1926', null, '1926', 'Stainless Steel', 41.0, 'automatic', 'T601', 100, 'Silver', 'Stainless Steel', 227500, 180000, -0.3, null, 'https://www.tudorwatch.com/en/watches/1926/m91650-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M91650-0002', '1926', null, '1926', 'Stainless Steel', 41.0, 'automatic', 'T601', 100, 'Black', 'Stainless Steel', 227500, 178000, -0.2, null, 'https://www.tudorwatch.com/en/watches/1926/m91650-0002'),
  ('b0000000-0000-0000-0000-000000000014', 'M91650-0005', '1926', null, '1926', 'Stainless Steel', 41.0, 'automatic', 'T601', 100, 'White', 'Stainless Steel', 227500, 175000, -0.1, null, 'https://www.tudorwatch.com/en/watches/1926/m91650-0005'),
  ('b0000000-0000-0000-0000-000000000014', 'M91650-0008', '1926', null, '1926', 'Stainless Steel', 41.0, 'automatic', 'T601', 100, 'Blue', 'Stainless Steel', 227500, 177000, -0.2, null, 'https://www.tudorwatch.com/en/watches/1926/m91650-0008'),
  ('b0000000-0000-0000-0000-000000000014', 'M91650-0012', '1926', null, '1926', 'Stainless Steel', 41.0, 'automatic', 'T601', 100, 'Champagne', 'Stainless Steel', 227500, 176000, -0.2, null, 'https://www.tudorwatch.com/en/watches/1926/m91650-0012'),
  -- 41 mm leather
  ('b0000000-0000-0000-0000-000000000014', 'M91650-0006', '1926', null, '1926', 'Stainless Steel', 41.0, 'automatic', 'T601', 100, 'White', 'Leather', 215000, 170000, -0.2, null, 'https://www.tudorwatch.com/en/watches/1926/m91650-0006'),
  ('b0000000-0000-0000-0000-000000000014', 'M91650-0010', '1926', null, '1926', 'Stainless Steel', 41.0, 'automatic', 'T601', 100, 'Blue', 'Leather', 215000, 170000, -0.2, null, 'https://www.tudorwatch.com/en/watches/1926/m91650-0010'),
  ('b0000000-0000-0000-0000-000000000014', 'M91650-0003', '1926', null, '1926', 'Stainless Steel', 41.0, 'automatic', 'T601', 100, 'Black', 'Leather', 215000, 168000, -0.2, null, 'https://www.tudorwatch.com/en/watches/1926/m91650-0003'),
  -- 39 mm bracelet
  ('b0000000-0000-0000-0000-000000000014', 'M91550-0001', '1926', null, '1926', 'Stainless Steel', 39.0, 'automatic', 'T601', 100, 'Silver', 'Stainless Steel', 215000, 170000, -0.3, null, 'https://www.tudorwatch.com/en/watches/1926/m91550-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M91550-0002', '1926', null, '1926', 'Stainless Steel', 39.0, 'automatic', 'T601', 100, 'Black', 'Stainless Steel', 215000, 168000, -0.2, null, 'https://www.tudorwatch.com/en/watches/1926/m91550-0002'),
  ('b0000000-0000-0000-0000-000000000014', 'M91550-0005', '1926', null, '1926', 'Stainless Steel', 39.0, 'automatic', 'T601', 100, 'White', 'Stainless Steel', 215000, 167000, -0.2, null, 'https://www.tudorwatch.com/en/watches/1926/m91550-0005'),
  ('b0000000-0000-0000-0000-000000000014', 'M91550-0008', '1926', null, '1926', 'Stainless Steel', 39.0, 'automatic', 'T601', 100, 'Blue', 'Stainless Steel', 215000, 169000, -0.2, null, 'https://www.tudorwatch.com/en/watches/1926/m91550-0008'),
  -- 39 mm leather
  ('b0000000-0000-0000-0000-000000000014', 'M91550-0006', '1926', null, '1926', 'Stainless Steel', 39.0, 'automatic', 'T601', 100, 'White', 'Leather', 202500, 160000, -0.2, null, 'https://www.tudorwatch.com/en/watches/1926/m91550-0006'),
  ('b0000000-0000-0000-0000-000000000014', 'M91550-0010', '1926', null, '1926', 'Stainless Steel', 39.0, 'automatic', 'T601', 100, 'Blue', 'Leather', 202500, 161000, -0.2, null, 'https://www.tudorwatch.com/en/watches/1926/m91550-0010'),
  ('b0000000-0000-0000-0000-000000000014', 'M91550-0003', '1926', null, '1926', 'Stainless Steel', 39.0, 'automatic', 'T601', 100, 'Black', 'Leather', 202500, 158000, -0.2, null, 'https://www.tudorwatch.com/en/watches/1926/m91550-0003'),
  -- 36 mm bracelet
  ('b0000000-0000-0000-0000-000000000014', 'M91450-0001', '1926', null, '1926', 'Stainless Steel', 36.0, 'automatic', 'T601', 100, 'Silver', 'Stainless Steel', 215000, 168000, -0.1, null, 'https://www.tudorwatch.com/en/watches/1926/m91450-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M91450-0002', '1926', null, '1926', 'Stainless Steel', 36.0, 'automatic', 'T601', 100, 'Black', 'Stainless Steel', 215000, 166000, -0.1, null, 'https://www.tudorwatch.com/en/watches/1926/m91450-0002'),
  ('b0000000-0000-0000-0000-000000000014', 'M91450-0005', '1926', null, '1926', 'Stainless Steel', 36.0, 'automatic', 'T601', 100, 'White', 'Stainless Steel', 215000, 165000, -0.1, null, 'https://www.tudorwatch.com/en/watches/1926/m91450-0005'),
  ('b0000000-0000-0000-0000-000000000014', 'M91450-0008', '1926', null, '1926', 'Stainless Steel', 36.0, 'automatic', 'T601', 100, 'Blue', 'Stainless Steel', 215000, 167000, -0.1, null, 'https://www.tudorwatch.com/en/watches/1926/m91450-0008'),
  -- 36 mm leather
  ('b0000000-0000-0000-0000-000000000014', 'M91450-0006', '1926', null, '1926', 'Stainless Steel', 36.0, 'automatic', 'T601', 100, 'White', 'Leather', 202500, 158000, -0.1, null, 'https://www.tudorwatch.com/en/watches/1926/m91450-0006'),
  ('b0000000-0000-0000-0000-000000000014', 'M91450-0010', '1926', null, '1926', 'Stainless Steel', 36.0, 'automatic', 'T601', 100, 'Blue', 'Leather', 202500, 159000, -0.1, null, 'https://www.tudorwatch.com/en/watches/1926/m91450-0010'),
  -- 28 mm bracelet
  ('b0000000-0000-0000-0000-000000000014', 'M91350-0001', '1926', null, '1926', 'Stainless Steel', 28.0, 'automatic', 'T601', 100, 'Silver', 'Stainless Steel', 222500, 175000, 0.0, null, 'https://www.tudorwatch.com/en/watches/1926/m91350-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M91350-0002', '1926', null, '1926', 'Stainless Steel', 28.0, 'automatic', 'T601', 100, 'Black', 'Stainless Steel', 222500, 173000, 0.0, null, 'https://www.tudorwatch.com/en/watches/1926/m91350-0002'),
  ('b0000000-0000-0000-0000-000000000014', 'M91350-0005', '1926', null, '1926', 'Stainless Steel', 28.0, 'automatic', 'T601', 100, 'White', 'Stainless Steel', 222500, 172000, 0.0, null, 'https://www.tudorwatch.com/en/watches/1926/m91350-0005'),
  ('b0000000-0000-0000-0000-000000000014', 'M91350-0011', '1926', null, '1926', 'Stainless Steel', 28.0, 'automatic', 'T601', 100, 'Silver/Diamonds', 'Stainless Steel', 292500, 235000, 0.1, null, 'https://www.tudorwatch.com/en/watches/1926/m91350-0011'),
  ('b0000000-0000-0000-0000-000000000014', 'M91350-0006', '1926', null, '1926', 'Stainless Steel', 28.0, 'automatic', 'T601', 100, 'White', 'Leather', 210000, 165000, 0.0, null, 'https://www.tudorwatch.com/en/watches/1926/m91350-0006'),
  -- ══════════════════════════════════════════════════════════════
  -- CLAIR DE ROSE — 34/30/26 mm
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000014', 'M35800-0009', 'Clair de Rose', null, 'Clair de Rose', 'Stainless Steel', 34.0, 'automatic', 'T200', 100, 'Silver', 'Stainless Steel', 262500, 210000, 0.2, null, 'https://www.tudorwatch.com/en/watches/clair-de-rose/m35800-0009'),
  ('b0000000-0000-0000-0000-000000000014', 'M35800-0004', 'Clair de Rose', null, 'Clair de Rose', 'Stainless Steel', 34.0, 'automatic', 'T200', 100, 'White', 'Stainless Steel', 262500, 208000, 0.1, null, 'https://www.tudorwatch.com/en/watches/clair-de-rose/m35800-0004'),
  ('b0000000-0000-0000-0000-000000000014', 'M35800-0020', 'Clair de Rose', null, 'Clair de Rose', 'Stainless Steel', 34.0, 'automatic', 'T200', 100, 'Pink', 'Stainless Steel', 262500, 212000, 0.3, null, 'https://www.tudorwatch.com/en/watches/clair-de-rose/m35800-0020'),
  ('b0000000-0000-0000-0000-000000000014', 'M35500-0004', 'Clair de Rose', null, 'Clair de Rose', 'Stainless Steel', 30.0, 'automatic', 'T200', 100, 'Silver', 'Stainless Steel', 262500, 205000, 0.1, null, 'https://www.tudorwatch.com/en/watches/clair-de-rose/m35500-0004'),
  ('b0000000-0000-0000-0000-000000000014', 'M35500-0009', 'Clair de Rose', null, 'Clair de Rose', 'Stainless Steel', 30.0, 'automatic', 'T200', 100, 'White', 'Stainless Steel', 262500, 203000, 0.1, null, 'https://www.tudorwatch.com/en/watches/clair-de-rose/m35500-0009'),
  ('b0000000-0000-0000-0000-000000000014', 'M35500-0020', 'Clair de Rose', null, 'Clair de Rose', 'Stainless Steel', 30.0, 'automatic', 'T200', 100, 'Pink', 'Stainless Steel', 262500, 207000, 0.2, null, 'https://www.tudorwatch.com/en/watches/clair-de-rose/m35500-0020'),
  ('b0000000-0000-0000-0000-000000000014', 'M35200-0010', 'Clair de Rose', null, 'Clair de Rose', 'Stainless Steel', 26.0, 'quartz', null, 100, 'Silver', 'Stainless Steel', 252500, 200000, 0.0, null, 'https://www.tudorwatch.com/en/watches/clair-de-rose/m35200-0010'),
  ('b0000000-0000-0000-0000-000000000014', 'M35200-0004', 'Clair de Rose', null, 'Clair de Rose', 'Stainless Steel', 26.0, 'quartz', null, 100, 'White', 'Stainless Steel', 252500, 198000, 0.0, null, 'https://www.tudorwatch.com/en/watches/clair-de-rose/m35200-0004'),
  -- ══════════════════════════════════════════════════════════════
  -- GLAMOUR — Date 36mm / Date+Day 39mm / Double Date 42mm
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000014', 'M56000-0019', 'Glamour Date', null, 'Glamour', 'Stainless Steel', 36.0, 'automatic', 'T395', 100, 'Silver', 'Stainless Steel', 227500, 180000, -0.2, null, 'https://www.tudorwatch.com/en/watches/glamour/m56000-0019'),
  ('b0000000-0000-0000-0000-000000000014', 'M56000-0005', 'Glamour Date', null, 'Glamour', 'Stainless Steel', 36.0, 'automatic', 'T395', 100, 'Black', 'Stainless Steel', 227500, 178000, -0.2, null, 'https://www.tudorwatch.com/en/watches/glamour/m56000-0005'),
  ('b0000000-0000-0000-0000-000000000014', 'M56000-0097', 'Glamour Date', null, 'Glamour', 'Stainless Steel', 36.0, 'automatic', 'T395', 100, 'Blue', 'Stainless Steel', 227500, 179000, -0.2, null, 'https://www.tudorwatch.com/en/watches/glamour/m56000-0097'),
  ('b0000000-0000-0000-0000-000000000014', 'M56003-0005', 'Glamour Date+Day', null, 'Glamour', 'Stainless Steel', 39.0, 'automatic', 'T603', 100, 'Silver', 'Stainless Steel', 247500, 195000, -0.1, null, 'https://www.tudorwatch.com/en/watches/glamour/m56003-0005'),
  ('b0000000-0000-0000-0000-000000000014', 'M56003-0019', 'Glamour Date+Day', null, 'Glamour', 'Stainless Steel', 39.0, 'automatic', 'T603', 100, 'Black', 'Stainless Steel', 247500, 193000, -0.1, null, 'https://www.tudorwatch.com/en/watches/glamour/m56003-0019'),
  ('b0000000-0000-0000-0000-000000000014', 'M57100-0017', 'Glamour Double Date', null, 'Glamour', 'Stainless Steel', 42.0, 'automatic', 'T395', 100, 'Black', 'Stainless Steel', 267500, 210000, 0.1, null, 'https://www.tudorwatch.com/en/watches/glamour/m57100-0017'),
  ('b0000000-0000-0000-0000-000000000014', 'M57100-0019', 'Glamour Double Date', null, 'Glamour', 'Stainless Steel', 42.0, 'automatic', 'T395', 100, 'Silver', 'Stainless Steel', 267500, 208000, 0.0, null, 'https://www.tudorwatch.com/en/watches/glamour/m57100-0019'),
  ('b0000000-0000-0000-0000-000000000014', 'M57100-0097', 'Glamour Double Date', null, 'Glamour', 'Stainless Steel', 42.0, 'automatic', 'T395', 100, 'Blue', 'Stainless Steel', 267500, 211000, 0.1, null, 'https://www.tudorwatch.com/en/watches/glamour/m57100-0097'),
  -- ══════════════════════════════════════════════════════════════
  -- STYLE — 38/34/28 mm · Cal T601/quartz + S&G variants
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000014', 'M12510-0013', 'Style', null, 'Style', 'Stainless Steel', 38.0, 'automatic', 'T601', 100, 'Blue', 'Stainless Steel', 225000, 178000, -0.2, null, 'https://www.tudorwatch.com/en/watches/style/m12510-0013'),
  ('b0000000-0000-0000-0000-000000000014', 'M12510-0001', 'Style', null, 'Style', 'Stainless Steel', 38.0, 'automatic', 'T601', 100, 'Silver', 'Stainless Steel', 225000, 175000, -0.2, null, 'https://www.tudorwatch.com/en/watches/style/m12510-0001'),
  ('b0000000-0000-0000-0000-000000000014', 'M12510-0005', 'Style', null, 'Style', 'Stainless Steel', 38.0, 'automatic', 'T601', 100, 'Black', 'Stainless Steel', 225000, 176000, -0.2, null, 'https://www.tudorwatch.com/en/watches/style/m12510-0005'),
  ('b0000000-0000-0000-0000-000000000014', 'M12310-0010', 'Style', null, 'Style', 'Stainless Steel', 34.0, 'automatic', 'T601', 100, 'Silver', 'Stainless Steel', 212500, 168000, -0.1, null, 'https://www.tudorwatch.com/en/watches/style/m12310-0010'),
  ('b0000000-0000-0000-0000-000000000014', 'M12310-0013', 'Style', null, 'Style', 'Stainless Steel', 34.0, 'automatic', 'T601', 100, 'Blue', 'Stainless Steel', 212500, 170000, -0.1, null, 'https://www.tudorwatch.com/en/watches/style/m12310-0013'),
  ('b0000000-0000-0000-0000-000000000014', 'M12310-0005', 'Style', null, 'Style', 'Stainless Steel', 34.0, 'automatic', 'T601', 100, 'Black', 'Stainless Steel', 212500, 167000, -0.1, null, 'https://www.tudorwatch.com/en/watches/style/m12310-0005'),
  ('b0000000-0000-0000-0000-000000000014', 'M12110-0013', 'Style', null, 'Style', 'Stainless Steel', 28.0, 'quartz', null, 100, 'Blue', 'Stainless Steel', 187500, 150000, -0.1, null, 'https://www.tudorwatch.com/en/watches/style/m12110-0013'),
  ('b0000000-0000-0000-0000-000000000014', 'M12110-0010', 'Style', null, 'Style', 'Stainless Steel', 28.0, 'quartz', null, 100, 'Silver', 'Stainless Steel', 187500, 148000, -0.1, null, 'https://www.tudorwatch.com/en/watches/style/m12110-0010'),
  -- Style S&G (Steel & Gold)
  ('b0000000-0000-0000-0000-000000000014', 'M12513-0007', 'Style', null, 'Style', 'Steel/Yellow Gold', 38.0, 'automatic', 'T601', 100, 'Champagne', 'Steel/Gold', 325000, 260000, 0.0, null, 'https://www.tudorwatch.com/en/watches/style/m12513-0007'),
  ('b0000000-0000-0000-0000-000000000014', 'M12313-0007', 'Style', null, 'Style', 'Steel/Yellow Gold', 34.0, 'automatic', 'T601', 100, 'Champagne', 'Steel/Gold', 312500, 250000, 0.0, null, 'https://www.tudorwatch.com/en/watches/style/m12313-0007'),
  ('b0000000-0000-0000-0000-000000000014', 'M12113-0007', 'Style', null, 'Style', 'Steel/Yellow Gold', 28.0, 'quartz', null, 100, 'Champagne', 'Steel/Gold', 287500, 230000, 0.0, null, 'https://www.tudorwatch.com/en/watches/style/m12113-0007'),
  -- Style S&G with Diamonds
  ('b0000000-0000-0000-0000-000000000014', 'M12513-0011', 'Style', null, 'Style', 'Steel/Yellow Gold', 38.0, 'automatic', 'T601', 100, 'Champagne/Diamonds', 'Steel/Gold', 382500, 310000, 0.1, null, 'https://www.tudorwatch.com/en/watches/style/m12513-0011'),
  ('b0000000-0000-0000-0000-000000000014', 'M12313-0011', 'Style', null, 'Style', 'Steel/Yellow Gold', 34.0, 'automatic', 'T601', 100, 'Champagne/Diamonds', 'Steel/Gold', 370000, 300000, 0.1, null, 'https://www.tudorwatch.com/en/watches/style/m12313-0011'),
  ('b0000000-0000-0000-0000-000000000014', 'M12113-0011', 'Style', null, 'Style', 'Steel/Yellow Gold', 28.0, 'quartz', null, 100, 'Champagne/Diamonds', 'Steel/Gold', 345000, 280000, 0.1, null, 'https://www.tudorwatch.com/en/watches/style/m12113-0011');

-- ============================================================
-- HUBLOT (~55 watches)
-- ============================================================
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  -- ── Big Bang Original 44mm ──
  ('b0000000-0000-0000-0000-000000000015', '301.SX.1170.RX', 'Big Bang Steel 44mm', null, 'Big Bang', 'Stainless Steel', 44.0, 'automatic', 'HUB4100', 100, 'Black', 'Rubber', 1210000, 700000, -1.5, null, null),
  ('b0000000-0000-0000-0000-000000000015', '301.CI.1770.RX', 'Big Bang Black Magic 44mm', 'Black Magic', 'Big Bang', 'Ceramic', 44.0, 'automatic', 'HUB4100', 100, 'Black', 'Rubber', 1500000, 850000, -1.0, null, null),
  ('b0000000-0000-0000-0000-000000000015', '301.SX.1170.RX.1104', 'Big Bang Steel Diamonds 44mm', null, 'Big Bang', 'Stainless Steel/Diamonds', 44.0, 'automatic', 'HUB4100', 100, 'Black', 'Rubber', 1700000, 1000000, -0.8, null, null),
  ('b0000000-0000-0000-0000-000000000015', '301.PX.1180.RX', 'Big Bang Gold 44mm', null, 'Big Bang', '18k King Gold', 44.0, 'automatic', 'HUB4100', 100, 'Black', 'Rubber', 2700000, 1800000, -1.0, null, null),
  -- ── Big Bang Unico 44mm ──
  ('b0000000-0000-0000-0000-000000000015', '421.NX.1170.RX', 'Big Bang Unico Titanium 44mm', null, 'Big Bang', 'Titanium', 44.0, 'automatic', 'HUB1280', 100, 'Skeleton', 'Rubber', 2280000, 1700000, 0.5, null, 'https://www.hublot.com/en-us/watches/big-bang/big-bang-unico-titanium-44-mm'),
  ('b0000000-0000-0000-0000-000000000015', '421.CI.1170.RX', 'Big Bang Unico Black Magic 44mm', null, 'Big Bang', 'Ceramic', 44.0, 'automatic', 'HUB1280', 100, 'Skeleton', 'Rubber', 2520000, 1900000, 0.3, null, 'https://www.hublot.com/en-us/watches/big-bang/big-bang-unico-black-magic-44-mm'),
  ('b0000000-0000-0000-0000-000000000015', '421.NX.1170.RX.1104', 'Big Bang Unico Titanium Diamonds 44mm', null, 'Big Bang', 'Titanium/Diamonds', 44.0, 'automatic', 'HUB1280', 100, 'Skeleton', 'Rubber', 3050000, 2400000, 0.4, null, 'https://www.hublot.com/en-us/watches/big-bang/big-bang-unico-titanium-diamonds-44-mm'),
  ('b0000000-0000-0000-0000-000000000015', '421.NX.1171.RX.1104', 'Big Bang Unico Titanium Ceramic 44mm', null, 'Big Bang', 'Titanium/Ceramic', 44.0, 'automatic', 'HUB1280', 100, 'Skeleton', 'Rubber', 2460000, 1850000, 0.3, null, 'https://www.hublot.com/en-us/watches/big-bang/big-bang-unico-titanium-ceramic-44-mm'),
  ('b0000000-0000-0000-0000-000000000015', '421.OX.1180.RX', 'Big Bang Unico King Gold 44mm', null, 'Big Bang', '18k King Gold', 44.0, 'automatic', 'HUB1280', 100, 'Skeleton', 'Rubber', 4200000, 3200000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000015', '421.JX.0120.RT', 'Big Bang Unico Sapphire 44mm', null, 'Big Bang', 'Sapphire Crystal', 44.0, 'automatic', 'HUB1280', 100, 'Skeleton', 'Rubber', 4800000, 3800000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000015', '421.CX.0140.RX', 'Big Bang Unico White Ceramic 44mm', null, 'Big Bang', 'White Ceramic', 44.0, 'automatic', 'HUB1280', 100, 'Skeleton', 'Rubber', 2520000, 2000000, 0.8, null, 'https://www.hublot.com/en-us/watches/big-bang/big-bang-unico-white-ceramic-44-mm'),
  -- ── Big Bang Unico 45mm ──
  ('b0000000-0000-0000-0000-000000000015', '411.NX.1170.RX', 'Big Bang Unico Titanium 45mm', null, 'Big Bang', 'Titanium', 45.0, 'automatic', 'HUB1242', 100, 'Skeleton', 'Rubber', 2100000, 1400000, -0.8, null, null),
  ('b0000000-0000-0000-0000-000000000015', '411.CI.1170.RX', 'Big Bang Unico Black Magic 45mm', null, 'Big Bang', 'Ceramic', 45.0, 'automatic', 'HUB1242', 100, 'Skeleton', 'Rubber', 2250000, 1500000, -0.5, null, null),
  -- ── Big Bang Unico 42mm ──
  ('b0000000-0000-0000-0000-000000000015', '441.NX.1171.RX', 'Big Bang Unico Titanium 42mm', null, 'Big Bang', 'Titanium', 42.0, 'automatic', 'HUB1280', 100, 'Skeleton', 'Rubber', 2280000, 1700000, 0.3, null, 'https://www.hublot.com/en-us/watches/big-bang/big-bang-unico-titanium-42-mm'),
  ('b0000000-0000-0000-0000-000000000015', '441.CI.1171.RX', 'Big Bang Unico Black Magic 42mm', null, 'Big Bang', 'Ceramic', 42.0, 'automatic', 'HUB1280', 100, 'Skeleton', 'Rubber', 2520000, 1900000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000015', '441.NX.5179.RX', 'Big Bang Unico Titanium Blue 42mm', null, 'Big Bang', 'Titanium', 42.0, 'automatic', 'HUB1280', 100, 'Blue Skeleton', 'Rubber', 2280000, 1750000, 0.8, null, null),
  ('b0000000-0000-0000-0000-000000000015', '441.OM.1180.RX', 'Big Bang Unico King Gold Ceramic 42mm', null, 'Big Bang', '18k King Gold/Ceramic', 42.0, 'automatic', 'HUB1280', 100, 'Skeleton', 'Rubber', 3900000, 3000000, -0.2, null, null),
  -- ── Big Bang Integral ──
  ('b0000000-0000-0000-0000-000000000015', '451.NX.1170.NX', 'Big Bang Integral Titanium 42mm', null, 'Big Bang', 'Titanium', 42.0, 'automatic', 'HUB1280', 100, 'Skeleton', 'Titanium', 2680000, 2100000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000015', '451.CI.1170.CI', 'Big Bang Integral Black Magic 42mm', null, 'Big Bang', 'Ceramic', 42.0, 'automatic', 'HUB1280', 100, 'Skeleton', 'Ceramic', 2950000, 2300000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000015', '451.OX.1180.OX', 'Big Bang Integral King Gold 42mm', null, 'Big Bang', '18k King Gold', 42.0, 'automatic', 'HUB1280', 100, 'Skeleton', '18k King Gold', 5500000, 4200000, -0.5, null, null),
  -- ── Big Bang MECA-10 ──
  ('b0000000-0000-0000-0000-000000000015', '414.NX.1107.RX', 'Big Bang MECA-10 Titanium', null, 'Big Bang', 'Titanium', 45.0, 'manual', 'HUB1201', 100, 'Skeleton', 'Rubber', 2300000, 1700000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000015', '414.CI.1110.RX', 'Big Bang MECA-10 Black Magic', null, 'Big Bang', 'Ceramic', 45.0, 'manual', 'HUB1201', 100, 'Skeleton', 'Rubber', 2740000, 2100000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000015', '414.OI.1123.RX', 'Big Bang MECA-10 King Gold', null, 'Big Bang', '18k King Gold', 45.0, 'manual', 'HUB1201', 100, 'Skeleton', 'Rubber', 4270000, 3200000, -0.3, null, null),
  -- ── Classic Fusion 42mm ──
  ('b0000000-0000-0000-0000-000000000015', '542.NX.1171.RX', 'Classic Fusion Titanium 42mm', null, 'Classic Fusion', 'Titanium', 42.0, 'automatic', 'HUB1100', 50, 'Black', 'Rubber', 710000, 450000, -0.5, null, null),
  ('b0000000-0000-0000-0000-000000000015', '542.NX.7071.LR', 'Classic Fusion Racing Grey 42mm', null, 'Classic Fusion', 'Titanium', 42.0, 'automatic', 'HUB1100', 50, 'Grey', 'Leather', 710000, 450000, -0.4, null, null),
  ('b0000000-0000-0000-0000-000000000015', '542.CM.1171.RX', 'Classic Fusion Black Magic 42mm', null, 'Classic Fusion', 'Ceramic', 42.0, 'automatic', 'HUB1100', 50, 'Black', 'Rubber', 780000, 500000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000015', '542.NX.7170.RX', 'Classic Fusion Blue Titanium 42mm', null, 'Classic Fusion', 'Titanium', 42.0, 'automatic', 'HUB1100', 50, 'Blue', 'Rubber', 840000, 550000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000015', '542.OX.1181.RX', 'Classic Fusion King Gold 42mm', null, 'Classic Fusion', '18k King Gold', 42.0, 'automatic', 'HUB1100', 50, 'Black', 'Rubber', 1850000, 1200000, -0.5, null, null),
  -- ── Classic Fusion 45mm ──
  ('b0000000-0000-0000-0000-000000000015', '511.NX.1171.RX', 'Classic Fusion Titanium 45mm', null, 'Classic Fusion', 'Titanium', 45.0, 'automatic', 'HUB1112', 50, 'Black', 'Rubber', 830000, 500000, -0.8, null, null),
  ('b0000000-0000-0000-0000-000000000015', '511.NX.7170.LR', 'Classic Fusion Blue Titanium 45mm', null, 'Classic Fusion', 'Titanium', 45.0, 'automatic', 'HUB1112', 50, 'Blue', 'Leather', 870000, 550000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000015', '511.CM.1171.RX', 'Classic Fusion Black Magic 45mm', null, 'Classic Fusion', 'Ceramic', 45.0, 'automatic', 'HUB1112', 50, 'Black', 'Rubber', 900000, 580000, -0.5, null, null),
  -- ── Classic Fusion 38mm ──
  ('b0000000-0000-0000-0000-000000000015', '565.NX.1171.RX', 'Classic Fusion Titanium 38mm', null, 'Classic Fusion', 'Titanium', 38.0, 'automatic', 'HUB1100', 50, 'Black', 'Rubber', 660000, 420000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000015', '565.NX.7071.RX', 'Classic Fusion Racing Grey 38mm', null, 'Classic Fusion', 'Titanium', 38.0, 'automatic', 'HUB1100', 50, 'Grey', 'Rubber', 660000, 430000, -0.2, null, null),
  -- ── Classic Fusion Aerofusion Chronograph ──
  ('b0000000-0000-0000-0000-000000000015', '525.NX.0170.RX', 'Classic Fusion Aerofusion Chronograph Titanium', null, 'Classic Fusion', 'Titanium', 45.0, 'automatic', 'HUB1155', 50, 'Skeleton', 'Rubber', 1350000, 900000, -0.3, null, 'https://www.hublot.com/en-us/watches/classic-fusion/classic-fusion-aerofusion-titanium-45-mm'),
  ('b0000000-0000-0000-0000-000000000015', '525.NX.0170.LR', 'Classic Fusion Aerofusion Chronograph Titanium', null, 'Classic Fusion', 'Titanium', 45.0, 'automatic', 'HUB1155', 50, 'Skeleton', 'Leather', 1350000, 880000, -0.2, null, null),
  ('b0000000-0000-0000-0000-000000000015', '525.CM.0170.RX', 'Classic Fusion Aerofusion Black Magic', null, 'Classic Fusion', 'Ceramic', 45.0, 'automatic', 'HUB1155', 50, 'Skeleton', 'Rubber', 1500000, 1000000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000015', '525.OX.0180.RX', 'Classic Fusion Aerofusion King Gold', null, 'Classic Fusion', '18k King Gold', 45.0, 'automatic', 'HUB1155', 50, 'Skeleton', 'Rubber', 3200000, 2100000, -0.5, null, null),
  -- ── Classic Fusion Chronograph ──
  ('b0000000-0000-0000-0000-000000000015', '521.NX.1171.RX', 'Classic Fusion Chronograph Titanium', null, 'Classic Fusion', 'Titanium', 45.0, 'automatic', 'HUB1143', 50, 'Black', 'Rubber', 1050000, 650000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000015', '521.CM.1171.RX', 'Classic Fusion Chronograph Black Magic', null, 'Classic Fusion', 'Ceramic', 45.0, 'automatic', 'HUB1143', 50, 'Black', 'Rubber', 1180000, 750000, -0.2, null, null),
  -- ── Spirit of Big Bang ──
  ('b0000000-0000-0000-0000-000000000015', '641.NX.0173.LR', 'Spirit of Big Bang Titanium 42mm', null, 'Spirit of Big Bang', 'Titanium', 42.0, 'automatic', 'HUB4700', 100, 'Skeleton', 'Rubber', 1850000, 1200000, -0.5, null, 'https://www.hublot.com/en-us/watches/big-bang/spirit-of-big-bang'),
  ('b0000000-0000-0000-0000-000000000015', '641.CI.0173.RX', 'Spirit of Big Bang Black Magic 42mm', null, 'Spirit of Big Bang', 'Ceramic', 42.0, 'automatic', 'HUB4700', 100, 'Skeleton', 'Rubber', 2050000, 1350000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000015', '641.OX.0183.LR', 'Spirit of Big Bang King Gold 42mm', null, 'Spirit of Big Bang', '18k King Gold', 42.0, 'automatic', 'HUB4700', 100, 'Skeleton', 'Rubber', 3600000, 2600000, -0.4, null, null),
  ('b0000000-0000-0000-0000-000000000015', '642.NX.717B.RX', 'Spirit of Big Bang Titanium Coal Blue 42mm', null, 'Spirit of Big Bang', 'Titanium', 42.0, 'automatic', 'HUB4700', 100, 'Blue Skeleton', 'Rubber', 1990000, 1500000, 0.8, null, null),
  ('b0000000-0000-0000-0000-000000000015', '601.CI.0173.RX', 'Spirit of Big Bang Ceramic 45mm', null, 'Spirit of Big Bang', 'Ceramic', 45.0, 'automatic', 'HUB4700', 100, 'Skeleton', 'Rubber', 2050000, 1350000, -0.3, null, null),
  -- ── Square Bang Unico ──
  ('b0000000-0000-0000-0000-000000000015', '821.NX.0170.RX', 'Square Bang Unico Titanium 42mm', null, 'Square Bang', 'Titanium', 42.0, 'automatic', 'HUB1280', 100, 'Skeleton', 'Rubber', 2410000, 1800000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000015', '821.CX.0140.RX', 'Square Bang Unico All Black 42mm', null, 'Square Bang', 'Ceramic', 42.0, 'automatic', 'HUB1280', 100, 'Skeleton', 'Rubber', 2680000, 2000000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000015', '821.OX.0180.RX', 'Square Bang Unico King Gold 42mm', null, 'Square Bang', '18k King Gold', 42.0, 'automatic', 'HUB1280', 100, 'Skeleton', 'Rubber', 4800000, 3500000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000015', '821.JX.0120.RT', 'Square Bang Unico Sapphire 42mm', null, 'Square Bang', 'Sapphire Crystal', 42.0, 'automatic', 'HUB1280', 100, 'Skeleton', 'Rubber', 5500000, 4200000, 0.8, null, null),
  ('b0000000-0000-0000-0000-000000000015', '805.QD.0170.RX', 'Square Bang Tourbillon 42mm', null, 'Square Bang', 'Titanium', 42.0, 'manual', 'HUB6035', 100, 'Skeleton', 'Rubber', 15500000, 13000000, 1.5, null, null),
  -- ── MP Collection ──
  ('b0000000-0000-0000-0000-000000000015', '905.ND.0001.RX', 'MP-05 LaFerrari', 'LaFerrari', 'MP Collection', 'Titanium', 51.0, 'manual', 'HUB9005.H1.6', 30, 'Skeleton', 'Rubber', null, 30000000, 2.0, null, null),
  ('b0000000-0000-0000-0000-000000000015', '905.JX.0001.RT', 'MP-05 LaFerrari Sapphire', 'LaFerrari Sapphire', 'MP Collection', 'Sapphire Crystal', 51.0, 'manual', 'HUB9005.H1.6', 30, 'Skeleton', 'Rubber', null, 48000000, 3.0, null, null),
  ('b0000000-0000-0000-0000-000000000015', '911.NX.0171.LR', 'MP-11 Power Reserve 14 Days', null, 'MP Collection', 'Titanium', 45.0, 'manual', 'HUB9011', 30, 'Skeleton', 'Rubber', 8500000, 6000000, -0.5, null, null),
  ('b0000000-0000-0000-0000-000000000015', '911.JX.0102.RW', 'MP-11 Power Reserve 14 Days Sapphire', null, 'MP Collection', 'Sapphire Crystal', 45.0, 'manual', 'HUB9011', 30, 'Skeleton', 'Rubber', 15000000, 12000000, 0.8, null, null),
  ('b0000000-0000-0000-0000-000000000015', '912.OX.9010.LR.ALB19', 'MP-09 Tourbillon Bi-Axis', null, 'MP Collection', '18k King Gold', 49.0, 'manual', 'HUB9009.H1.RA', 30, 'Skeleton', 'Rubber', null, 35000000, 1.5, null, null);

-- ============================================================
-- BLANCPAIN (~55 watches)
-- ============================================================
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  -- ── Fifty Fathoms Automatique 45mm ──
  ('b0000000-0000-0000-0000-000000000016', '5015-1130-52A', 'Fifty Fathoms Automatique', null, 'Fifty Fathoms', 'Stainless Steel', 45.0, 'automatic', '1315', 300, 'Black', 'Fabric/Canvas', 1530000, 1300000, 0.5, null, 'https://www.blancpain.com/en/fifty-fathoms/fifty-fathoms-automatique-5015-1130-52a'),
  ('b0000000-0000-0000-0000-000000000016', '5015-1130-71S', 'Fifty Fathoms Automatique', null, 'Fifty Fathoms', 'Stainless Steel', 45.0, 'automatic', '1315', 300, 'Black', 'Stainless Steel', 1590000, 1350000, 0.4, null, 'https://www.blancpain.com/en/fifty-fathoms/fifty-fathoms-automatique-5015-1130-71s'),
  ('b0000000-0000-0000-0000-000000000016', '5015-3630-52A', 'Fifty Fathoms Automatique', null, 'Fifty Fathoms', 'Titanium', 45.0, 'automatic', '1315', 300, 'Blue', 'Fabric/Canvas', 1680000, 1400000, 0.6, null, 'https://www.blancpain.com/en/fifty-fathoms/fifty-fathoms-automatique-5015-3630-52a'),
  ('b0000000-0000-0000-0000-000000000016', '5015-12B40-O52A', 'Fifty Fathoms Automatique', null, 'Fifty Fathoms', 'Titanium', 45.0, 'automatic', '1315', 300, 'Blue', 'Sail-Canvas', 1470000, 1250000, 0.8, null, 'https://www.blancpain.com/en/fifty-fathoms/fifty-fathoms-automatique-5015-12b40-o52a'),
  ('b0000000-0000-0000-0000-000000000016', '5015-12B40-98B', 'Fifty Fathoms Automatique', null, 'Fifty Fathoms', 'Titanium', 45.0, 'automatic', '1315', 300, 'Blue', 'Titanium', 1650000, 1380000, 0.5, null, 'https://www.blancpain.com/en/fifty-fathoms/fifty-fathoms-automatique-5015-12b40-98b'),
  ('b0000000-0000-0000-0000-000000000016', '5015-12B30-B52B', 'Fifty Fathoms Automatique', null, 'Fifty Fathoms', 'Titanium', 45.0, 'automatic', '1315', 300, 'Black', 'Sail-Canvas', 1470000, 1220000, 0.4, null, 'https://www.blancpain.com/en/fifty-fathoms/fifty-fathoms-automatique-5015-12b30-b52b'),
  ('b0000000-0000-0000-0000-000000000016', '5015-12B30-98B', 'Fifty Fathoms Automatique', null, 'Fifty Fathoms', 'Titanium', 45.0, 'automatic', '1315', 300, 'Black', 'Titanium', 1650000, 1350000, 0.3, null, 'https://www.blancpain.com/en/fifty-fathoms/fifty-fathoms-automatique-5015-12b30-98b'),
  ('b0000000-0000-0000-0000-000000000016', '5015-11C30-52A', 'Fifty Fathoms Automatique DLC', 'No Rad', 'Fifty Fathoms', 'Stainless Steel/DLC', 45.0, 'automatic', '1315', 300, 'Black', 'Fabric/Canvas', 1680000, 1450000, 1.2, null, null),
  -- ── Fifty Fathoms Automatique 38mm ──
  ('b0000000-0000-0000-0000-000000000016', '5100-1140-O52A', 'Fifty Fathoms Automatique 38mm', null, 'Fifty Fathoms', 'Stainless Steel', 38.0, 'automatic', '1150', 300, 'Blue', 'Sail-Canvas', 975000, 800000, 0.8, null, 'https://www.blancpain.com/en/fifty-fathoms/bathyscaphe-5100-1140-o52a'),
  ('b0000000-0000-0000-0000-000000000016', '5100-1127-NAWA', 'Fifty Fathoms Automatique 38mm', null, 'Fifty Fathoms', 'Stainless Steel', 38.0, 'automatic', '1150', 300, 'Black', 'NATO', 950000, 780000, 0.5, null, 'https://www.blancpain.com/en/fifty-fathoms/bathyscaphe-5100-1127-nawa'),
  ('b0000000-0000-0000-0000-000000000016', '5100-1127-NATA', 'Fifty Fathoms Automatique 38mm', null, 'Fifty Fathoms', 'Stainless Steel', 38.0, 'automatic', '1150', 300, 'Black', 'Tropic', 920000, 760000, 0.4, null, 'https://www.blancpain.com/en/fifty-fathoms/bathyscaphe-5100-1127-nata'),
  ('b0000000-0000-0000-0000-000000000016', '5100-1140-NAOA', 'Fifty Fathoms Automatique 38mm', null, 'Fifty Fathoms', 'Stainless Steel', 38.0, 'automatic', '1150', 300, 'Blue', 'NATO', 950000, 790000, 0.6, null, 'https://www.blancpain.com/en/fifty-fathoms/bathyscaphe-5100-1140-naoa'),
  ('b0000000-0000-0000-0000-000000000016', '5100B-1110-B52A', 'Fifty Fathoms Automatique 38mm', null, 'Fifty Fathoms', 'Titanium', 38.0, 'automatic', '1150', 300, 'Black', 'Fabric/Canvas', 1020000, 850000, 0.5, null, 'https://www.blancpain.com/en/fifty-fathoms/bathyscaphe-5100b-1110-b52a'),
  ('b0000000-0000-0000-0000-000000000016', '5100-1130-63A', 'Fifty Fathoms Automatique 38mm', null, 'Fifty Fathoms', 'Stainless Steel', 38.0, 'automatic', '1150', 300, 'Black', 'Fabric/Canvas', 950000, 770000, 0.3, null, 'https://www.blancpain.com/en/fifty-fathoms/bathyscaphe-5100-1130-63a'),
  ('b0000000-0000-0000-0000-000000000016', '5007-12B44R-NAFA', 'Fifty Fathoms Automatique 38mm', null, 'Fifty Fathoms', 'Titanium', 38.0, 'automatic', '1150', 300, 'Pink MOP', 'NATO', 1350000, 1150000, 1.0, null, null),
  -- ── Fifty Fathoms Bathyscaphe 43mm ──
  ('b0000000-0000-0000-0000-000000000016', '5000-1110-B52A', 'Fifty Fathoms Bathyscaphe', null, 'Fifty Fathoms', 'Stainless Steel', 43.0, 'automatic', '1315', 300, 'Black', 'Fabric/Canvas', 1150000, 900000, -0.3, null, 'https://www.blancpain.com/en/fifty-fathoms/bathyscaphe-5000-1110-b52a'),
  ('b0000000-0000-0000-0000-000000000016', '5000-1210-G52A', 'Fifty Fathoms Bathyscaphe', null, 'Fifty Fathoms', 'Titanium', 43.0, 'automatic', '1315', 300, 'Grey', 'Fabric/Canvas', 1280000, 1050000, 0.2, null, 'https://www.blancpain.com/en/fifty-fathoms/bathyscaphe-5000-1210-g52a'),
  ('b0000000-0000-0000-0000-000000000016', '5000-0240-O52A', 'Fifty Fathoms Bathyscaphe', null, 'Fifty Fathoms', 'Grey Ceramic', 43.6, 'automatic', '1315', 300, 'Grey', 'Fabric/Canvas', 1550000, 1300000, 0.5, null, 'https://www.blancpain.com/en/fifty-fathoms/bathyscaphe-5000-0240-o52a'),
  ('b0000000-0000-0000-0000-000000000016', '5000-0130-B52A', 'Fifty Fathoms Bathyscaphe', null, 'Fifty Fathoms', 'Black Ceramic', 43.6, 'automatic', '1315', 300, 'Black', 'Fabric/Canvas', 1550000, 1280000, 0.3, null, null),
  -- ── Fifty Fathoms Bathyscaphe Quantième Complet ──
  ('b0000000-0000-0000-0000-000000000016', '5054-1110-B52A', 'Bathyscaphe Quantième Complet Phases de Lune', null, 'Fifty Fathoms', 'Stainless Steel', 43.0, 'automatic', '6654.P.4', 300, 'Black', 'Fabric/Canvas', 1750000, 1450000, 0.5, null, 'https://www.blancpain.com/en/fifty-fathoms/bathyscaphe-quantieme-complet-phases-lune-5054-1110-b52a'),
  -- ── Fifty Fathoms Bathyscaphe Chronograph Flyback ──
  ('b0000000-0000-0000-0000-000000000016', '5200-0153-B52A', 'Fifty Fathoms Bathyscaphe Chronograph Flyback', null, 'Fifty Fathoms', 'Stainless Steel', 43.0, 'automatic', 'F385', 300, 'Blue', 'Fabric/Canvas', 1700000, 1400000, 0.8, null, null),
  ('b0000000-0000-0000-0000-000000000016', '5200-1110-B52A', 'Fifty Fathoms Bathyscaphe Chronograph Flyback', null, 'Fifty Fathoms', 'Stainless Steel', 43.0, 'automatic', 'F385', 300, 'Black', 'Fabric/Canvas', 1700000, 1380000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000016', '5200-0310-G52A', 'Fifty Fathoms Bathyscaphe Chronograph Flyback', null, 'Fifty Fathoms', 'Grey Ceramic', 43.0, 'automatic', 'F385', 300, 'Grey', 'Fabric/Canvas', 1950000, 1650000, 0.5, null, null),
  -- ── Fifty Fathoms Tech 45mm ──
  ('b0000000-0000-0000-0000-000000000016', '5029-12B30-94A', 'Fifty Fathoms Tech', null, 'Fifty Fathoms', 'Titanium', 45.0, 'automatic', '1315A', 300, 'Black', 'Rubber', 1850000, 1550000, 1.5, null, null),
  -- ── Fifty Fathoms 70th Anniversary (Limited) ──
  ('b0000000-0000-0000-0000-000000000016', '5010A-1130-NABA', 'Fifty Fathoms 70th Anniversary Act 1 Series I', '70th Anniversary', 'Fifty Fathoms', 'Stainless Steel', 42.3, 'automatic', '1315', 300, 'Black', 'NATO', 1740000, 2200000, 2.5, null, 'https://www.blancpain.com/en-us/fifty-fathoms/fifty-fathoms-70th-anniversary-act-1-series-i-5010a-1130-naba'),
  ('b0000000-0000-0000-0000-000000000016', '5010B-1130-NABA', 'Fifty Fathoms 70th Anniversary Act 1 Series II', null, 'Fifty Fathoms', 'Stainless Steel', 42.3, 'automatic', '1315', 300, 'Black', 'NATO', 1740000, 2100000, 2.0, null, 'https://www.blancpain.com/en/fifty-fathoms/fifty-fathoms-70th-anniversary-5010b-1130-naba'),
  ('b0000000-0000-0000-0000-000000000016', '5010C-1130-NABA', 'Fifty Fathoms 70th Anniversary Act 1 Series III', null, 'Fifty Fathoms', 'Stainless Steel', 42.3, 'automatic', '1315', 300, 'Black', 'NATO', 1740000, 2050000, 1.8, null, 'https://www.blancpain.com/en/fifty-fathoms/fifty-fathoms-70th-anniversary-5010c-1130-naba'),
  ('b0000000-0000-0000-0000-000000000016', '5901-5630-NANA', 'Fifty Fathoms 70th Anniversary Act 3', null, 'Fifty Fathoms', '9K Bronze Gold', 41.3, 'automatic', '1154.P2', 300, 'Blue', 'NATO', 2100000, 2800000, 3.0, null, 'https://www.blancpain.com/en/fifty-fathoms/fifty-fathoms-70th-anniversary-act-3-5901-5630-nana'),
  -- ── Villeret Ultraplate ──
  ('b0000000-0000-0000-0000-000000000016', '6223-1127-55B', 'Villeret Ultraplate', null, 'Villeret', 'Stainless Steel', 40.0, 'automatic', '1150', 30, 'White', 'Leather', 840000, 650000, -0.5, null, null),
  ('b0000000-0000-0000-0000-000000000016', '6223-1542-55B', 'Villeret Ultraplate', null, 'Villeret', 'Stainless Steel', 40.0, 'automatic', '1150', 30, 'Blue', 'Leather', 840000, 670000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000016', '6223-3642-55B', 'Villeret Ultraplate', null, 'Villeret', '18k Rose Gold', 40.0, 'automatic', '1150', 30, 'White', 'Leather', 1650000, 1250000, -0.2, null, null),
  -- ── Villeret Quantième Complet (Calendar Moon Phase) ──
  ('b0000000-0000-0000-0000-000000000016', '6654-1127-55B', 'Villeret Quantième Complet', null, 'Villeret', 'Stainless Steel', 40.0, 'automatic', '6654.4', 30, 'White', 'Leather', 1450000, 1100000, 0.3, null, 'https://www.blancpain.com/en-us/villeret/villeret-quantieme-complet-6654-3642-55b'),
  ('b0000000-0000-0000-0000-000000000016', '6654-3642-55B', 'Villeret Quantième Complet', null, 'Villeret', '18k Rose Gold', 40.0, 'automatic', '6654.4', 30, 'Opaline', 'Leather', 2950000, 2300000, 0.2, null, 'https://www.blancpain.com/en-us/villeret/villeret-quantieme-complet-6654-3642-55b'),
  ('b0000000-0000-0000-0000-000000000016', '6654-3640-MMB', 'Villeret Quantième Complet', null, 'Villeret', '18k Rose Gold', 40.0, 'automatic', '6654.4', 30, 'White', 'Milanese Mesh', 3200000, 2500000, 0.3, null, 'https://www.blancpain.com/en-us/villeret/villeret-quantieme-complet-6654-3640-mmb'),
  -- ── Villeret Quantième Phases de Lune ──
  ('b0000000-0000-0000-0000-000000000016', '6263-1127-55B', 'Villeret Quantième Phases de Lune', null, 'Villeret', 'Stainless Steel', 40.0, 'automatic', '913Q.L', 30, 'White', 'Leather', 1210000, 935000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000016', '6263-1546-55B', 'Villeret Quantième Phases de Lune', null, 'Villeret', 'Stainless Steel', 40.0, 'automatic', '913Q.L', 30, 'Blue', 'Leather', 1210000, 950000, 0.3, null, null),
  -- ── Villeret Carrousel Volant ──
  ('b0000000-0000-0000-0000-000000000016', '6639-3631-55B', 'Villeret Carrousel Volant', null, 'Villeret', '18k Rose Gold', 42.0, 'automatic', '225', 30, 'White', 'Leather', 9900000, 7500000, -0.8, null, null),
  -- ── Villeret Grande Date ──
  ('b0000000-0000-0000-0000-000000000016', '6669-1127-55B', 'Villeret Grande Date', null, 'Villeret', 'Stainless Steel', 40.0, 'automatic', '6950', 30, 'White', 'Leather', 1480000, 1150000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000016', '6669-3642-55B', 'Villeret Grande Date', null, 'Villeret', '18k Rose Gold', 40.0, 'automatic', '6950', 30, 'White', 'Leather', 2850000, 2200000, 0.2, null, null),
  -- ── Villeret Tourbillon Volant ──
  ('b0000000-0000-0000-0000-000000000016', '66240-3631-55B', 'Villeret Tourbillon Volant Heure Sautante Minute Rétrograde', null, 'Villeret', '18k Rose Gold', 42.0, 'automatic', '25A', 30, 'White Opaline', 'Leather', 15500000, 12000000, 0.5, null, null),
  -- ── Air Command ──
  ('b0000000-0000-0000-0000-000000000016', 'AC01-1130-63A', 'Air Command Flyback Chronograph', null, 'Air Command', 'Stainless Steel', 42.5, 'automatic', 'F388B', 30, 'Black', 'Fabric/Canvas', 1850000, 1600000, 1.5, null, 'https://www.blancpain.com/en/air-command/air-command-ac01-1130-63a'),
  ('b0000000-0000-0000-0000-000000000016', 'AC02-12B40-63A', 'Air Command Flyback Chronograph', null, 'Air Command', 'Titanium', 42.5, 'automatic', 'F388B', 30, 'Blue', 'Fabric/Canvas', 2050000, 1800000, 1.0, null, 'https://www.blancpain.com/en/air-command/air-command-ac02-12b40-63b'),
  ('b0000000-0000-0000-0000-000000000016', 'AC02-12B40-63B', 'Air Command Flyback Chronograph', null, 'Air Command', 'Titanium', 42.5, 'automatic', 'F388B', 30, 'Blue', 'Leather', 2050000, 1780000, 0.8, null, 'https://www.blancpain.com/en/air-command/air-command-ac02-12b40-63b'),
  ('b0000000-0000-0000-0000-000000000016', 'AC02-36B40-63A', 'Air Command Flyback Chronograph', null, 'Air Command', '18k Red Gold', 42.5, 'automatic', 'F388B', 30, 'Blue', 'Fabric/Canvas', 3600000, 3000000, 0.5, null, 'https://www.blancpain.com/en-us/air-command/air-command-ac02-36b40-63a'),
  ('b0000000-0000-0000-0000-000000000016', 'AC02-12B40-98S', 'Air Command Flyback Chronograph', null, 'Air Command', 'Titanium', 42.5, 'automatic', 'F388B', 30, 'Blue', 'Titanium', 2300000, 2000000, 0.8, null, 'https://www.blancpain.com/en/air-command/air-command-ac02-12b40-98s'),
  -- ── Ladybird ──
  ('b0000000-0000-0000-0000-000000000016', '3660-1954-W55A', 'Ladybird Colors', null, 'Ladybird', 'Stainless Steel', 34.9, 'automatic', '1153', 30, 'Midnight Blue', 'Leather', 2890000, 2300000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000016', '3660-2954-W55A', 'Ladybird Colors', null, 'Ladybird', 'Stainless Steel', 34.9, 'automatic', '1153', 30, 'Coral Blue', 'Leather', 2890000, 2250000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000016', '3660-3654-W55A', 'Ladybird Colors', null, 'Ladybird', '18k Rose Gold', 34.9, 'automatic', '1153', 30, 'White', 'Leather', 3500000, 2800000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000016', '3662C-1954-55B', 'Ladybird Saint Valentin 2025', 'Saint Valentin', 'Ladybird', 'Stainless Steel/Diamonds', 34.9, 'automatic', '1153L', 30, 'Mother of Pearl', 'Leather', 3850000, 3200000, 1.5, null, 'https://www.blancpain.com/en/ladybird/ladybird-saint-valentin-2025-3662c-1954-55b'),
  ('b0000000-0000-0000-0000-000000000016', '2360-1191A-55A', 'Ladybird Quantième Complet', null, 'Ladybird', '18k Red Gold/Diamonds', 34.9, 'automatic', '6763L', 30, 'White', 'Leather', 3200000, 2600000, 0.3, null, 'https://www.blancpain.com/en/ladybird/ladybird-quantieme-complet-2360-1191a-55a'),
  -- ── Leman (Heritage/Secondary) ──
  ('b0000000-0000-0000-0000-000000000016', '2100-1130-53B', 'Leman Ultraplate', null, 'Leman', 'Stainless Steel', 38.0, 'automatic', '1150', 100, 'White', 'Leather', null, 500000, -0.5, null, null),
  ('b0000000-0000-0000-0000-000000000016', '2160-1130-53B', 'Leman Complete Calendar', null, 'Leman', 'Stainless Steel', 40.0, 'automatic', '6654.3', 100, 'White', 'Leather', null, 650000, -0.3, null, null);

-- ============================================================
-- EXPANSION DATA — Additional watches for comprehensive coverage
-- ============================================================

-- ============================================================
-- OMEGA EXPANSION — Constellation + De Ville + additional models
-- These are ADDITIONAL watches not in the main seed.sql
-- ============================================================
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  -- ══════════════════════════════════════════════════════════════
  -- CONSTELLATION MANHATTAN 41mm — Co-Axial Master Chronometer
  -- Cal. 8900/8901, 55h PR, 50m WR
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000004', '131.10.41.21.01.001', 'Constellation Co-Axial Master Chronometer 41mm', null, 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8900', 50, 'Black', 'Stainless Steel', 720000, 550000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.41.21.02.001', 'Constellation Co-Axial Master Chronometer 41mm', null, 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8900', 50, 'Silver', 'Stainless Steel', 720000, 540000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.41.21.03.001', 'Constellation Co-Axial Master Chronometer 41mm', null, 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8900', 50, 'Blue', 'Stainless Steel', 720000, 560000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.41.21.06.001', 'Constellation Co-Axial Master Chronometer 41mm', null, 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8900', 50, 'Green', 'Stainless Steel', 720000, 570000, 0.8, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.13.41.21.01.001', 'Constellation Co-Axial Master Chronometer 41mm', null, 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8900', 50, 'Black', 'Leather', 670000, 520000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.13.41.21.03.001', 'Constellation Co-Axial Master Chronometer 41mm', null, 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8900', 50, 'Blue', 'Leather', 670000, 530000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.20.41.21.01.001', 'Constellation Co-Axial Master Chronometer 41mm', null, 'Constellation', 'Steel/Sedna Gold', 41.0, 'automatic', '8901', 50, 'Black', 'Steel/Gold', 1100000, 820000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.20.41.21.02.001', 'Constellation Co-Axial Master Chronometer 41mm', null, 'Constellation', 'Steel/Sedna Gold', 41.0, 'automatic', '8901', 50, 'Silver', 'Steel/Gold', 1100000, 810000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.20.41.21.03.001', 'Constellation Co-Axial Master Chronometer 41mm', null, 'Constellation', 'Steel/Sedna Gold', 41.0, 'automatic', '8901', 50, 'Blue', 'Steel/Gold', 1100000, 830000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.20.41.21.06.001', 'Constellation Co-Axial Master Chronometer 41mm', null, 'Constellation', 'Steel/Sedna Gold', 41.0, 'automatic', '8901', 50, 'Green', 'Steel/Gold', 1100000, 840000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.50.41.21.01.001', 'Constellation Co-Axial Master Chronometer 41mm', null, 'Constellation', '18k Sedna Gold', 41.0, 'automatic', '8901', 50, 'Black', '18k Sedna Gold', 3400000, 2600000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.50.41.21.02.001', 'Constellation Co-Axial Master Chronometer 41mm', null, 'Constellation', '18k Sedna Gold', 41.0, 'automatic', '8901', 50, 'Silver', '18k Sedna Gold', 3400000, 2550000, -0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.55.41.21.99.001', 'Constellation Co-Axial Master Chronometer 41mm', null, 'Constellation', '18k Sedna Gold', 41.0, 'automatic', '8901', 50, 'Meteorite', '18k Sedna Gold', 4200000, 3200000, 0.1, null, null),
  -- ── Constellation Manhattan 39mm ──
  ('b0000000-0000-0000-0000-000000000004', '131.10.39.20.01.001', 'Constellation Co-Axial Master Chronometer 39mm', null, 'Constellation', 'Stainless Steel', 39.0, 'automatic', '8800', 50, 'Black', 'Stainless Steel', 680000, 520000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.39.20.02.001', 'Constellation Co-Axial Master Chronometer 39mm', null, 'Constellation', 'Stainless Steel', 39.0, 'automatic', '8800', 50, 'Silver', 'Stainless Steel', 680000, 510000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.39.20.03.001', 'Constellation Co-Axial Master Chronometer 39mm', null, 'Constellation', 'Stainless Steel', 39.0, 'automatic', '8800', 50, 'Blue', 'Stainless Steel', 680000, 530000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.39.20.06.001', 'Constellation Co-Axial Master Chronometer 39mm', null, 'Constellation', 'Stainless Steel', 39.0, 'automatic', '8800', 50, 'Green', 'Stainless Steel', 680000, 540000, 0.7, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.39.20.11.001', 'Constellation Co-Axial Master Chronometer 39mm', null, 'Constellation', 'Stainless Steel', 39.0, 'automatic', '8800', 50, 'Ice Blue', 'Stainless Steel', 680000, 550000, 0.8, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.20.39.20.01.001', 'Constellation Co-Axial Master Chronometer 39mm', null, 'Constellation', 'Steel/Sedna Gold', 39.0, 'automatic', '8801', 50, 'Black', 'Steel/Gold', 1050000, 780000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.20.39.20.02.001', 'Constellation Co-Axial Master Chronometer 39mm', null, 'Constellation', 'Steel/Sedna Gold', 39.0, 'automatic', '8801', 50, 'Silver', 'Steel/Gold', 1050000, 770000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.20.39.20.08.001', 'Constellation Co-Axial Master Chronometer 39mm', null, 'Constellation', 'Steel/Sedna Gold', 39.0, 'automatic', '8801', 50, 'Champagne', 'Steel/Gold', 1050000, 790000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.50.39.20.01.001', 'Constellation Co-Axial Master Chronometer 39mm', null, 'Constellation', '18k Sedna Gold', 39.0, 'automatic', '8801', 50, 'Black', '18k Sedna Gold', 3200000, 2400000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.50.39.20.02.001', 'Constellation Co-Axial Master Chronometer 39mm', null, 'Constellation', '18k Sedna Gold', 39.0, 'automatic', '8801', 50, 'Silver', '18k Sedna Gold', 3200000, 2350000, -0.4, null, null),
  -- ── Constellation Manhattan 36mm ──
  ('b0000000-0000-0000-0000-000000000004', '131.10.36.20.01.001', 'Constellation Co-Axial Master Chronometer 36mm', null, 'Constellation', 'Stainless Steel', 36.0, 'automatic', '8800', 50, 'Black', 'Stainless Steel', 650000, 500000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.36.20.02.001', 'Constellation Co-Axial Master Chronometer 36mm', null, 'Constellation', 'Stainless Steel', 36.0, 'automatic', '8800', 50, 'Silver', 'Stainless Steel', 650000, 490000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.36.20.03.001', 'Constellation Co-Axial Master Chronometer 36mm', null, 'Constellation', 'Stainless Steel', 36.0, 'automatic', '8800', 50, 'Blue', 'Stainless Steel', 650000, 510000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.36.20.06.001', 'Constellation Co-Axial Master Chronometer 36mm', null, 'Constellation', 'Stainless Steel', 36.0, 'automatic', '8800', 50, 'Green', 'Stainless Steel', 650000, 520000, 0.7, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.15.36.20.52.001', 'Constellation Co-Axial Master Chronometer 36mm', null, 'Constellation', 'Stainless Steel', 36.0, 'automatic', '8800', 50, 'White MOP/Diamonds', 'Stainless Steel', 850000, 650000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.20.36.20.01.001', 'Constellation Co-Axial Master Chronometer 36mm', null, 'Constellation', 'Steel/Sedna Gold', 36.0, 'automatic', '8801', 50, 'Black', 'Steel/Gold', 1000000, 740000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.20.36.20.02.001', 'Constellation Co-Axial Master Chronometer 36mm', null, 'Constellation', 'Steel/Sedna Gold', 36.0, 'automatic', '8801', 50, 'Silver', 'Steel/Gold', 1000000, 730000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.20.36.20.08.001', 'Constellation Co-Axial Master Chronometer 36mm', null, 'Constellation', 'Steel/Sedna Gold', 36.0, 'automatic', '8801', 50, 'Champagne', 'Steel/Gold', 1000000, 750000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.25.36.20.52.001', 'Constellation Co-Axial Master Chronometer 36mm', null, 'Constellation', 'Steel/Sedna Gold', 36.0, 'automatic', '8801', 50, 'White MOP/Diamonds', 'Steel/Gold', 1300000, 960000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.50.36.20.01.001', 'Constellation Co-Axial Master Chronometer 36mm', null, 'Constellation', '18k Sedna Gold', 36.0, 'automatic', '8801', 50, 'Black', '18k Sedna Gold', 2800000, 2100000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.50.36.20.02.001', 'Constellation Co-Axial Master Chronometer 36mm', null, 'Constellation', '18k Sedna Gold', 36.0, 'automatic', '8801', 50, 'Silver', '18k Sedna Gold', 2800000, 2050000, -0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.55.36.20.99.001', 'Constellation Co-Axial Master Chronometer 36mm', null, 'Constellation', '18k Sedna Gold', 36.0, 'automatic', '8801', 50, 'Aventurine', '18k Sedna Gold', 3500000, 2700000, 0.2, null, null),
  -- ── Constellation Manhattan 29mm Ladies ──
  ('b0000000-0000-0000-0000-000000000004', '131.10.29.20.01.001', 'Constellation Co-Axial Master Chronometer 29mm', null, 'Constellation', 'Stainless Steel', 29.0, 'automatic', '8700', 50, 'Black', 'Stainless Steel', 580000, 450000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.29.20.02.001', 'Constellation Co-Axial Master Chronometer 29mm', null, 'Constellation', 'Stainless Steel', 29.0, 'automatic', '8700', 50, 'Silver', 'Stainless Steel', 580000, 440000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.29.20.03.001', 'Constellation Co-Axial Master Chronometer 29mm', null, 'Constellation', 'Stainless Steel', 29.0, 'automatic', '8700', 50, 'Blue', 'Stainless Steel', 580000, 460000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.29.20.53.001', 'Constellation Co-Axial Master Chronometer 29mm', null, 'Constellation', 'Stainless Steel', 29.0, 'automatic', '8700', 50, 'White MOP', 'Stainless Steel', 620000, 480000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.15.29.20.52.001', 'Constellation Co-Axial Master Chronometer 29mm', null, 'Constellation', 'Stainless Steel', 29.0, 'automatic', '8700', 50, 'White MOP/Diamonds', 'Stainless Steel', 780000, 600000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.15.29.20.55.001', 'Constellation Co-Axial Master Chronometer 29mm', null, 'Constellation', 'Stainless Steel', 29.0, 'automatic', '8700', 50, 'Pink MOP/Diamonds', 'Stainless Steel', 780000, 610000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.20.29.20.01.001', 'Constellation Co-Axial Master Chronometer 29mm', null, 'Constellation', 'Steel/Sedna Gold', 29.0, 'automatic', '8701', 50, 'Black', 'Steel/Gold', 920000, 680000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.20.29.20.02.001', 'Constellation Co-Axial Master Chronometer 29mm', null, 'Constellation', 'Steel/Sedna Gold', 29.0, 'automatic', '8701', 50, 'Silver', 'Steel/Gold', 920000, 670000, 0.0, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.20.29.20.08.001', 'Constellation Co-Axial Master Chronometer 29mm', null, 'Constellation', 'Steel/Sedna Gold', 29.0, 'automatic', '8701', 50, 'Champagne', 'Steel/Gold', 920000, 690000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.20.29.20.53.001', 'Constellation Co-Axial Master Chronometer 29mm', null, 'Constellation', 'Steel/Sedna Gold', 29.0, 'automatic', '8701', 50, 'White MOP', 'Steel/Gold', 980000, 720000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.25.29.20.52.001', 'Constellation Co-Axial Master Chronometer 29mm', null, 'Constellation', 'Steel/Sedna Gold', 29.0, 'automatic', '8701', 50, 'White MOP/Diamonds', 'Steel/Gold', 1200000, 880000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.50.29.20.01.001', 'Constellation Co-Axial Master Chronometer 29mm', null, 'Constellation', '18k Sedna Gold', 29.0, 'automatic', '8701', 50, 'Black', '18k Sedna Gold', 2400000, 1800000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.50.29.20.52.001', 'Constellation Co-Axial Master Chronometer 29mm', null, 'Constellation', '18k Sedna Gold', 29.0, 'automatic', '8701', 50, 'White MOP/Diamonds', '18k Sedna Gold', 3100000, 2300000, -0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.55.29.20.99.001', 'Constellation Co-Axial Master Chronometer 29mm', null, 'Constellation', '18k Sedna Gold', 29.0, 'automatic', '8701', 50, 'Aventurine', '18k Sedna Gold', 3400000, 2500000, 0.1, null, null),
  -- ── Constellation Globemaster 39mm ──
  ('b0000000-0000-0000-0000-000000000004', '130.30.39.21.03.001', 'Constellation Globemaster', null, 'Constellation', 'Stainless Steel', 39.0, 'automatic', '8900', 50, 'Blue', 'Stainless Steel', 750000, 580000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '130.30.39.21.02.001', 'Constellation Globemaster', null, 'Constellation', 'Stainless Steel', 39.0, 'automatic', '8900', 50, 'Silver', 'Stainless Steel', 750000, 570000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '130.33.39.21.03.001', 'Constellation Globemaster', null, 'Constellation', 'Stainless Steel', 39.0, 'automatic', '8900', 50, 'Blue', 'Leather', 700000, 550000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '130.23.39.21.03.001', 'Constellation Globemaster', null, 'Constellation', 'Steel/Sedna Gold', 39.0, 'automatic', '8901', 50, 'Blue', 'Leather', 1050000, 780000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '130.20.39.21.02.001', 'Constellation Globemaster', null, 'Constellation', 'Steel/Sedna Gold', 39.0, 'automatic', '8901', 50, 'Silver', 'Steel/Gold', 1100000, 830000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '130.53.39.21.02.001', 'Constellation Globemaster', null, 'Constellation', '18k Sedna Gold', 39.0, 'automatic', '8901', 50, 'Silver', '18k Sedna Gold', 2700000, 2000000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '130.33.41.22.06.001', 'Constellation Globemaster Annual Calendar 41mm', null, 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8922', 50, 'Green', 'Leather', 1050000, 800000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000004', '130.30.41.22.02.001', 'Constellation Globemaster Annual Calendar 41mm', null, 'Constellation', 'Stainless Steel', 41.0, 'automatic', '8922', 50, 'Silver', 'Stainless Steel', 1100000, 850000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '130.20.41.22.02.001', 'Constellation Globemaster Annual Calendar 41mm', null, 'Constellation', 'Steel/Sedna Gold', 41.0, 'automatic', '8923', 50, 'Silver', 'Steel/Gold', 1500000, 1100000, 0.2, null, null),
  -- ── Constellation Quartz 28mm ──
  ('b0000000-0000-0000-0000-000000000004', '131.10.28.60.01.001', 'Constellation Quartz 28mm', null, 'Constellation', 'Stainless Steel', 28.0, 'quartz', '4061', 50, 'Black', 'Stainless Steel', 380000, 290000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.28.60.02.001', 'Constellation Quartz 28mm', null, 'Constellation', 'Stainless Steel', 28.0, 'quartz', '4061', 50, 'Silver', 'Stainless Steel', 380000, 285000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.28.60.03.001', 'Constellation Quartz 28mm', null, 'Constellation', 'Stainless Steel', 28.0, 'quartz', '4061', 50, 'Blue', 'Stainless Steel', 380000, 295000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.10.28.60.55.001', 'Constellation Quartz 28mm', null, 'Constellation', 'Stainless Steel', 28.0, 'quartz', '4061', 50, 'Pink MOP', 'Stainless Steel', 420000, 320000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.15.28.60.52.001', 'Constellation Quartz 28mm', null, 'Constellation', 'Stainless Steel', 28.0, 'quartz', '4061', 50, 'White MOP/Diamonds', 'Stainless Steel', 560000, 430000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.20.28.60.02.001', 'Constellation Quartz 28mm', null, 'Constellation', 'Steel/Sedna Gold', 28.0, 'quartz', '4061', 50, 'Silver', 'Steel/Gold', 600000, 450000, 0.0, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.20.28.60.08.001', 'Constellation Quartz 28mm', null, 'Constellation', 'Steel/Sedna Gold', 28.0, 'quartz', '4061', 50, 'Champagne', 'Steel/Gold', 600000, 455000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.25.28.60.52.001', 'Constellation Quartz 28mm', null, 'Constellation', 'Steel/Sedna Gold', 28.0, 'quartz', '4061', 50, 'White MOP/Diamonds', 'Steel/Gold', 820000, 610000, 0.0, null, null),
  ('b0000000-0000-0000-0000-000000000004', '131.50.28.60.52.001', 'Constellation Quartz 28mm', null, 'Constellation', '18k Sedna Gold', 28.0, 'quartz', '4061', 50, 'White MOP/Diamonds', '18k Sedna Gold', 2200000, 1650000, -0.2, null, null),
  -- ══════════════════════════════════════════════════════════════
  -- DE VILLE PRESTIGE — Cal. 8800/8801/2500, 30m WR
  -- ══════════════════════════════════════════════════════════════
  -- ── De Ville Prestige 41mm ──
  ('b0000000-0000-0000-0000-000000000004', '424.10.40.20.01.001', 'De Ville Prestige Co-Axial 40mm', null, 'De Ville', 'Stainless Steel', 39.5, 'automatic', '2500', 30, 'Black', 'Stainless Steel', 420000, 310000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.10.40.20.02.001', 'De Ville Prestige Co-Axial 40mm', null, 'De Ville', 'Stainless Steel', 39.5, 'automatic', '2500', 30, 'Silver', 'Stainless Steel', 420000, 305000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.10.40.20.03.001', 'De Ville Prestige Co-Axial 40mm', null, 'De Ville', 'Stainless Steel', 39.5, 'automatic', '2500', 30, 'Blue', 'Stainless Steel', 420000, 315000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.13.40.20.01.001', 'De Ville Prestige Co-Axial 40mm', null, 'De Ville', 'Stainless Steel', 39.5, 'automatic', '2500', 30, 'Black', 'Leather', 370000, 280000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.13.40.20.02.002', 'De Ville Prestige Co-Axial 40mm', null, 'De Ville', 'Stainless Steel', 39.5, 'automatic', '2500', 30, 'Silver', 'Leather', 370000, 275000, 0.0, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.13.40.20.03.001', 'De Ville Prestige Co-Axial 40mm', null, 'De Ville', 'Stainless Steel', 39.5, 'automatic', '2500', 30, 'Blue', 'Leather', 370000, 285000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.20.40.20.01.001', 'De Ville Prestige Co-Axial 40mm', null, 'De Ville', 'Steel/Yellow Gold', 39.5, 'automatic', '2500', 30, 'Black', 'Steel/Gold', 600000, 440000, 0.0, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.20.40.20.02.001', 'De Ville Prestige Co-Axial 40mm', null, 'De Ville', 'Steel/Yellow Gold', 39.5, 'automatic', '2500', 30, 'Champagne', 'Steel/Gold', 600000, 445000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.20.40.20.08.001', 'De Ville Prestige Co-Axial 40mm', null, 'De Ville', 'Steel/Sedna Gold', 39.5, 'automatic', '2500', 30, 'Brown', 'Steel/Gold', 620000, 460000, 0.1, null, null),
  -- ── De Ville Prestige 34mm ──
  ('b0000000-0000-0000-0000-000000000004', '424.10.33.20.01.001', 'De Ville Prestige Co-Axial 34mm', null, 'De Ville', 'Stainless Steel', 32.7, 'automatic', '2500', 30, 'Black', 'Stainless Steel', 380000, 285000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.10.33.20.02.001', 'De Ville Prestige Co-Axial 34mm', null, 'De Ville', 'Stainless Steel', 32.7, 'automatic', '2500', 30, 'Silver', 'Stainless Steel', 380000, 280000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.10.33.20.03.001', 'De Ville Prestige Co-Axial 34mm', null, 'De Ville', 'Stainless Steel', 32.7, 'automatic', '2500', 30, 'Blue', 'Stainless Steel', 380000, 290000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.10.33.20.53.001', 'De Ville Prestige Co-Axial 34mm', null, 'De Ville', 'Stainless Steel', 32.7, 'automatic', '2500', 30, 'White MOP', 'Stainless Steel', 420000, 310000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.13.33.20.01.001', 'De Ville Prestige Co-Axial 34mm', null, 'De Ville', 'Stainless Steel', 32.7, 'automatic', '2500', 30, 'Black', 'Leather', 340000, 255000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.20.33.20.02.001', 'De Ville Prestige Co-Axial 34mm', null, 'De Ville', 'Steel/Yellow Gold', 32.7, 'automatic', '2500', 30, 'Silver', 'Steel/Gold', 550000, 400000, 0.0, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.20.33.20.08.001', 'De Ville Prestige Co-Axial 34mm', null, 'De Ville', 'Steel/Sedna Gold', 32.7, 'automatic', '2500', 30, 'Champagne', 'Steel/Gold', 570000, 415000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.20.33.20.53.001', 'De Ville Prestige Co-Axial 34mm', null, 'De Ville', 'Steel/Yellow Gold', 32.7, 'automatic', '2500', 30, 'White MOP', 'Steel/Gold', 620000, 450000, 0.1, null, null),
  -- ── De Ville Prestige 27.4mm Ladies ──
  ('b0000000-0000-0000-0000-000000000004', '424.10.27.60.01.001', 'De Ville Prestige Quartz 27.4mm', null, 'De Ville', 'Stainless Steel', 27.4, 'quartz', '1376', 30, 'Black', 'Stainless Steel', 280000, 210000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.10.27.60.02.001', 'De Ville Prestige Quartz 27.4mm', null, 'De Ville', 'Stainless Steel', 27.4, 'quartz', '1376', 30, 'Silver', 'Stainless Steel', 280000, 208000, 0.0, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.10.27.60.03.001', 'De Ville Prestige Quartz 27.4mm', null, 'De Ville', 'Stainless Steel', 27.4, 'quartz', '1376', 30, 'Blue', 'Stainless Steel', 280000, 212000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.10.27.60.53.001', 'De Ville Prestige Quartz 27.4mm', null, 'De Ville', 'Stainless Steel', 27.4, 'quartz', '1376', 30, 'White MOP', 'Stainless Steel', 310000, 230000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.15.27.60.52.001', 'De Ville Prestige Quartz 27.4mm', null, 'De Ville', 'Stainless Steel', 27.4, 'quartz', '1376', 30, 'White MOP/Diamonds', 'Stainless Steel', 430000, 320000, 0.0, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.20.27.60.02.001', 'De Ville Prestige Quartz 27.4mm', null, 'De Ville', 'Steel/Yellow Gold', 27.4, 'quartz', '1376', 30, 'Silver', 'Steel/Gold', 440000, 325000, 0.0, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.20.27.60.08.001', 'De Ville Prestige Quartz 27.4mm', null, 'De Ville', 'Steel/Sedna Gold', 27.4, 'quartz', '1376', 30, 'Champagne', 'Steel/Gold', 460000, 340000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '424.20.27.60.53.001', 'De Ville Prestige Quartz 27.4mm', null, 'De Ville', 'Steel/Yellow Gold', 27.4, 'quartz', '1376', 30, 'White MOP', 'Steel/Gold', 490000, 360000, 0.0, null, null),
  -- ══════════════════════════════════════════════════════════════
  -- DE VILLE TRESOR — Cal. 8910/8911/4061, 30m WR
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000004', '428.10.39.60.02.001', 'De Ville Trésor Quartz 39mm', null, 'De Ville', 'Stainless Steel', 39.0, 'quartz', '4061', 30, 'Silver', 'Stainless Steel', 340000, 260000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '428.10.39.60.03.001', 'De Ville Trésor Quartz 39mm', null, 'De Ville', 'Stainless Steel', 39.0, 'quartz', '4061', 30, 'Blue', 'Stainless Steel', 340000, 265000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '428.17.39.60.02.001', 'De Ville Trésor Quartz 39mm', null, 'De Ville', 'Stainless Steel', 39.0, 'quartz', '4061', 30, 'Silver', 'NATO', 310000, 240000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '435.13.40.21.02.001', 'De Ville Trésor Co-Axial Master Chronometer 40mm', null, 'De Ville', 'Stainless Steel', 40.0, 'automatic', '8910', 30, 'Silver', 'Leather', 590000, 450000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '435.13.40.21.03.001', 'De Ville Trésor Co-Axial Master Chronometer 40mm', null, 'De Ville', 'Stainless Steel', 40.0, 'automatic', '8910', 30, 'Blue', 'Leather', 590000, 460000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '435.13.40.21.06.001', 'De Ville Trésor Co-Axial Master Chronometer 40mm', null, 'De Ville', 'Stainless Steel', 40.0, 'automatic', '8910', 30, 'Green', 'Leather', 590000, 470000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000004', '435.23.40.21.02.001', 'De Ville Trésor Co-Axial Master Chronometer 40mm', null, 'De Ville', 'Steel/Sedna Gold', 40.0, 'automatic', '8911', 30, 'Silver', 'Leather', 850000, 640000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '435.53.40.21.02.001', 'De Ville Trésor Co-Axial Master Chronometer 40mm', null, 'De Ville', '18k Sedna Gold', 40.0, 'automatic', '8911', 30, 'Silver', 'Leather', 1800000, 1350000, -0.2, null, null),
  -- ── De Ville Trésor 36mm Ladies ──
  ('b0000000-0000-0000-0000-000000000004', '428.10.36.60.02.001', 'De Ville Trésor Quartz 36mm', null, 'De Ville', 'Stainless Steel', 36.0, 'quartz', '4061', 30, 'Silver', 'Stainless Steel', 310000, 235000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '428.10.36.60.03.001', 'De Ville Trésor Quartz 36mm', null, 'De Ville', 'Stainless Steel', 36.0, 'quartz', '4061', 30, 'Blue', 'Stainless Steel', 310000, 240000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '428.17.36.60.02.001', 'De Ville Trésor Quartz 36mm', null, 'De Ville', 'Stainless Steel', 36.0, 'quartz', '4061', 30, 'Silver', 'NATO', 280000, 215000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '428.17.36.60.04.001', 'De Ville Trésor Quartz 36mm', null, 'De Ville', 'Stainless Steel', 36.0, 'quartz', '4061', 30, 'Lavender', 'NATO', 280000, 220000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '428.17.36.60.05.001', 'De Ville Trésor Quartz 36mm', null, 'De Ville', 'Stainless Steel', 36.0, 'quartz', '4061', 30, 'Yellow', 'NATO', 280000, 218000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '428.20.36.60.02.001', 'De Ville Trésor Quartz 36mm', null, 'De Ville', 'Steel/Sedna Gold', 36.0, 'quartz', '4061', 30, 'Silver', 'Steel/Gold', 470000, 350000, 0.0, null, null),
  ('b0000000-0000-0000-0000-000000000004', '428.20.36.60.08.001', 'De Ville Trésor Quartz 36mm', null, 'De Ville', 'Steel/Sedna Gold', 36.0, 'quartz', '4061', 30, 'Champagne', 'Steel/Gold', 470000, 355000, 0.1, null, null),
  -- ── De Ville Trésor 26mm Ladies ──
  ('b0000000-0000-0000-0000-000000000004', '428.10.26.60.02.001', 'De Ville Trésor Quartz 26mm', null, 'De Ville', 'Stainless Steel', 26.0, 'quartz', '4061', 30, 'Silver', 'Stainless Steel', 280000, 210000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '428.10.26.60.03.001', 'De Ville Trésor Quartz 26mm', null, 'De Ville', 'Stainless Steel', 26.0, 'quartz', '4061', 30, 'Blue', 'Stainless Steel', 280000, 215000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '428.17.26.60.02.001', 'De Ville Trésor Quartz 26mm', null, 'De Ville', 'Stainless Steel', 26.0, 'quartz', '4061', 30, 'Silver', 'NATO', 250000, 190000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '428.20.26.60.02.001', 'De Ville Trésor Quartz 26mm', null, 'De Ville', 'Steel/Sedna Gold', 26.0, 'quartz', '4061', 30, 'Silver', 'Steel/Gold', 420000, 310000, 0.0, null, null),
  -- ══════════════════════════════════════════════════════════════
  -- DE VILLE HOUR VISION — Cal. 8900/8901, 30m WR
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000004', '433.10.41.21.01.001', 'De Ville Hour Vision Co-Axial Master Chronometer 41mm', null, 'De Ville', 'Stainless Steel', 41.0, 'automatic', '8900', 30, 'Black', 'Stainless Steel', 820000, 620000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '433.10.41.21.02.001', 'De Ville Hour Vision Co-Axial Master Chronometer 41mm', null, 'De Ville', 'Stainless Steel', 41.0, 'automatic', '8900', 30, 'Silver', 'Stainless Steel', 820000, 615000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '433.10.41.21.03.001', 'De Ville Hour Vision Co-Axial Master Chronometer 41mm', null, 'De Ville', 'Stainless Steel', 41.0, 'automatic', '8900', 30, 'Blue', 'Stainless Steel', 820000, 630000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '433.13.41.21.01.001', 'De Ville Hour Vision Co-Axial Master Chronometer 41mm', null, 'De Ville', 'Stainless Steel', 41.0, 'automatic', '8900', 30, 'Black', 'Leather', 770000, 590000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '433.13.41.21.03.001', 'De Ville Hour Vision Co-Axial Master Chronometer 41mm', null, 'De Ville', 'Stainless Steel', 41.0, 'automatic', '8900', 30, 'Blue', 'Leather', 770000, 600000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '433.53.41.21.02.001', 'De Ville Hour Vision Co-Axial Master Chronometer 41mm', null, 'De Ville', '18k Sedna Gold', 41.0, 'automatic', '8901', 30, 'Silver', '18k Sedna Gold', 3300000, 2500000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '433.53.41.22.13.001', 'De Ville Hour Vision Annual Calendar 41mm', null, 'De Ville', '18k Sedna Gold', 41.0, 'automatic', '8611', 30, 'Silver', 'Leather', 2400000, 1800000, 0.1, null, null),
  -- ══════════════════════════════════════════════════════════════
  -- ADDITIONAL SEAMASTER variants
  -- ══════════════════════════════════════════════════════════════
  -- ── Seamaster Aqua Terra 150M Small Seconds 38mm ──
  ('b0000000-0000-0000-0000-000000000004', '220.10.38.20.01.001', 'Seamaster Aqua Terra 150M 38mm', null, 'Seamaster', 'Stainless Steel', 38.0, 'automatic', '8800', 150, 'Black', 'Stainless Steel', 680000, 520000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '220.10.38.20.02.001', 'Seamaster Aqua Terra 150M 38mm', null, 'Seamaster', 'Stainless Steel', 38.0, 'automatic', '8800', 150, 'Silver', 'Stainless Steel', 680000, 510000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '220.10.38.20.03.001', 'Seamaster Aqua Terra 150M 38mm', null, 'Seamaster', 'Stainless Steel', 38.0, 'automatic', '8800', 150, 'Blue', 'Stainless Steel', 680000, 530000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '220.10.38.20.10.001', 'Seamaster Aqua Terra 150M 38mm', null, 'Seamaster', 'Stainless Steel', 38.0, 'automatic', '8800', 150, 'Green', 'Stainless Steel', 680000, 540000, 0.7, null, null),
  ('b0000000-0000-0000-0000-000000000004', '220.12.38.20.01.001', 'Seamaster Aqua Terra 150M 38mm', null, 'Seamaster', 'Stainless Steel', 38.0, 'automatic', '8800', 150, 'Black', 'Leather', 630000, 490000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '220.12.38.20.03.001', 'Seamaster Aqua Terra 150M 38mm', null, 'Seamaster', 'Stainless Steel', 38.0, 'automatic', '8800', 150, 'Blue', 'Leather', 630000, 500000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '220.20.38.20.01.001', 'Seamaster Aqua Terra 150M 38mm', null, 'Seamaster', 'Steel/Sedna Gold', 38.0, 'automatic', '8801', 150, 'Black', 'Steel/Gold', 1050000, 780000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '220.20.38.20.02.001', 'Seamaster Aqua Terra 150M 38mm', null, 'Seamaster', 'Steel/Sedna Gold', 38.0, 'automatic', '8801', 150, 'Silver', 'Steel/Gold', 1050000, 770000, 0.1, null, null),
  -- ── Seamaster Diver 300M 42mm additional variants ──
  ('b0000000-0000-0000-0000-000000000004', '210.22.42.20.01.001', 'Seamaster Diver 300M Co-Axial 42mm', null, 'Seamaster', 'Steel/Sedna Gold', 42.0, 'automatic', '8800', 300, 'Black', 'Steel/Gold', 1250000, 950000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '210.22.42.20.01.002', 'Seamaster Diver 300M Co-Axial 42mm', null, 'Seamaster', 'Steel/Sedna Gold', 42.0, 'automatic', '8800', 300, 'Black', 'Rubber', 1150000, 880000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '210.22.42.20.03.001', 'Seamaster Diver 300M Co-Axial 42mm', null, 'Seamaster', 'Steel/Sedna Gold', 42.0, 'automatic', '8800', 300, 'Blue', 'Steel/Gold', 1250000, 960000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '210.62.42.20.01.001', 'Seamaster Diver 300M Co-Axial 42mm', null, 'Seamaster', '18k Sedna Gold', 42.0, 'automatic', '8801', 300, 'Black', 'Rubber', 2200000, 1650000, -0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '210.92.42.20.01.001', 'Seamaster Diver 300M Co-Axial 42mm', null, 'Seamaster', 'Titanium', 42.0, 'automatic', '8806', 300, 'Black', 'Titanium', 850000, 650000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '210.30.42.20.06.001', 'Seamaster Diver 300M Co-Axial 42mm', null, 'Seamaster', 'Stainless Steel', 42.0, 'automatic', '8800', 300, 'Green', 'Rubber', 630000, 510000, 0.8, null, null),
  -- ── Seamaster Planet Ocean 600M 43.5mm ──
  ('b0000000-0000-0000-0000-000000000004', '215.30.44.21.01.001', 'Seamaster Planet Ocean 600M 43.5mm', null, 'Seamaster', 'Stainless Steel', 43.5, 'automatic', '8900', 600, 'Black', 'Stainless Steel', 860000, 650000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '215.30.44.21.03.001', 'Seamaster Planet Ocean 600M 43.5mm', null, 'Seamaster', 'Stainless Steel', 43.5, 'automatic', '8900', 600, 'Blue', 'Stainless Steel', 860000, 660000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '215.32.44.21.01.001', 'Seamaster Planet Ocean 600M 43.5mm', null, 'Seamaster', 'Stainless Steel', 43.5, 'automatic', '8900', 600, 'Black', 'Rubber', 780000, 600000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '215.32.44.21.04.001', 'Seamaster Planet Ocean 600M 43.5mm', 'Orange Planet Ocean', 'Seamaster', 'Stainless Steel', 43.5, 'automatic', '8900', 600, 'Orange', 'Rubber', 780000, 620000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000004', '215.20.44.21.01.001', 'Seamaster Planet Ocean 600M 43.5mm', null, 'Seamaster', 'Steel/Sedna Gold', 43.5, 'automatic', '8901', 600, 'Black', 'Steel/Gold', 1550000, 1150000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '215.92.44.21.99.001', 'Seamaster Planet Ocean 600M 43.5mm', 'Deep Black', 'Seamaster', 'Ceramic', 43.5, 'automatic', '8906', 600, 'Black', 'Rubber', 1200000, 900000, 0.4, null, null),
  -- ── Seamaster Planet Ocean 600M 39.5mm ──
  ('b0000000-0000-0000-0000-000000000004', '215.30.40.20.01.001', 'Seamaster Planet Ocean 600M 39.5mm', null, 'Seamaster', 'Stainless Steel', 39.5, 'automatic', '8800', 600, 'Black', 'Stainless Steel', 800000, 610000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '215.30.40.20.03.001', 'Seamaster Planet Ocean 600M 39.5mm', null, 'Seamaster', 'Stainless Steel', 39.5, 'automatic', '8800', 600, 'Blue', 'Stainless Steel', 800000, 620000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '215.32.40.20.04.001', 'Seamaster Planet Ocean 600M 39.5mm', null, 'Seamaster', 'Stainless Steel', 39.5, 'automatic', '8800', 600, 'Orange', 'Rubber', 720000, 560000, 0.3, null, null),
  -- ── Seamaster 300 Heritage 41mm ──
  ('b0000000-0000-0000-0000-000000000004', '234.30.41.21.01.001', 'Seamaster 300 Co-Axial Master Chronometer 41mm', null, 'Seamaster', 'Stainless Steel', 41.0, 'automatic', '8912', 300, 'Black', 'Stainless Steel', 820000, 640000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '234.30.41.21.03.001', 'Seamaster 300 Co-Axial Master Chronometer 41mm', null, 'Seamaster', 'Stainless Steel', 41.0, 'automatic', '8912', 300, 'Blue', 'Stainless Steel', 820000, 650000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000004', '234.32.41.21.01.001', 'Seamaster 300 Co-Axial Master Chronometer 41mm', null, 'Seamaster', 'Stainless Steel', 41.0, 'automatic', '8912', 300, 'Black', 'Fabric', 770000, 610000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '234.20.41.21.01.001', 'Seamaster 300 Co-Axial Master Chronometer 41mm', null, 'Seamaster', 'Steel/Bronze Gold', 41.0, 'automatic', '8913', 300, 'Black', 'Steel/Gold', 1100000, 850000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '234.92.41.21.10.001', 'Seamaster 300 Co-Axial Master Chronometer 41mm', null, 'Seamaster', 'Titanium', 41.0, 'automatic', '8912', 300, 'Green', 'Titanium', 900000, 700000, 0.7, null, null),
  -- ══════════════════════════════════════════════════════════════
  -- ADDITIONAL SPEEDMASTER variants
  -- ══════════════════════════════════════════════════════════════
  ('b0000000-0000-0000-0000-000000000004', '310.32.42.50.01.002', 'Speedmaster Moonwatch Professional', null, 'Speedmaster', 'Stainless Steel', 42.0, 'manual', '3861', 50, 'Black', 'Leather', 660000, 530000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '310.30.42.50.01.002', 'Speedmaster Moonwatch Professional', null, 'Speedmaster', 'Stainless Steel', 42.0, 'manual', '3861', 50, 'Black', 'Stainless Steel', 750000, 600000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000004', '310.62.42.50.01.001', 'Speedmaster Moonwatch Professional', null, 'Speedmaster', '18k Sedna Gold', 42.0, 'manual', '3861', 50, 'Black', '18k Sedna Gold', 3700000, 2800000, -0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '310.60.42.50.01.001', 'Speedmaster Moonwatch Professional', null, 'Speedmaster', '18k Canopus Gold', 42.0, 'manual', '3861', 50, 'Black', '18k Canopus Gold', 4200000, 3200000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '310.63.42.50.01.001', 'Speedmaster Moonwatch Professional', null, 'Speedmaster', '18k Sedna Gold', 42.0, 'manual', '3861', 50, 'Brown', 'Leather', 3500000, 2650000, -0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '304.30.44.52.01.001', 'Speedmaster Racing Co-Axial Master Chronometer 44.25mm', null, 'Speedmaster', 'Stainless Steel', 44.25, 'automatic', '9900', 50, 'Black', 'Stainless Steel', 880000, 680000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '304.32.44.52.01.001', 'Speedmaster Racing Co-Axial Master Chronometer 44.25mm', null, 'Speedmaster', 'Stainless Steel', 44.25, 'automatic', '9900', 50, 'Black', 'Rubber', 830000, 640000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '329.30.43.51.01.001', 'Speedmaster Super Racing Co-Axial Master Chronometer 44.25mm', null, 'Speedmaster', 'Stainless Steel', 44.25, 'automatic', '9920', 50, 'Black', 'Stainless Steel', 1120000, 850000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '329.32.43.51.01.001', 'Speedmaster Super Racing Co-Axial Master Chronometer 44.25mm', null, 'Speedmaster', 'Stainless Steel', 44.25, 'automatic', '9920', 50, 'Black', 'Rubber', 1050000, 800000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '329.30.43.51.10.001', 'Speedmaster Super Racing Co-Axial Master Chronometer 44.25mm', null, 'Speedmaster', 'Stainless Steel', 44.25, 'automatic', '9920', 50, 'Green', 'Stainless Steel', 1120000, 870000, 0.7, null, null),
  ('b0000000-0000-0000-0000-000000000004', '324.30.38.50.01.001', 'Speedmaster 38 Co-Axial Chronograph 38mm', null, 'Speedmaster', 'Stainless Steel', 38.0, 'automatic', '3330', 100, 'Black', 'Stainless Steel', 680000, 520000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000004', '324.30.38.50.03.001', 'Speedmaster 38 Co-Axial Chronograph 38mm', null, 'Speedmaster', 'Stainless Steel', 38.0, 'automatic', '3330', 100, 'Blue', 'Stainless Steel', 680000, 530000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000004', '324.30.38.50.06.001', 'Speedmaster 38 Co-Axial Chronograph 38mm', null, 'Speedmaster', 'Stainless Steel', 38.0, 'automatic', '3330', 100, 'Green', 'Stainless Steel', 680000, 540000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000004', '324.23.38.50.02.001', 'Speedmaster 38 Co-Axial Chronograph 38mm', null, 'Speedmaster', 'Steel/Sedna Gold', 38.0, 'automatic', '3330', 100, 'Cappuccino', 'Steel/Gold', 1000000, 750000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000004', '324.28.38.50.02.001', 'Speedmaster 38 Co-Axial Chronograph 38mm', null, 'Speedmaster', 'Steel/Sedna Gold', 38.0, 'automatic', '3330', 100, 'Champagne/Diamonds', 'Rubber', 1100000, 820000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000004', '522.30.42.30.04.001', 'Speedmaster Chronoscope Co-Axial Master Chronometer 43mm', null, 'Speedmaster', 'Stainless Steel', 43.0, 'automatic', '9908', 50, 'Blue', 'Stainless Steel', 1020000, 780000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000004', '522.32.43.51.06.001', 'Speedmaster Chronoscope Co-Axial Master Chronometer 43mm', null, 'Speedmaster', 'Stainless Steel', 43.0, 'automatic', '9908', 50, 'Green', 'Leather', 960000, 740000, 0.6, null, null);

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

-- ============================================================
-- EXPANSION: Cartier, TAG Heuer, IWC, JLC, Patek, Breitling,
-- Richard Mille, Tissot, Hublot, Blancpain
-- ============================================================

-- ══════════════════════════════════════════════════════════════
-- CARTIER EXPANSION (brand 05)
-- ══════════════════════════════════════════════════════════════
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  -- Santos de Cartier additional
  ('b0000000-0000-0000-0000-000000000005', 'WSSA0029', 'Santos de Cartier Medium', null, 'Santos', 'Stainless Steel', 35.1, 'automatic', '1847 MC', 100, 'Blue Gradient', 'Steel/Leather', 745000, 650000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSSA0047', 'Santos de Cartier Large', null, 'Santos', 'Stainless Steel', 39.8, 'automatic', '1847 MC', 100, 'Green', 'Steel/Leather', 820000, 750000, 0.8, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'W2SA0016', 'Santos de Cartier Large', null, 'Santos', 'Steel/Yellow Gold', 39.8, 'automatic', '1847 MC', 100, 'Silver', 'Steel/Gold/Leather', 1290000, 1050000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'W2SA0017', 'Santos de Cartier Medium', null, 'Santos', 'Steel/Yellow Gold', 35.1, 'automatic', '1847 MC', 100, 'Silver', 'Steel/Gold/Leather', 1180000, 960000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGSA0061', 'Santos de Cartier Large', null, 'Santos', '18k Rose Gold', 39.8, 'automatic', '1847 MC', 100, 'Grey', 'Leather', 2570000, 2100000, -0.2, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'CRWSSA0065', 'Santos de Cartier Skeleton Large', null, 'Santos', 'Stainless Steel', 39.8, 'automatic', '9611 MC', 100, 'Skeleton', 'Steel/Leather', 1230000, 1000000, 0.6, null, null),
  -- Tank additional
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0065', 'Tank Must Large', null, 'Tank', 'Stainless Steel', 33.7, 'automatic', '1847 MC', 30, 'White', 'Leather', 400000, 350000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0066', 'Tank Must Large', null, 'Tank', 'Stainless Steel', 33.7, 'automatic', '1847 MC', 30, 'Blue', 'Leather', 400000, 360000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0041', 'Tank Must Small', null, 'Tank', 'Stainless Steel', 29.5, 'quartz', null, 30, 'White', 'Leather', 310000, 270000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0042', 'Tank Must Small', null, 'Tank', 'Stainless Steel', 29.5, 'quartz', null, 30, 'Red', 'Leather', 310000, 275000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSTA0052', 'Tank Must Small', null, 'Tank', 'Stainless Steel', 29.5, 'quartz', null, 30, 'Green', 'Leather', 310000, 280000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'W5200027', 'Tank Solo Large', null, 'Tank', 'Stainless Steel', 34.8, 'automatic', '049', 30, 'Silver', 'Leather', 370000, 320000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGTA0089', 'Tank Française Medium', null, 'Tank', 'Stainless Steel', 32.0, 'automatic', '1847 MC', 30, 'Silver', 'Stainless Steel', 530000, 460000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGTA0090', 'Tank Française Medium', null, 'Tank', 'Steel/Yellow Gold', 32.0, 'automatic', '1847 MC', 30, 'Silver', 'Steel/Gold', 850000, 720000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WGTA0110', 'Tank Française Small', null, 'Tank', 'Stainless Steel', 25.0, 'quartz', null, 30, 'Silver', 'Stainless Steel', 410000, 360000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WJTA0034', 'Tank Louis Cartier Large', null, 'Tank', '18k Rose Gold', 33.7, 'manual', '8971 MC', 30, 'Silver', 'Leather', 1680000, 1400000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WJTA0035', 'Tank Louis Cartier Small', null, 'Tank', '18k Rose Gold', 29.5, 'quartz', null, 30, 'Silver', 'Leather', 1250000, 1050000, 0.0, null, null),
  -- Ballon Bleu additional
  ('b0000000-0000-0000-0000-000000000005', 'WSBB0046', 'Ballon Bleu de Cartier 40mm', null, 'Ballon Bleu', 'Stainless Steel', 40.0, 'automatic', '1847 MC', 30, 'Silver', 'Stainless Steel', 740000, 600000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSBB0025', 'Ballon Bleu de Cartier 36mm', null, 'Ballon Bleu', 'Stainless Steel', 36.0, 'automatic', '076', 30, 'Silver', 'Stainless Steel', 650000, 530000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSBB0049', 'Ballon Bleu de Cartier 33mm', null, 'Ballon Bleu', 'Stainless Steel', 33.0, 'automatic', '076', 30, 'Silver', 'Stainless Steel', 580000, 470000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'W6920084', 'Ballon Bleu de Cartier 36mm', null, 'Ballon Bleu', 'Steel/Rose Gold', 36.0, 'automatic', '076', 30, 'Silver', 'Steel/Gold', 1060000, 860000, 0.1, null, null),
  -- Pasha additional
  ('b0000000-0000-0000-0000-000000000005', 'WSPA0009', 'Pasha de Cartier 41mm', null, 'Pasha', 'Stainless Steel', 41.0, 'automatic', '1847 MC', 100, 'Blue', 'Leather/Steel', 810000, 660000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSPA0010', 'Pasha de Cartier 41mm', null, 'Pasha', 'Stainless Steel', 41.0, 'automatic', '1847 MC', 100, 'Grey', 'Leather/Steel', 810000, 650000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSPA0039', 'Pasha de Cartier 41mm Skeleton', null, 'Pasha', 'Stainless Steel', 41.0, 'automatic', '9624 MC', 100, 'Skeleton', 'Stainless Steel', 1090000, 880000, 0.5, null, null),
  -- Ronde / Clé additional
  ('b0000000-0000-0000-0000-000000000005', 'WSRN0031', 'Ronde Must de Cartier 40mm', null, 'Ronde', 'Stainless Steel', 40.0, 'automatic', '1847 MC', 30, 'Silver', 'Leather', 400000, 340000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSRN0032', 'Ronde Must de Cartier 36mm', null, 'Ronde', 'Stainless Steel', 36.0, 'quartz', null, 30, 'Silver', 'Leather', 320000, 270000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WSCL0021', 'Clé de Cartier 35mm', null, 'Clé', 'Stainless Steel', 35.0, 'automatic', '1847 MC', 30, 'Silver', 'Stainless Steel', 600000, 480000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'WJCL0043', 'Clé de Cartier 40mm', null, 'Clé', '18k Rose Gold', 40.0, 'automatic', '1847 MC', 30, 'Silver', 'Leather', 2050000, 1650000, -0.1, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'CRWHBA0026', 'Baignoire Small', null, 'Baignoire', '18k Rose Gold', 32.0, 'quartz', null, 30, 'Silver', 'Leather', 1250000, 1000000, 0.0, null, null),
  ('b0000000-0000-0000-0000-000000000005', 'CRWHBA0027', 'Baignoire Medium', null, 'Baignoire', '18k Rose Gold', 36.0, 'automatic', '1847 MC', 30, 'Silver', 'Leather', 2150000, 1750000, -0.1, null, null);

-- ══════════════════════════════════════════════════════════════
-- TAG HEUER EXPANSION (brand 06)
-- ══════════════════════════════════════════════════════════════
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  ('b0000000-0000-0000-0000-000000000006', 'CBN2A1B.BA0643', 'Monaco Chronograph', 'Gulf', 'Monaco', 'Stainless Steel', 39.0, 'automatic', 'Heuer 02', 100, 'Blue/Orange', 'Stainless Steel', 775000, 600000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBN2012.BA0640', 'Monaco Chronograph', null, 'Monaco', 'Stainless Steel', 39.0, 'automatic', 'Heuer 02', 100, 'Blue', 'Stainless Steel', 700000, 550000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBN2013.FC6503', 'Monaco Chronograph', null, 'Monaco', 'Stainless Steel', 39.0, 'automatic', 'Heuer 02', 100, 'Green', 'Leather', 680000, 540000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CBG2A1Z.FT6157', 'Carrera Chronograph 42mm', null, 'Carrera', 'Stainless Steel', 42.0, 'automatic', 'Heuer 02', 100, 'Black', 'Rubber', 625000, 480000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CBN2A10.BA0643', 'Carrera Chronograph 42mm', 'Panda', 'Carrera', 'Stainless Steel', 42.0, 'automatic', 'Heuer 02', 100, 'White/Black', 'Stainless Steel', 625000, 500000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CBN2A1A.BA0643', 'Carrera Chronograph 42mm', null, 'Carrera', 'Stainless Steel', 42.0, 'automatic', 'Heuer 02', 100, 'Blue', 'Stainless Steel', 625000, 490000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CBS2210.FC6534', 'Carrera Chronograph Glassbox 39mm', null, 'Carrera', 'Stainless Steel', 39.0, 'automatic', 'Heuer 02', 100, 'Silver/Blue', 'Leather', 625000, 500000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CBS2212.FC6535', 'Carrera Chronograph Glassbox 39mm', null, 'Carrera', 'Stainless Steel', 39.0, 'automatic', 'Heuer 02', 100, 'Green', 'Leather', 625000, 510000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBN2110.BA0639', 'Carrera Three-Hands 39mm', null, 'Carrera', 'Stainless Steel', 39.0, 'automatic', 'TH20-00', 100, 'Blue', 'Stainless Steel', 345000, 270000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBN2112.BA0639', 'Carrera Three-Hands 39mm', null, 'Carrera', 'Stainless Steel', 39.0, 'automatic', 'TH20-00', 100, 'Green', 'Stainless Steel', 345000, 275000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBN2113.FC6504', 'Carrera Three-Hands 39mm', null, 'Carrera', 'Stainless Steel', 39.0, 'automatic', 'TH20-00', 100, 'Silver', 'Leather', 315000, 250000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBP2110.BA0627', 'Aquaracer Professional 300 43mm', null, 'Aquaracer', 'Stainless Steel', 43.0, 'automatic', 'TH30-00', 300, 'Black', 'Stainless Steel', 325000, 260000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBP2111.BA0627', 'Aquaracer Professional 300 43mm', null, 'Aquaracer', 'Stainless Steel', 43.0, 'automatic', 'TH30-00', 300, 'Blue', 'Stainless Steel', 325000, 265000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBP2115.BA0627', 'Aquaracer Professional 300 43mm', null, 'Aquaracer', 'Stainless Steel', 43.0, 'automatic', 'TH30-00', 300, 'Green', 'Stainless Steel', 325000, 270000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBP201B.BA0632', 'Aquaracer Professional 300 GMT 43mm', null, 'Aquaracer', 'Stainless Steel', 43.0, 'automatic', 'TH31-00', 300, 'Black/Blue', 'Stainless Steel', 375000, 300000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBP5A8A.BF0619', 'Aquaracer Professional 1000 Superdiver', null, 'Aquaracer', 'Titanium', 45.0, 'automatic', 'TH30-00', 1000, 'Black', 'Rubber', 625000, 500000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CAZ1010.BA0842', 'Formula 1 Chronograph 43mm', null, 'Formula 1', 'Stainless Steel', 43.0, 'quartz', null, 200, 'Black', 'Stainless Steel', 175000, 140000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CAZ1011.BA0842', 'Formula 1 Chronograph 43mm', null, 'Formula 1', 'Stainless Steel', 43.0, 'quartz', null, 200, 'Blue', 'Stainless Steel', 175000, 142000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WAZ1110.BA0875', 'Formula 1 41mm', null, 'Formula 1', 'Stainless Steel', 41.0, 'quartz', null, 200, 'Black', 'Stainless Steel', 130000, 105000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'CBE5A10.FC6233', 'Autavia Chronograph Flyback', null, 'Autavia', 'Stainless Steel', 42.0, 'automatic', 'Heuer 02 Flyback', 100, 'Black', 'Leather', 625000, 500000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBE5112.FC8266', 'Autavia GMT', null, 'Autavia', 'Stainless Steel', 42.0, 'automatic', 'TH31-00', 100, 'Green', 'Leather', 375000, 300000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'WBE5116.EB0173', 'Autavia GMT', null, 'Autavia', 'Stainless Steel', 42.0, 'automatic', 'TH31-00', 100, 'Black', 'Rubber', 345000, 280000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'SBR8010.BT6290', 'Connected Calibre E4 45mm', null, 'Connected', 'Titanium', 45.0, 'quartz', null, 50, 'Black LCD', 'Rubber', 195000, 130000, -1.0, null, null),
  ('b0000000-0000-0000-0000-000000000006', 'SBR8A10.BT6290', 'Connected Calibre E4 42mm', null, 'Connected', 'Stainless Steel', 42.0, 'quartz', null, 50, 'Black LCD', 'Rubber', 180000, 120000, -1.0, null, null);

-- ══════════════════════════════════════════════════════════════
-- IWC EXPANSION (brand 07)
-- ══════════════════════════════════════════════════════════════
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  ('b0000000-0000-0000-0000-000000000007', 'IW328207', 'Pilot''s Watch Mark XX', null, 'Pilot', 'Stainless Steel', 40.0, 'automatic', '32111', 100, 'Blue', 'Leather', 560000, 450000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000007', 'IW328208', 'Pilot''s Watch Mark XX', null, 'Pilot', 'Stainless Steel', 40.0, 'automatic', '32111', 100, 'Green', 'Leather', 560000, 460000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000007', 'IW328210', 'Pilot''s Watch Mark XX', null, 'Pilot', 'Stainless Steel', 40.0, 'automatic', '32111', 100, 'Silver', 'Stainless Steel', 620000, 500000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000007', 'IW329303', 'Pilot''s Watch Chronograph 41', null, 'Pilot', 'Stainless Steel', 41.0, 'automatic', '69385', 100, 'Green', 'Leather', 760000, 610000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000007', 'IW329306', 'Pilot''s Watch Chronograph 41', null, 'Pilot', 'Stainless Steel', 41.0, 'automatic', '69385', 100, 'Blue', 'Stainless Steel', 820000, 660000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000007', 'IW329401', 'Pilot''s Watch Chronograph Top Gun Ceratanium', null, 'Pilot', 'Ceratanium', 44.5, 'automatic', '69380', 100, 'Black', 'Rubber', 1350000, 1050000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000007', 'IW501012', 'Big Pilot''s Watch 43', 'Le Petit Prince', 'Pilot', 'Stainless Steel', 43.0, 'automatic', '82100', 100, 'Blue', 'Leather', 1450000, 1150000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000007', 'IW501015', 'Big Pilot''s Watch 43', null, 'Pilot', 'Stainless Steel', 43.0, 'automatic', '82100', 100, 'Black', 'Stainless Steel', 1560000, 1250000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000007', 'IW501017', 'Big Pilot''s Watch 43', null, 'Pilot', 'Stainless Steel', 43.0, 'automatic', '82100', 100, 'Green', 'Leather', 1450000, 1170000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000007', 'IW501014', 'Big Pilot''s Watch 43', null, 'Pilot', 'Titanium', 43.0, 'automatic', '82100', 100, 'Blue', 'Leather', 1550000, 1250000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000007', 'IW503601', 'Portugieser Automatic 42', null, 'Portugieser', 'Stainless Steel', 42.3, 'automatic', '82200', 30, 'Blue', 'Leather', 1050000, 850000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000007', 'IW503602', 'Portugieser Automatic 42', null, 'Portugieser', 'Stainless Steel', 42.3, 'automatic', '82200', 30, 'Silver', 'Leather', 1050000, 840000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000007', 'IW503607', 'Portugieser Automatic 42', null, 'Portugieser', 'Stainless Steel', 42.3, 'automatic', '82200', 30, 'Green', 'Leather', 1050000, 860000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000007', 'IW371617', 'Portugieser Chronograph', null, 'Portugieser', 'Stainless Steel', 41.0, 'automatic', '69355', 30, 'Blue', 'Leather', 970000, 780000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000007', 'IW371620', 'Portugieser Chronograph', null, 'Portugieser', 'Stainless Steel', 41.0, 'automatic', '69355', 30, 'Green', 'Leather', 970000, 790000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000007', 'IW503714', 'Portugieser Perpetual Calendar 42', null, 'Portugieser', 'Stainless Steel', 42.4, 'automatic', '82650', 30, 'Blue', 'Leather', 3400000, 2700000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000007', 'IW357001', 'Portofino Automatic 40', null, 'Portofino', 'Stainless Steel', 40.0, 'automatic', '35111', 30, 'Silver', 'Leather', 560000, 420000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000007', 'IW357002', 'Portofino Automatic 40', null, 'Portofino', 'Stainless Steel', 40.0, 'automatic', '35111', 30, 'Blue', 'Leather', 560000, 430000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000007', 'IW357010', 'Portofino Automatic 40', null, 'Portofino', 'Stainless Steel', 40.0, 'automatic', '35111', 30, 'Green', 'Leather', 560000, 440000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000007', 'IW357401', 'Portofino Chronograph 39', null, 'Portofino', 'Stainless Steel', 39.0, 'automatic', '69355', 30, 'Silver', 'Leather', 680000, 530000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000007', 'IW323906', 'Ingenieur Automatic 40', null, 'Ingenieur', 'Stainless Steel', 40.0, 'automatic', '32111', 100, 'Black', 'Stainless Steel', 1200000, 960000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000007', 'IW323907', 'Ingenieur Automatic 40', null, 'Ingenieur', 'Titanium', 40.0, 'automatic', '32111', 100, 'Black', 'Titanium', 1400000, 1100000, 0.4, null, null);

-- ══════════════════════════════════════════════════════════════
-- JLC EXPANSION (brand 08)
-- ══════════════════════════════════════════════════════════════
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  ('b0000000-0000-0000-0000-000000000008', 'Q3848420', 'Reverso Classic Medium Thin', null, 'Reverso', 'Stainless Steel', 40.1, 'manual', '822/2', 30, 'Silver', 'Leather', 710000, 580000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000008', 'Q3858520', 'Reverso Classic Large', null, 'Reverso', 'Stainless Steel', 45.6, 'manual', '822/2', 30, 'Silver', 'Leather', 750000, 610000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000008', 'Q3842520', 'Reverso Classic Large Duoface', null, 'Reverso', 'Stainless Steel', 47.0, 'manual', '854A/2', 30, 'Blue/Silver', 'Leather', 1150000, 900000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000008', 'Q398258J', 'Reverso Tribute Chronograph', null, 'Reverso', 'Stainless Steel', 49.4, 'manual', '860', 30, 'Blue', 'Leather', 2350000, 1850000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000008', 'Q3978480', 'Reverso Tribute Monoface', null, 'Reverso', 'Stainless Steel', 45.6, 'manual', '822/2', 30, 'Blue', 'Leather', 870000, 700000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000008', 'Q3978430', 'Reverso Tribute Monoface', null, 'Reverso', 'Stainless Steel', 45.6, 'manual', '822/2', 30, 'Green', 'Leather', 870000, 710000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000008', 'Q3978490', 'Reverso Tribute Monoface', null, 'Reverso', 'Stainless Steel', 45.6, 'manual', '822/2', 30, 'Silver', 'Leather', 870000, 690000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000008', 'Q2438520', 'Reverso Tribute Duoface', null, 'Reverso', 'Stainless Steel', 47.0, 'manual', '854A/2', 30, 'Blue/Silver', 'Leather', 1250000, 1000000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000008', 'Q1548530', 'Master Ultra Thin Moon 39mm', null, 'Master', 'Stainless Steel', 39.0, 'automatic', '925/1', 50, 'Blue', 'Leather', 1200000, 950000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000008', 'Q1548420', 'Master Ultra Thin Moon 39mm', null, 'Master', 'Stainless Steel', 39.0, 'automatic', '925/1', 50, 'Silver', 'Leather', 1200000, 940000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000008', 'Q1368430', 'Master Ultra Thin Date 39mm', null, 'Master', 'Stainless Steel', 39.0, 'automatic', '899/1', 50, 'Silver', 'Leather', 870000, 700000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000008', 'Q1368420', 'Master Ultra Thin Date 39mm', null, 'Master', 'Stainless Steel', 39.0, 'automatic', '899/1', 50, 'Blue', 'Leather', 870000, 710000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000008', 'Q1378480', 'Master Control Date 40mm', null, 'Master', 'Stainless Steel', 40.0, 'automatic', '899/1', 50, 'Silver', 'Leather', 770000, 620000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000008', 'Q1378420', 'Master Control Date 40mm', null, 'Master', 'Stainless Steel', 40.0, 'automatic', '899/1', 50, 'Blue', 'Leather', 770000, 630000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000008', 'Q4128420', 'Master Control Chronograph Calendar', null, 'Master', 'Stainless Steel', 40.0, 'automatic', '759', 50, 'Silver', 'Leather', 1350000, 1050000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000008', 'Q9068670', 'Polaris Automatic 41mm', null, 'Polaris', 'Stainless Steel', 41.0, 'automatic', '898E/1', 100, 'Black', 'Stainless Steel', 900000, 700000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000008', 'Q9068180', 'Polaris Automatic 41mm', null, 'Polaris', 'Stainless Steel', 41.0, 'automatic', '898E/1', 100, 'Blue', 'Leather', 830000, 650000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000008', 'Q9028170', 'Polaris Chronograph 42mm', null, 'Polaris', 'Stainless Steel', 42.0, 'automatic', '751H', 100, 'Black', 'Leather', 1250000, 980000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000008', 'Q9028480', 'Polaris Chronograph World Time 44mm', null, 'Polaris', 'Stainless Steel', 44.0, 'automatic', '752', 100, 'Blue', 'Stainless Steel', 1950000, 1500000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000008', 'Q3442420', 'Rendez-Vous Night & Day Medium', null, 'Rendez-Vous', 'Stainless Steel', 34.0, 'automatic', '898A', 50, 'Silver', 'Leather', 810000, 640000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000008', 'Q3442530', 'Rendez-Vous Night & Day Medium', null, 'Rendez-Vous', 'Stainless Steel', 34.0, 'automatic', '898A', 50, 'Blue', 'Leather', 810000, 650000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000008', 'Q3468421', 'Rendez-Vous Dazzling', null, 'Rendez-Vous', '18k Rose Gold', 36.0, 'automatic', '898A', 50, 'Silver/Diamonds', 'Leather', 3200000, 2500000, 0.1, null, null);

-- ══════════════════════════════════════════════════════════════
-- PATEK PHILIPPE EXPANSION (brand 02)
-- ══════════════════════════════════════════════════════════════
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  -- Twenty~4
  ('b0000000-0000-0000-0000-000000000002', '7300/1200A-001', 'Twenty~4 Automatic 36mm', null, 'Twenty~4', 'Stainless Steel', 36.0, 'automatic', '324 S C', 30, 'Grey-Blue', 'Stainless Steel', 2940000, 2500000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000002', '7300/1200A-010', 'Twenty~4 Automatic 36mm', null, 'Twenty~4', 'Stainless Steel', 36.0, 'automatic', '324 S C', 30, 'White', 'Stainless Steel', 2940000, 2450000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000002', '7300/1200R-001', 'Twenty~4 Automatic 36mm', null, 'Twenty~4', '18k Rose Gold', 36.0, 'automatic', '324 S C', 30, 'Brown', '18k Rose Gold', 5340000, 4200000, -0.2, null, null),
  ('b0000000-0000-0000-0000-000000000002', '4910/1200A-001', 'Twenty~4 Small Model', null, 'Twenty~4', 'Stainless Steel', 25.1, 'quartz', 'E15', 30, 'Grey-Blue', 'Stainless Steel', 1820000, 1500000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000002', '4910/1200A-010', 'Twenty~4 Small Model', null, 'Twenty~4', 'Stainless Steel', 25.1, 'quartz', 'E15', 30, 'Blue Sunburst', 'Stainless Steel', 1820000, 1520000, 0.3, null, null),
  -- Golden Ellipse
  ('b0000000-0000-0000-0000-000000000002', '5738R-001', 'Golden Ellipse', null, 'Golden Ellipse', '18k Rose Gold', 34.5, 'automatic', '240', 30, 'Blue', 'Leather', 3440000, 2800000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000002', '3738/100G-012', 'Golden Ellipse', null, 'Golden Ellipse', '18k White Gold', 31.1, 'manual', '215 PS', 30, 'Blue', 'Leather', 2780000, 2200000, 0.2, null, null),
  -- Additional Calatrava
  ('b0000000-0000-0000-0000-000000000002', '5227R-001', 'Calatrava', null, 'Calatrava', '18k Rose Gold', 39.0, 'automatic', '324 SC', 30, 'White', 'Leather', 3850000, 3100000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000002', '5227G-010', 'Calatrava', null, 'Calatrava', '18k White Gold', 39.0, 'automatic', '324 SC', 30, 'Charcoal Grey', 'Leather', 3950000, 3200000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000002', '6007G-001', 'Calatrava', null, 'Calatrava', '18k White Gold', 40.0, 'automatic', '324 SC', 30, 'Blue', 'Leather', 3600000, 2900000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000002', '5226G-001', 'Calatrava', null, 'Calatrava', '18k White Gold', 40.0, 'automatic', '26-330 SC', 30, 'Charcoal Grey', 'Leather', 4050000, 3300000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000002', '7234G-001', 'Calatrava Pilot Travel Time', null, 'Calatrava', '18k White Gold', 37.5, 'automatic', '324 S C FUS', 30, 'Blue', 'Leather', 5250000, 4100000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000002', '7234R-001', 'Calatrava Pilot Travel Time', null, 'Calatrava', '18k Rose Gold', 37.5, 'automatic', '324 S C FUS', 30, 'Brown', 'Leather', 5250000, 4050000, 0.2, null, null),
  -- Additional Complications
  ('b0000000-0000-0000-0000-000000000002', '5205R-001', 'Annual Calendar', null, 'Complications', '18k Rose Gold', 40.0, 'automatic', '324 S QA LU 24H', 30, 'Grey', 'Leather', 5190000, 4100000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000002', '5205G-013', 'Annual Calendar', null, 'Complications', '18k White Gold', 40.0, 'automatic', '324 S QA LU 24H', 30, 'Blue', 'Leather', 5300000, 4200000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000002', '5905R-001', 'Annual Calendar Chronograph', null, 'Complications', '18k Rose Gold', 42.0, 'automatic', 'CH 28-520 QA 24H', 30, 'Black', 'Leather', 8340000, 6500000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000002', '5235/50R-001', 'Annual Calendar Regulator', null, 'Complications', '18k Rose Gold', 40.5, 'automatic', '31-260 REG QA', 30, 'Charcoal Grey', 'Leather', 6200000, 4900000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000002', '5524R-001', 'Calatrava Pilot Travel Time', null, 'Complications', '18k Rose Gold', 42.0, 'automatic', '324 S C FUS', 60, 'Brown', 'Leather', 5780000, 4500000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000002', '5524G-001', 'Calatrava Pilot Travel Time', null, 'Complications', '18k White Gold', 42.0, 'automatic', '324 S C FUS', 60, 'Blue', 'Leather', 5780000, 4600000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000002', '4947R-001', 'Complications Ladies Annual Calendar', null, 'Complications', '18k Rose Gold', 38.0, 'automatic', '324 S QA LU 24H', 30, 'Cream', 'Leather', 5650000, 4400000, 0.1, null, null),
  -- Additional Grand Complications
  ('b0000000-0000-0000-0000-000000000002', '5327G-001', 'Grand Complications Perpetual Calendar', null, 'Grand Complications', '18k White Gold', 39.0, 'automatic', '240 Q', 30, 'Silver', 'Leather', 9800000, 7800000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000002', '5327R-001', 'Grand Complications Perpetual Calendar', null, 'Grand Complications', '18k Rose Gold', 39.0, 'automatic', '240 Q', 30, 'Cream', 'Leather', 9800000, 7700000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000002', '5236P-001', 'Grand Complications In-Line Perpetual Calendar', null, 'Grand Complications', '950 Platinum', 41.3, 'automatic', '31-260 PS QL', 30, 'Black', 'Leather', 14500000, 11000000, 0.5, null, null);

-- ══════════════════════════════════════════════════════════════
-- BREITLING EXPANSION (brand 10)
-- ══════════════════════════════════════════════════════════════
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  ('b0000000-0000-0000-0000-000000000010', 'AB0138211B1A1', 'Navitimer B01 Chronograph 43', null, 'Navitimer', 'Stainless Steel', 43.0, 'automatic', 'B01', 30, 'Blue', 'Stainless Steel', 1020000, 780000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'AB0138241G1A1', 'Navitimer B01 Chronograph 43', null, 'Navitimer', 'Stainless Steel', 43.0, 'automatic', 'B01', 30, 'Green', 'Stainless Steel', 1020000, 790000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'AB0138211C1A1', 'Navitimer B01 Chronograph 43', null, 'Navitimer', 'Stainless Steel', 43.0, 'automatic', 'B01', 30, 'Copper', 'Stainless Steel', 1020000, 800000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'AB01171A1G1A1', 'Navitimer B01 Chronograph 41', null, 'Navitimer', 'Stainless Steel', 41.0, 'automatic', 'B01', 30, 'Green', 'Stainless Steel', 990000, 760000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'A17377211B1A1', 'Superocean Automatic 44', null, 'Superocean', 'Stainless Steel', 44.0, 'automatic', 'B20', 300, 'Blue', 'Stainless Steel', 560000, 430000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'A17377211C1A1', 'Superocean Automatic 44', null, 'Superocean', 'Stainless Steel', 44.0, 'automatic', 'B20', 300, 'Orange', 'Stainless Steel', 560000, 440000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'A17376211B1A1', 'Superocean Automatic 42', null, 'Superocean', 'Stainless Steel', 42.0, 'automatic', 'B20', 300, 'Blue', 'Stainless Steel', 520000, 400000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'A17375211B1A1', 'Superocean Automatic 36', null, 'Superocean', 'Stainless Steel', 36.0, 'automatic', 'B37', 300, 'Blue', 'Stainless Steel', 490000, 380000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'AB0137211B1P1', 'Chronomat B01 42', null, 'Chronomat', 'Stainless Steel', 42.0, 'automatic', 'B01', 200, 'Blue', 'Rubber', 830000, 630000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'AB0137211C1A1', 'Chronomat B01 42', null, 'Chronomat', 'Stainless Steel', 42.0, 'automatic', 'B01', 200, 'Copper', 'Stainless Steel', 930000, 710000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'A10380101A1A1', 'Chronomat Automatic 36', null, 'Chronomat', 'Stainless Steel', 36.0, 'automatic', 'B10', 100, 'White', 'Stainless Steel', 580000, 450000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'A10380611C1A1', 'Chronomat Automatic 36', null, 'Chronomat', 'Stainless Steel', 36.0, 'automatic', 'B10', 100, 'Mint Green', 'Stainless Steel', 580000, 460000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'A17318101C1A1', 'Avenger Automatic 44', null, 'Avenger', 'Stainless Steel', 44.0, 'automatic', 'B17', 300, 'Blue', 'Stainless Steel', 490000, 380000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'A17318101B1A1', 'Avenger Automatic 42', null, 'Avenger', 'Stainless Steel', 42.0, 'automatic', 'B17', 300, 'Blue', 'Stainless Steel', 460000, 350000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'A32310101B1A1', 'Avenger Automatic GMT 44', null, 'Avenger', 'Stainless Steel', 44.0, 'automatic', 'B32', 300, 'Blue', 'Stainless Steel', 530000, 410000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'A13311121B1A1', 'Avenger B01 Chronograph 44', null, 'Avenger', 'Stainless Steel', 44.0, 'automatic', 'B01', 300, 'Blue', 'Stainless Steel', 830000, 640000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'AB0930D31B1P1', 'Superocean Heritage B01 Chronograph 44', null, 'Superocean Heritage', 'Stainless Steel', 44.0, 'automatic', 'B01', 200, 'Blue', 'Rubber', 830000, 640000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'AB0930371B1P1', 'Superocean Heritage 42', null, 'Superocean Heritage', 'Stainless Steel', 42.0, 'automatic', 'B20', 200, 'Blue', 'Rubber', 560000, 430000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'AB0930371C1P1', 'Superocean Heritage 42', null, 'Superocean Heritage', 'Stainless Steel', 42.0, 'automatic', 'B20', 200, 'Green', 'Rubber', 560000, 440000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'A45340241B1A1', 'Premier Automatic 40', null, 'Premier', 'Stainless Steel', 40.0, 'automatic', 'B45', 100, 'Blue', 'Stainless Steel', 660000, 510000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'A45340241C1P1', 'Premier Automatic 40', null, 'Premier', 'Stainless Steel', 40.0, 'automatic', 'B45', 100, 'Green', 'Leather', 620000, 480000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'AB0118A21B1A1', 'Premier B01 Chronograph 42', null, 'Premier', 'Stainless Steel', 42.0, 'automatic', 'B01', 100, 'Blue', 'Stainless Steel', 960000, 740000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'A2736434C9A1', 'Professional Endurance Pro', null, 'Professional', 'Breitlight', 44.0, 'quartz', null, 100, 'Orange', 'Rubber', 350000, 250000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000010', 'A2736434B9A1', 'Professional Endurance Pro', null, 'Professional', 'Breitlight', 44.0, 'quartz', null, 100, 'Blue', 'Rubber', 350000, 248000, 0.1, null, null);

-- ══════════════════════════════════════════════════════════════
-- TISSOT EXPANSION (brand 12)
-- ══════════════════════════════════════════════════════════════
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  ('b0000000-0000-0000-0000-000000000012', 'T1374071104100', 'PRX Powermatic 80 40mm', null, 'PRX', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80', 100, 'Blue', 'Stainless Steel', 85000, 75000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T1374071103100', 'PRX Powermatic 80 40mm', null, 'PRX', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80', 100, 'Green', 'Stainless Steel', 85000, 78000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T1374071101100', 'PRX Powermatic 80 40mm', null, 'PRX', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80', 100, 'Black', 'Stainless Steel', 85000, 74000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T1374071135100', 'PRX Powermatic 80 40mm', null, 'PRX', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80', 100, 'Ice Blue', 'Stainless Steel', 85000, 80000, 0.8, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T1372101103100', 'PRX 35mm', null, 'PRX', 'Stainless Steel', 35.0, 'quartz', null, 100, 'Green', 'Stainless Steel', 37500, 33000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T1372101104100', 'PRX 35mm', null, 'PRX', 'Stainless Steel', 35.0, 'quartz', null, 100, 'Blue', 'Stainless Steel', 37500, 34000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T1372101101100', 'PRX 35mm', null, 'PRX', 'Stainless Steel', 35.0, 'quartz', null, 100, 'Black', 'Stainless Steel', 37500, 32000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T1374071604100', 'PRX Powermatic 80 40mm', null, 'PRX', 'Rose Gold PVD', 40.0, 'automatic', 'Powermatic 80', 100, 'Blue', 'Rose Gold PVD Steel', 95000, 83000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T1374077104100', 'PRX Powermatic 80 Titanium', null, 'PRX', 'Titanium', 40.0, 'automatic', 'Powermatic 80', 100, 'Blue', 'Titanium', 97500, 85000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T1274071604101', 'PRX Digital 40mm', null, 'PRX', 'Rose Gold PVD', 40.0, 'quartz', null, 100, 'Black LCD', 'Rose Gold PVD Steel', 47500, 42000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T1274101104100', 'PRX Digital 35mm', null, 'PRX', 'Stainless Steel', 35.0, 'quartz', null, 100, 'Blue LCD', 'Stainless Steel', 35000, 31000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T1164101603700', 'Gentleman Powermatic 80 Silicium', null, 'Gentleman', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80.811', 50, 'Blue', 'Leather', 69500, 60000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T1164101104700', 'Gentleman Powermatic 80 Silicium', null, 'Gentleman', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80.811', 50, 'Blue', 'Stainless Steel', 75000, 65000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T1164071604100', 'Gentleman Powermatic 80 Open Heart', null, 'Gentleman', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80', 50, 'Blue', 'Leather', 82500, 72000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T1204071604101', 'Seastar 1000 Powermatic 80 40mm', null, 'Seastar', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80', 300, 'Blue', 'Rubber', 72500, 63000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T1204071104103', 'Seastar 1000 Powermatic 80 40mm', null, 'Seastar', 'Stainless Steel', 40.0, 'automatic', 'Powermatic 80', 300, 'Black', 'Stainless Steel', 77500, 67000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T1206071744100', 'Seastar 2000 Professional Powermatic 80', null, 'Seastar', 'Stainless Steel', 46.0, 'automatic', 'Powermatic 80', 600, 'Black', 'Rubber', 117500, 100000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T0064071603300', 'Le Locle Powermatic 80', null, 'Le Locle', 'Stainless Steel', 39.3, 'automatic', 'Powermatic 80', 30, 'Silver', 'Leather', 72500, 62000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T0064071104300', 'Le Locle Powermatic 80', null, 'Le Locle', 'Stainless Steel', 39.3, 'automatic', 'Powermatic 80', 30, 'Silver', 'Stainless Steel', 77500, 67000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T0064071603100', 'Le Locle Powermatic 80 Open Heart', null, 'Le Locle', 'Stainless Steel', 39.3, 'automatic', 'Powermatic 80', 30, 'Blue', 'Leather', 72500, 63000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T0994071103800', 'Chemin des Tourelles Powermatic 80', null, 'Chemin des Tourelles', 'Stainless Steel', 42.0, 'automatic', 'Powermatic 80', 50, 'Silver', 'Leather', 82500, 72000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T0994071604600', 'Chemin des Tourelles Powermatic 80 Chronograph', null, 'Chemin des Tourelles', 'Stainless Steel', 44.0, 'automatic', null, 50, 'Blue', 'Leather', 117500, 100000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T1256171604100', 'Supersport Chrono', null, 'Supersport', 'Stainless Steel', 45.5, 'quartz', null, 100, 'Blue', 'Rubber', 47500, 40000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T1014171603100', 'PR 100 Chronograph', null, 'PR 100', 'Stainless Steel', 41.0, 'quartz', null, 100, 'Blue', 'Leather', 42500, 36000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T0854101101300', 'Carson Premium Lady', null, 'Carson', 'Stainless Steel', 30.0, 'quartz', null, 50, 'Silver', 'Stainless Steel', 30000, 25000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000012', 'T1294101603100', 'Classic Dream Swissmatic', null, 'Classic Dream', 'Stainless Steel', 42.0, 'automatic', 'Swissmatic', 50, 'Blue', 'Leather', 35000, 30000, 0.2, null, null);

-- ══════════════════════════════════════════════════════════════
-- HUBLOT EXPANSION (brand 15)
-- ══════════════════════════════════════════════════════════════
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  ('b0000000-0000-0000-0000-000000000015', '441.NX.1171.RX', 'Big Bang Unico 42mm', null, 'Big Bang', 'Titanium', 42.0, 'automatic', 'HUB1280', 100, 'Black', 'Rubber', 2050000, 1500000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000015', '441.NX.7170.RX', 'Big Bang Unico 42mm', null, 'Big Bang', 'Titanium', 42.0, 'automatic', 'HUB1280', 100, 'Blue', 'Rubber', 2050000, 1520000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000015', '441.CI.1171.RX', 'Big Bang Unico Black Magic 42mm', 'Black Magic', 'Big Bang', 'Ceramic', 42.0, 'automatic', 'HUB1280', 100, 'Black', 'Rubber', 2260000, 1700000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000015', '441.OX.1181.RX', 'Big Bang Unico King Gold 42mm', null, 'Big Bang', '18k King Gold', 42.0, 'automatic', 'HUB1280', 100, 'Black', 'Rubber', 3750000, 2800000, -0.2, null, null),
  ('b0000000-0000-0000-0000-000000000015', '411.NX.1170.RX', 'Big Bang Unico Titanium 44mm', null, 'Big Bang', 'Titanium', 44.0, 'automatic', 'HUB1242', 100, 'Skeleton', 'Rubber', 2160000, 1600000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000015', '411.CI.1170.RX', 'Big Bang Unico Black Magic 44mm', 'Black Magic', 'Big Bang', 'Ceramic', 44.0, 'automatic', 'HUB1242', 100, 'Skeleton', 'Rubber', 2370000, 1800000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000015', '521.NX.7170.NX', 'Classic Fusion Chronograph Titanium 42mm', null, 'Classic Fusion', 'Titanium', 42.0, 'automatic', 'HUB1153', 50, 'Blue', 'Titanium', 1250000, 950000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000015', '521.NX.1171.NX', 'Classic Fusion Chronograph Titanium 42mm', null, 'Classic Fusion', 'Titanium', 42.0, 'automatic', 'HUB1153', 50, 'Black', 'Titanium', 1250000, 940000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000015', '511.NX.7170.NX', 'Classic Fusion Automatic Titanium 42mm', null, 'Classic Fusion', 'Titanium', 42.0, 'automatic', 'HUB1110', 50, 'Blue', 'Titanium', 810000, 600000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000015', '511.NX.1171.NX', 'Classic Fusion Automatic Titanium 42mm', null, 'Classic Fusion', 'Titanium', 42.0, 'automatic', 'HUB1110', 50, 'Black', 'Titanium', 810000, 590000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000015', '511.OX.1181.OX', 'Classic Fusion Automatic King Gold 42mm', null, 'Classic Fusion', '18k King Gold', 42.0, 'automatic', 'HUB1110', 50, 'Black', '18k King Gold', 2750000, 2050000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000015', '545.NX.0170.NX', 'Classic Fusion Automatic Titanium 38mm', null, 'Classic Fusion', 'Titanium', 38.0, 'automatic', 'HUB1110', 50, 'Blue', 'Titanium', 750000, 560000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000015', '665.NX.1170.RX.1204', 'Spirit of Big Bang Titanium 39mm', null, 'Spirit of Big Bang', 'Titanium', 39.0, 'automatic', 'HUB4700', 100, 'Black', 'Rubber', 2050000, 1500000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000015', '665.CI.1170.RX', 'Spirit of Big Bang Black Magic 39mm', null, 'Spirit of Big Bang', 'Ceramic', 39.0, 'automatic', 'HUB4700', 100, 'Black', 'Rubber', 2260000, 1700000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000015', '821.NX.0170.RX', 'Square Bang Unico Titanium 42mm', null, 'Square Bang', 'Titanium', 42.0, 'automatic', 'HUB1280', 100, 'Skeleton', 'Rubber', 2410000, 1800000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000015', '821.CI.0170.RX', 'Square Bang Unico Black Magic 42mm', null, 'Square Bang', 'Ceramic', 42.0, 'automatic', 'HUB1280', 100, 'Skeleton', 'Rubber', 2620000, 1950000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000015', '905.ND.0001.ND', 'MP-05 LaFerrari', null, 'MP', 'Sapphire Crystal', 51.0, 'manual', 'HUB9005.H1.6', 30, 'Skeleton', 'Rubber', 33500000, 28000000, 0.5, null, null);

-- ══════════════════════════════════════════════════════════════
-- RICHARD MILLE EXPANSION (brand 11)
-- ══════════════════════════════════════════════════════════════
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  ('b0000000-0000-0000-0000-000000000011', 'RM 72-01', 'RM 72-01 Lifestyle Chronograph', null, 'RM 72', 'Titanium', 47.0, 'automatic', 'CRMA7', 50, 'Skeleton', 'Rubber', 21800000, 18000000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000011', 'RM 72-01-Carbon', 'RM 72-01 Lifestyle Chronograph', null, 'RM 72', 'Carbon TPT', 47.0, 'automatic', 'CRMA7', 50, 'Skeleton', 'Rubber', 24500000, 20000000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000011', 'RM 07-01', 'RM 07-01 Automatic', null, 'RM 07', 'Carbon TPT', 45.66, 'automatic', 'CRMA2', 50, 'Skeleton', 'Rubber', 18000000, 15000000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000011', 'RM 07-01-RG', 'RM 07-01 Automatic', null, 'RM 07', '18k Rose Gold', 45.66, 'automatic', 'CRMA2', 50, 'Skeleton', 'Rubber', 14800000, 12000000, -0.2, null, null),
  ('b0000000-0000-0000-0000-000000000011', 'RM 030', 'RM 030 Automatic Declutchable Rotor', null, 'RM 030', 'Titanium', 50.0, 'automatic', 'RMXP1', 50, 'Skeleton', 'Rubber', 19500000, 16000000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000011', 'RM 030-Carbon', 'RM 030 Automatic Declutchable Rotor', null, 'RM 030', 'Carbon TPT', 50.0, 'automatic', 'RMXP1', 50, 'Skeleton', 'Rubber', 22000000, 18000000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000011', 'RM 037', 'RM 037 Automatic', null, 'RM 037', 'Carbon TPT', 52.63, 'automatic', 'CRMA1', 50, 'Skeleton', 'Rubber', 16500000, 13000000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000011', 'RM 037-RG', 'RM 037 Automatic', null, 'RM 037', '18k Rose Gold', 52.63, 'automatic', 'CRMA1', 50, 'Skeleton', 'Rubber', 12500000, 10000000, -0.3, null, null),
  ('b0000000-0000-0000-0000-000000000011', 'RM 039-01', 'RM 039-01 Aviation E6-B Flyback Chronograph', null, 'RM 039', 'Titanium', 50.0, 'automatic', null, 50, 'Skeleton', 'Rubber', 85000000, 70000000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000011', 'RM 011-03', 'RM 011 Automatic Flyback Chronograph', null, 'RM 011', 'Titanium', 50.0, 'automatic', 'RMAC3', 50, 'Skeleton', 'Rubber', 20000000, 17000000, 0.4, null, null);

-- ══════════════════════════════════════════════════════════════
-- BLANCPAIN EXPANSION (brand 16)
-- ══════════════════════════════════════════════════════════════
insert into public.watches (brand_id, reference_number, model_name, nickname, collection, case_material, case_diameter_mm, movement_type, caliber, water_resistance_m, dial_color, bracelet_material, retail_price_usd, current_market_price_usd, price_trend_30d, image_url, brand_page_url) values
  ('b0000000-0000-0000-0000-000000000016', '5010-1130-B52A', 'Fifty Fathoms Automatique 42mm', null, 'Fifty Fathoms', 'Stainless Steel', 42.0, 'automatic', '1315', 300, 'Black', 'Canvas', 1580000, 1300000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000016', '5010-1130-NABA', 'Fifty Fathoms Automatique 42mm', null, 'Fifty Fathoms', 'Stainless Steel', 42.0, 'automatic', '1315', 300, 'Blue', 'NATO', 1580000, 1320000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000016', '5010-3630-NAVA', 'Fifty Fathoms Automatique 42mm', null, 'Fifty Fathoms', 'Titanium', 42.0, 'automatic', '1315', 300, 'Grey', 'NATO', 1700000, 1400000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000016', '5010-36B30-B52A', 'Fifty Fathoms Automatique 42mm', null, 'Fifty Fathoms', 'Titanium/Ceramic', 42.0, 'automatic', '1315', 300, 'Blue', 'Canvas', 1750000, 1450000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000016', '5200-0153-B52A', 'Fifty Fathoms Bathyscaphe 38mm', null, 'Fifty Fathoms', 'Stainless Steel', 38.0, 'automatic', '1315', 300, 'Blue', 'Canvas', 1250000, 1000000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000016', '5200-1110-B52A', 'Fifty Fathoms Bathyscaphe 38mm', null, 'Fifty Fathoms', 'Stainless Steel', 38.0, 'automatic', '1315', 300, 'Black', 'Canvas', 1250000, 990000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000016', '5200-0240-52A', 'Fifty Fathoms Bathyscaphe Chronographe Flyback', null, 'Fifty Fathoms', 'Stainless Steel', 43.0, 'automatic', 'F388B', 300, 'Blue', 'Canvas', 1950000, 1550000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000016', 'AC01-1130-63A', 'Air Command Chronograph Flyback', null, 'Air Command', 'Stainless Steel', 42.5, 'automatic', 'F388B', 30, 'Black', 'Canvas', 1850000, 1500000, 0.5, null, null),
  ('b0000000-0000-0000-0000-000000000016', 'AC01-36B30-63A', 'Air Command Chronograph Flyback', null, 'Air Command', 'Titanium/Ceramic', 42.5, 'automatic', 'F388B', 30, 'Blue', 'Canvas', 1950000, 1600000, 0.6, null, null),
  ('b0000000-0000-0000-0000-000000000016', '6654-1127-55B', 'Villeret Quantième Complet 40mm', null, 'Villeret', 'Stainless Steel', 40.0, 'automatic', '6654.P', 30, 'White', 'Leather', 1550000, 1250000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000016', '6654-1529-55B', 'Villeret Quantième Complet 40mm', null, 'Villeret', 'Stainless Steel', 40.0, 'automatic', '6654.P', 30, 'Blue', 'Leather', 1550000, 1280000, 0.4, null, null),
  ('b0000000-0000-0000-0000-000000000016', '6654-3642-55B', 'Villeret Quantième Complet 40mm', null, 'Villeret', '18k Rose Gold', 40.0, 'automatic', '6654.P', 30, 'White', 'Leather', 2500000, 2000000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000016', '6630-1531-55B', 'Villeret Ultraplate 40mm', null, 'Villeret', 'Stainless Steel', 40.0, 'automatic', '1150', 30, 'Blue', 'Leather', 1100000, 880000, 0.3, null, null),
  ('b0000000-0000-0000-0000-000000000016', '6630-3631-55B', 'Villeret Ultraplate 40mm', null, 'Villeret', '18k Rose Gold', 40.0, 'automatic', '1150', 30, 'White', 'Leather', 2100000, 1680000, 0.1, null, null),
  ('b0000000-0000-0000-0000-000000000016', '6104-2930-55A', 'Ladybird Ultraplate', null, 'Ladybird', 'Stainless Steel', 29.0, 'automatic', '1150', 30, 'White', 'Leather', 1050000, 840000, 0.2, null, null),
  ('b0000000-0000-0000-0000-000000000016', '6104-2987-55A', 'Ladybird Quantième Complet', null, 'Ladybird', 'Stainless Steel', 33.0, 'automatic', '6104.P', 30, 'Blue', 'Leather', 1650000, 1320000, 0.3, null, null);


-- ============================================================
-- Watch Market Links (search URLs for each watch)
-- ============================================================

do $$
declare
  w record;
  encoded_ref text;
begin
  for w in select id, reference_number from public.watches loop
    encoded_ref := replace(replace(w.reference_number, '/', '%2F'), ' ', '+');

    insert into public.watch_market_links (watch_id, source, source_display_name, url) values
      (w.id, 'chrono24', 'Chrono24', 'https://www.chrono24.com/search/index.htm?query=' || encoded_ref),
      (w.id, 'ebay', 'eBay', 'https://www.ebay.com/sch/i.html?_nkw=' || encoded_ref),
      (w.id, 'bezel', 'Bezel', 'https://shop.bezel.com/search?q=' || encoded_ref),
      (w.id, 'crown_caliber', 'Crown & Caliber', 'https://www.crowncaliber.com/search?q=' || encoded_ref),
      (w.id, 'bobs_watches', 'Bob''s Watches', 'https://www.bobswatches.com/search?q=' || encoded_ref);
  end loop;
end $$;

-- ============================================================
-- Sample price history (last 90 days for Rolex Daytona)
-- ============================================================
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
