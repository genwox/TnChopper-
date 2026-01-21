-- =============================================================================
-- CHOPPER - Script d'insertion des produits
-- =============================================================================
-- À exécuter APRÈS schema.sql dans Supabase SQL Editor
-- =============================================================================

INSERT INTO products (name, price, url, image_url, brand, category, sizes_available, colors_available, styles)
VALUES
-- HAUTS (1-15)
('T-shirt basique col rond', 12.99, 'https://www.uniqlo.com/fr/fr/products/E465187-000/00?colorDisplayCode=13&sizeDisplayCode=004', 'https://image.uniqlo.com/UQ/ST3/eu/imagesgoods/465187/item/eugoods_13_465187_3x4.jpg?width=400', 'uniqlo', ARRAY['t-shirt', 'hauts', 'vêtements'], ARRAY['XS', 'S', 'M', 'L', 'XL', 'XXL'], ARRAY['blanc', 'noir', 'gris', 'marine'], ARRAY['casual', 'minimaliste']),

('T-shirt oversize épais', 19.99, 'https://www.uniqlo.com/fr/fr/product/t-shirt-oversize-uniqlo-u-455359.html', 'https://image.uniqlo.com/UQ/ST3/WesternCommon/imagesgoods/455359/sub/goods_455359_sub13_3x4.jpg?width=400', 'uniqlo', ARRAY['t-shirt', 'hauts', 'vêtements'], ARRAY['S', 'M', 'L', 'XL'], ARRAY['noir', 'beige', 'olive'], ARRAY['casual', 'streetwear']),

('T-shirt graphique logo', 45.00, 'https://eu.stussy.com/en-fr/collections/tees/products/1905175-victoria-tee-black', 'https://eu.stussy.com/cdn/shop/files/1905175_BLAC_2.jpg?v=1768332572&width=1920', 'stüssy', ARRAY['t-shirt', 'hauts', 'vêtements'], ARRAY['S', 'M', 'L', 'XL'], ARRAY['blanc', 'noir'], ARRAY['streetwear']),

('Chemise oxford classique', 39.99, 'https://www.uniqlo.com/fr/fr/products/E475718-000/00?colorDisplayCode=00&sizeDisplayCode=003', 'https://image.uniqlo.com/UQ/ST3/eu/imagesgoods/475718/item/eugoods_00_475718_3x4.jpg?width=400', 'uniqlo', ARRAY['chemise', 'hauts', 'vêtements'], ARRAY['XS', 'S', 'M', 'L', 'XL'], ARRAY['blanc', 'bleu ciel', 'rose'], ARRAY['casual', 'elegant']),

('Chemise en lin', 69.00, 'https://www.arket.com/fr-fr/product/relaxed-linen-shirt-black-1262613006/', 'https://public.assets.hmgroup.com/assets/006/cc/33/cc33f367ed281cf97bcd1b84de0eb0feecf9c0e4_xl-1.jpg', 'arket', ARRAY['chemise', 'hauts', 'vêtements'], ARRAY['S', 'M', 'L', 'XL'], ARRAY['blanc', 'beige', 'bleu'], ARRAY['casual', 'minimaliste']),

('Chemise workwear', 129.00, 'https://www.carhartt-wip.com/fr-fr/p/w-s-s-michigan-shirt-black-garment-dyed-486', 'https://cdn.media.amplience.net/i/carhartt_wip/I035573_89_GD-OF-01?%24OF%24=&fmt=auto&w=1200&qlt=default', 'carhartt wip', ARRAY['chemise', 'hauts', 'vêtements'], ARRAY['S', 'M', 'L', 'XL'], ARRAY['marron', 'vert', 'noir'], ARRAY['workwear', 'streetwear']),

('Pull col rond en laine mérinos', 49.99, 'https://www.uniqlo.com/fr/fr/products/E450535-000/00?colorDisplayCode=11&sizeDisplayCode=003', 'https://image.uniqlo.com/UQ/ST3/eu/imagesgoods/450535/item/eugoods_11_450535_3x4.jpg?width=400', 'uniqlo', ARRAY['pull', 'hauts', 'vêtements'], ARRAY['XS', 'S', 'M', 'L', 'XL'], ARRAY['noir', 'gris', 'marine', 'bordeaux'], ARRAY['casual', 'minimaliste']),

('Pull col roulé côtelé', 89.00, 'https://www.cos.com/fr-fr/women/womenswear/knitwear/jumpers/merino/product/ribbed-wool-funnel-neck-jumper-grey-cream-1294422001', 'https://media.cos.com/assets/001/79/a0/79a06ed63a7111b4915918e83810986697e75cfa_xxl-1.jpg?imwidth=1536', 'cos', ARRAY['pull', 'hauts', 'vêtements'], ARRAY['S', 'M', 'L'], ARRAY['noir', 'crème', 'camel'], ARRAY['elegant', 'minimaliste']),

('Cardigan en maille', 59.00, 'https://www.uniqlo.com/fr/fr/products/E478550-000/00?colorDisplayCode=02&sizeDisplayCode=004', 'https://image.uniqlo.com/UQ/ST3/eu/imagesgoods/478550/item/eugoods_02_478550_3x4.jpg?width=400', 'uniqlo', ARRAY['cardigan', 'pull', 'hauts', 'vêtements'], ARRAY['XS', 'S', 'M', 'L', 'XL'], ARRAY['rouge', 'noir', 'bleu', 'beige', 'gris', 'marron'], ARRAY['casual']),

('Hoodie classique', 39.99, 'https://www.uniqlo.com/fr/fr/products/E471808-000/00?colorDisplayCode=17&sizeDisplayCode=004', 'https://image.uniqlo.com/UQ/ST3/eu/imagesgoods/471808/sub/eugoods_471808_sub3_3x4.jpg?width=400', 'uniqlo', ARRAY['hoodie', 'hauts', 'vêtements'], ARRAY['XS', 'S', 'M', 'L', 'XL'], ARRAY['noir', 'gris chiné', 'marine'], ARRAY['casual', 'sportswear']),

('Hoodie logo brodé', 139.00, 'https://eu.stussy.com/en-fr/products/1925000-basic-stussy-hoodie-black', 'https://eu.stussy.com/cdn/shop/files/1925000_BLAC_1_9ca76380-cd41-44ea-ae48-28bb07873a92.jpg?v=1760524472&width=1920', 'stüssy', ARRAY['hoodie', 'hauts', 'vêtements'], ARRAY['S', 'M', 'L', 'XL'], ARRAY['noir', 'vert forêt'], ARRAY['streetwear']),

('Hoodie oversize premium', 195.00, 'https://www.acnestudios.com/fr/fr/logo-hooded-sweater-black/CI0136-900.html', 'https://www.acnestudios.com/dw/image/v2/AAXV_PRD/on/demandware.static/-/Sites-acne-product-catalog/default/dw1c62aff2/images/CI/CI0136-/2000x/CI0136-900_A.jpg?sw=2000&sh=3000', 'acne studios', ARRAY['hoodie', 'hauts', 'vêtements'], ARRAY['XS', 'S', 'M', 'L'], ARRAY['noir', 'gris pâle'], ARRAY['streetwear', 'luxe', 'minimaliste']),

('Sweatshirt col rond', 29.99, 'https://www.uniqlo.com/fr/fr/products/E484780-000/00?colorDisplayCode=01&sizeDisplayCode=004', 'https://image.uniqlo.com/UQ/ST3/eu/imagesgoods/484780/item/eugoods_09_484780_3x4.jpg?width=400', 'uniqlo', ARRAY['sweatshirt', 'hauts', 'vêtements'], ARRAY['XS', 'S', 'M', 'L', 'XL'], ARRAY['noir', 'gris', 'bleu marine'], ARRAY['casual', 'sportswear']),

('Polo en coton piqué', 29.99, 'https://www.uniqlo.com/fr/fr/products/E475367-000/00?colorDisplayCode=51&sizeDisplayCode=004', 'https://image.uniqlo.com/UQ/ST3/eu/imagesgoods/475367/item/eugoods_09_475367_3x4.jpg?width=400', 'uniqlo', ARRAY['polo', 'hauts', 'vêtements'], ARRAY['S', 'M', 'L', 'XL'], ARRAY['blanc', 'noir', 'marine', 'vert'], ARRAY['casual', 'sportswear']),

('Débardeur côtelé', 15.00, 'https://www.cos.com/fr-fr/men/menswear/tshirts/vests/product/ribbed-tank-top-black-1150895002', 'https://media.cos.com/assets/001/3a/b3/3ab34bfee6752ffdf4411a9c53b64c19fc9358df_xxl-1.jpg?imwidth=2160', 'cos', ARRAY['débardeur', 'hauts', 'vêtements'], ARRAY['XS', 'S', 'M', 'L'], ARRAY['blanc', 'noir'], ARRAY['minimaliste']),

-- VESTES (16-23)
('Veste utilitaire', 159.00, 'https://www.arket.com/fr-fr/product/utility-jacket-black-1313727002/', 'https://media.arket.com/assets/006/8c/46/8c46c7a9edb1f81e9a1246da09970b6b7d221fa6_xl-1.jpg', 'arket', ARRAY['veste', 'vêtements'], ARRAY['XS', 'S', 'M', 'L', 'XL'], ARRAY['noir', 'olive', 'beige'], ARRAY['casual', 'workwear']),

('Veste en jean', 149.00, 'https://www.carhartt-wip.com/fr-fr/p/og-chore-coat-blue-dark-navy-rigid-71', 'https://cdn.media.amplience.net/i/carhartt_wip/I035877_453_01-OF-01?%24OF%24=&fmt=auto&w=1200&qlt=default', 'carhartt wip', ARRAY['veste', 'vêtements'], ARRAY['S', 'M', 'L', 'XL'], ARRAY['bleu délavé', 'noir'], ARRAY['workwear', 'streetwear']),

('Bomber jacket', 89.00, 'https://www.zara.com/fr/fr/blouson-bomber-bimatiere-p05070321.html?v1=495669509', 'https://static.zara.net/assets/public/fc6a/e22f/da624cf3a0bd/41b6e046e49a/05070321800-p/05070321800-p.jpg?ts=1762944000796&w=2048', 'zara', ARRAY['veste', 'bomber', 'vêtements'], ARRAY['S', 'M', 'L', 'XL'], ARRAY['noir', 'vert kaki'], ARRAY['streetwear', 'casual']),

('Veste matelassée légère', 79.99, 'https://www.uniqlo.com/fr/fr/products/E481352-000/00?colorDisplayCode=09&sizeDisplayCode=004', 'https://image.uniqlo.com/UQ/ST3/eu/imagesgoods/481352/sub/eugoods_481352_sub1_3x4.jpg?width=400', 'uniqlo', ARRAY['veste', 'vêtements'], ARRAY['XS', 'S', 'M', 'L', 'XL'], ARRAY['noir', 'marine', 'olive'], ARRAY['casual', 'minimaliste']),

('Manteau en laine', 249.00, 'https://www.cos.com/fr-fr/men/menswear/coatsjackets/wool/product/single-breasted-textured-wool-coat-grey-1316476001', 'https://media.cos.com/assets/001/8a/83/8a832c84aca088aaa60e9aed2507b8d653a22c71_xxl-1.jpg?imwidth=1260', 'cos', ARRAY['manteau', 'veste', 'vêtements'], ARRAY['S', 'M', 'L'], ARRAY['noir', 'gris', 'camel'], ARRAY['elegant', 'minimaliste']),

('Parka longue', 179.00, 'https://www.arket.com/fr-fr/product/cotton-blend-parka-khaki-green-1314825001/', 'https://media.arket.com/assets/006/82/f9/82f93819f5074945a08c10946f505bc0bf0f2801_xl-1.jpg', 'arket', ARRAY['parka', 'manteau', 'veste', 'vêtements'], ARRAY['XS', 'S', 'M', 'L', 'XL'], ARRAY['noir', 'kaki'], ARRAY['casual', 'outdoor']),

('Blazer déstructuré', 690.00, 'https://www.amiparis.com/products/black-new-wool-straight-single-breasted-jacket-hbv763wv0194001', 'https://www.amiparis.com/cdn/shop/files/HBV763.WV0194_3e2c157d-ee11-4606-99f0-09f9b111ab94.jpg?v=1768569620&width=2560', 'ami paris', ARRAY['blazer', 'veste', 'vêtements'], ARRAY['46', '48', '50', '52'], ARRAY['noir', 'marine'], ARRAY['elegant', 'casual']),

('Blouson cuir', 349.00, 'https://www.acnestudios.com/fr/fr/faux-leather-bomber-jacket-black/A90660-900.html', 'https://www.acnestudios.com/dw/image/v2/AAXV_PRD/on/demandware.static/-/Sites-acne-product-catalog/default/dw4b93dec9/images/A9/A90660-/2000x/A90660-900_A.jpg?sw=2000&sh=3000', 'acne studios', ARRAY['blouson', 'veste', 'vêtements'], ARRAY['46', '48', '50', '52'], ARRAY['noir'], ARRAY['luxe', 'streetwear']),

-- BAS (24-33)
('Jean slim', 39.99, 'https://www.uniqlo.com/fr/fr/products/E455476-000/00?colorDisplayCode=65&sizeDisplayCode=004', 'https://www.uniqlo.com/fr/fr/products/E455476-000/00?colorDisplayCode=65&sizeDisplayCode=004', 'uniqlo', ARRAY['jean', 'pantalon', 'bas', 'vêtements'], ARRAY['28', '29', '30', '31', '32', '33', '34'], ARRAY['bleu brut', 'bleu délavé', 'noir'], ARRAY['casual']),

('Jean relaxed fit', 49.99, 'https://www.uniqlo.com/fr/fr/products/E456117-000/00?colorDisplayCode=06&sizeDisplayCode=003', 'https://image.uniqlo.com/UQ/ST3/WesternCommon/imagesgoods/456117/item/goods_06_456117_3x4.jpg?width=400', 'uniqlo', ARRAY['jean', 'pantalon', 'bas', 'vêtements'], ARRAY['28', '30', '32', '34', '36'], ARRAY['bleu moyen', 'noir délavé'], ARRAY['casual', 'streetwear']),

('Jean workwear', 109.00, 'https://www.carhartt-wip.com/fr-fr/p/w-brandon-single-knee-pant-blue-rinsed-37', 'https://cdn.media.amplience.net/i/carhartt_wip/I034225_01_02-OF-01?%24OF%24=&fmt=auto&w=1200&qlt=default', 'carhartt wip', ARRAY['jean', 'pantalon', 'bas', 'vêtements'], ARRAY['28', '30', '32', '34'], ARRAY['bleu brut'], ARRAY['workwear']),

('Pantalon chino', 39.99, 'https://www.uniqlo.com/fr/fr/products/E450251-000/00?colorDisplayCode=08&sizeDisplayCode=030&pldDisplayCode=034', 'https://image.uniqlo.com/UQ/ST3/eu/imagesgoods/450251/sub/eugoods_450251_sub3_3x4.jpg?width=400', 'uniqlo', ARRAY['chino', 'pantalon', 'bas', 'vêtements'], ARRAY['28', '29', '30', '31', '32', '33', '34'], ARRAY['beige', 'noir', 'marine', 'olive'], ARRAY['casual', 'elegant']),

('Pantalon cargo', 69.00, 'https://www.zara.com/fr/fr/pantalon-cargo-coupe-decontractee-p00108310.html?v1=495707571', 'https://static.zara.net/assets/public/9ba6/6f1f/415f4436b4bf/10c8421decaf/00108310800-p/00108310800-p.jpg?ts=1756713869700&w=2048', 'zara', ARRAY['cargo', 'pantalon', 'bas', 'vêtements'], ARRAY['S', 'M', 'L', 'XL'], ARRAY['noir', 'kaki', 'beige'], ARRAY['streetwear', 'workwear']),

('Pantalon large plissé', 99.00, 'https://www.cos.com/fr-fr/women/womenswear/suitsandtailoring/tailoredtrousers/product/pleated-wide-leg-wool-trousers-cream-mlange-1100224001', 'https://media.cos.com/assets/001/7c/98/7c98d44479bba5377e3e3f05d90ae4bcb683dadb_xxl-1.jpg?imwidth=1260', 'cos', ARRAY['pantalon', 'bas', 'vêtements'], ARRAY['44', '46', '48', '50', '52'], ARRAY['noir', 'gris', 'marine'], ARRAY['elegant', 'minimaliste']),

('Pantalon de costume', 490.00, 'https://www.amiparis.com/products/black-wool-straight-trousers-htr506wv0195001', 'https://www.amiparis.com/cdn/shop/files/HTR506.WV0195_bfbc8f3d-0058-4d70-b7d8-3098eae7a42f.jpg?v=1768573817&width=2560', 'ami paris', ARRAY['pantalon', 'bas', 'vêtements'], ARRAY['44', '46', '48', '50'], ARRAY['noir', 'marine'], ARRAY['elegant']),

('Short chino', 29.99, 'https://www.uniqlo.com/fr/fr/products/E460616-000/00?colorDisplayCode=69&sizeDisplayCode=004', 'https://image.uniqlo.com/UQ/ST3/WesternCommon/imagesgoods/460616/sub/goods_460616_sub14_3x4.jpg?width=400', 'uniqlo', ARRAY['short', 'bas', 'vêtements'], ARRAY['S', 'M', 'L', 'XL'], ARRAY['beige', 'marine', 'noir'], ARRAY['casual']),

('Short en nylon', 85.00, 'https://eu.stussy.com/products/113155n-water-short-stock-black?_pos=1&_sid=9a09617fb&_ss=r', 'https://eu.stussy.com/cdn/shop/files/112330_BLAC_1_976a9740-0fd8-4f70-bb4c-e751c0464d4e.jpg?v=1760641054&width=1920', 'stüssy', ARRAY['short', 'bas', 'vêtements'], ARRAY['S', 'M', 'L', 'XL'], ARRAY['noir', 'rouge'], ARRAY['streetwear', 'sportswear']),

('Jogging slim', 34.99, 'https://www.uniqlo.com/fr/fr/products/E485744-000/00?colorDisplayCode=03&sizeDisplayCode=004', 'https://image.uniqlo.com/UQ/ST3/eu/imagesgoods/485744/item/eugoods_03_485744_3x4.jpg?width=400', 'uniqlo', ARRAY['jogging', 'pantalon', 'bas', 'vêtements'], ARRAY['XS', 'S', 'M', 'L', 'XL'], ARRAY['noir', 'gris chiné'], ARRAY['sportswear', 'casual']),

-- CHAUSSURES (34-43)
('Air Force 1 ''07', 119.99, 'https://www.nike.com/fr/t/chaussure-air-force-1-07-pour-E5NnNyBr/CW2288-111', 'https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto,u_9ddf04c7-2a9a-4d76-add1-d15af8f0263d,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/b7d9211c-26e7-431a-ac24-b0540fb3c00f/AIR+FORCE+1+%2707.png', 'nike', ARRAY['sneakers', 'chaussures'], ARRAY['40', '41', '42', '43', '44', '45'], ARRAY['blanc', 'noir'], ARRAY['streetwear', 'casual']),

('Air Jordan 1 Mid', 139.99, 'https://www.nike.com/fr/t/chaussure-air-jordan-1-mid-se-pour-Lm8dX5/CZ4385-016', 'https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/4a249cea-8c49-4b7d-b1d0-80d1c5601d18/WMNS+AIR+JORDAN+1+MID+SE.png', 'jordan', ARRAY['sneakers', 'chaussures'], ARRAY['40', '41', '42', '43', '44', '45', '46'], ARRAY['noir/rouge', 'blanc/gris'], ARRAY['streetwear']),

('Air Jordan 1 High OG', 189.99, 'https://www.nike.com/fr/t/chaussure-air-jordan-1-retro-high-og-pro-green-pour-lBYfzLH0/FD2596-101', 'https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7950b1e6-5a84-4843-94f6-68d741cbb463/WMNS+AIR+JORDAN+1+RETRO+HI+OG.png', 'jordan', ARRAY['sneakers', 'chaussures'], ARRAY['41', '42', '43', '44', '45'], ARRAY['Pro Green'], ARRAY['streetwear', 'luxe']),

('Dunk Low', 109.99, 'https://www.nike.com/fr/t/chaussure-dunk-low-next-nature-pour-uyvvVHT1/DD1873-102', 'https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto,u_9ddf04c7-2a9a-4d76-add1-d15af8f0263d,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/a4114e49-2fe9-40a9-b20b-fd960432d780/W+NIKE+DUNK+LOW+NEXT+NATURE.png', 'nike', ARRAY['sneakers', 'chaussures'], ARRAY['39', '40', '41', '42', '43', '44', '45'], ARRAY['panda', 'grey fog'], ARRAY['streetwear', 'casual']),

('New Balance 550', 149.99, 'https://www.newbalance.fr/fr/pd/550/BB550V1-51284.html?dwvar_BB550V1-51284_style=BB550EGR', 'https://nb.scene7.com/is/image/NB/bb550egr_nb_02_i?$pdpflexf22x$&qlt=80&fmt=webp&wid=880&hei=880', 'new balance', ARRAY['sneakers', 'chaussures'], ARRAY['40', '41', '42', '43', '44', '45'], ARRAY['blanc/vert', 'blanc/marine'], ARRAY['streetwear', 'casual']),

('Sneakers minimalistes cuir', 175.00, 'https://www.cos.com/fr-fr/men/accessories/shoes/sneakers/product/minimal-suede-trainers-black-1264537001', 'https://media.cos.com/assets/001/f5/f6/f5f688a40cbd446eb1514588751c65e3de1f7406_xxl-1.jpg?imwidth=1536', 'cos', ARRAY['sneakers', 'chaussures'], ARRAY['40', '41', '42', '43', '44'], ARRAY['blanc', 'noir'], ARRAY['minimaliste', 'elegant']),

('Boots Chelsea', 199.00, 'https://www.arket.com/fr-fr/product/leather-chelsea-boots-black-1253338001/', 'https://media.arket.com/assets/006/42/93/42937a4f5c4730151fab34a78703b24f6042a9ba_xl-1.jpg', 'arket', ARRAY['boots', 'chaussures'], ARRAY['40', '41', '42', '43', '44', '45'], ARRAY['noir', 'marron'], ARRAY['elegant', 'casual']),

('Desert boots', 159.00, 'https://www.clarks.com/fr-fr/desert-boot/26155481-p', 'https://cdn.media.amplience.net/i/clarks/26155481_GW_1?fmt=auto&img404=imageNotFound&w=2088&qlt=75', 'clarks', ARRAY['boots', 'chaussures'], ARRAY['40', '41', '42', '43', '44', '45'], ARRAY['sable', 'marron'], ARRAY['casual', 'workwear']),

('Mocassins en cuir', 129.00, 'https://www.cos.com/fr-fr/men/accessories/shoes/formal/product/classic-penny-loafers-black-1288359001', 'https://media.cos.com/assets/001/40/18/4018447c5e14db1b376d728c660ed379881f722e_xxl-1.jpg?imwidth=1536', 'cos', ARRAY['mocassins', 'chaussures'], ARRAY['40', '41', '42', '43', '44'], ARRAY['noir', 'bordeaux'], ARRAY['elegant', 'minimaliste']),

('Sandales en cuir', 89.00, 'https://www.arket.com/fr-fr/product/leather-strap-sandals-brown-1283398001/', 'https://public.assets.hmgroup.com/assets/006/aa/db/aadb4479a4573a21052e5445f33c4c4751ab6d64_xl-1.jpg', 'arket', ARRAY['sandales', 'chaussures'], ARRAY['40', '41', '42', '43', '44', '45'], ARRAY['noir', 'marron'], ARRAY['casual', 'minimaliste']),

-- ACCESSOIRES (44-50)
('Ceinture en cuir', 35.00, 'https://www.arket.com/fr-fr/product/slim-leather-belt-black-1015400001/', 'https://example.com/images/arket-belt.jpg', 'arket', ARRAY['ceinture', 'accessoires'], ARRAY['85', '90', '95', '100'], ARRAY['noir', 'marron'], ARRAY['casual', 'elegant']),

('Ceinture logo', 159.00, 'https://example.com/diesel/ceinture-logo', 'https://public.assets.hmgroup.com/assets/006/8e/cd/8ecdb3123afa2e9c931e5b6db55cc97163c513cc_xl-1.jpg', 'diesel', ARRAY['ceinture', 'accessoires'], ARRAY['85', '90', '95', '100'], ARRAY['noir'], ARRAY['streetwear']),

('Bague MM6', 174.99, 'https://www.bstn.com/eu_fr/p/maison-margiela-mm6-ring-sm6uq0104-p8371-951-0333286?srsltid=AfmBOoo1O3Vgck6pdXpdceoOWX-peRD0tnXUJyPzsVisnK9WrAjwTdTb', 'https://img.bstn.com/eyJidWNrZXQiOiJic3RuLWltYWdlLXNlcnZlciIsImtleSI6ImNhdGFsb2cvcHJvZHVjdC9TTTZVUTAxMDQtUDgzNzEtOTUxL1NNNlVRMDEwNC1QODM3MS05NTEtMDEuanBnIiwiZWRpdHMiOnsicmVzaXplIjp7ImZpdCI6ImNvbnRhaW4iLCJ3aWR0aCI6MTYwMCwiaGVpZ2h0IjoyMDAwLCJiYWNrZ3JvdW5kIjp7InIiOjI1NSwiZyI6MjU1LCJiIjoyNTUsImFscGhhIjoxfX19fQ==', 'maison margiela', ARRAY['bijoux', 'bague', 'accessoires'], ARRAY['50 MM', '52 MM', '54 MM'], ARRAY[]::TEXT[], ARRAY['streetwear', 'luxe']),

('Collier chaîne argent', 89.00, 'https://www.cos.com/fr-fr/men/accessories/jewellery/necklaces/product/double-chain-necklace-silver-1307533001', 'https://media.cos.com/assets/001/97/4d/974dadbb6289f2edaf468387a078ef05695ffaeb_xxl-1.jpg?imwidth=1536', 'cos', ARRAY['bijoux', 'collier', 'accessoires'], ARRAY['TAILLE UNIQUE'], ARRAY[]::TEXT[], ARRAY['minimaliste', 'elegant']),

('Beanie brodé', 70.00, 'https://eu.stussy.com/products/1321262-basic-stussy-cuff-beanie-black?_pos=1&_sid=38ffebfb7&_ss=r', 'https://eu.stussy.com/cdn/shop/files/1321262_BLAC_1.jpg?v=1767726452&width=1920', 'stüssy', ARRAY['bonnet', 'accessoires'], ARRAY['TAILLE UNIQUE'], ARRAY['noir', 'gris', 'vert'], ARRAY['streetwear']),

('Casquette logo', 45.00, 'https://www.carhartt-wip.com/fr-fr/p/logo-cap-black-1963', 'https://cdn.media.amplience.net/i/carhartt_wip/I023099_89_XX-OF-01?%24OF%24=&fmt=auto&w=1200&qlt=default', 'carhartt wip', ARRAY['casquette', 'accessoires'], ARRAY['TAILLE UNIQUE'], ARRAY['noir', 'marron', 'kaki'], ARRAY['workwear', 'streetwear']),

('Sac tote en toile', 55.00, 'https://www.arket.com/fr-fr/product/arket-oversized-canvas-tote-off-white-1041784001/', 'https://public.assets.hmgroup.com/assets/006/e2/80/e280d98aff295a41a87d3d96c54c2398fe7253ac_xl-1.jpg', 'arket', ARRAY['sac', 'accessoires'], ARRAY['TAILLE UNIQUE'], ARRAY['noir', 'écru'], ARRAY['casual', 'minimaliste']);

-- =============================================================================
-- Vérification
-- =============================================================================
-- SELECT COUNT(*) FROM products; -- Devrait retourner 50
-- SELECT * FROM products LIMIT 5;
