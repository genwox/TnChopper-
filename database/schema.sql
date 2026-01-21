-- =============================================================================
-- CHOPPER - Schema PostgreSQL
-- =============================================================================
-- Version : 1.0
-- Date    : 2025-01-18
-- Base    : PostgreSQL (compatible Supabase)
-- =============================================================================

-- -----------------------------------------------------------------------------
-- TABLE : products
-- -----------------------------------------------------------------------------
-- Structure basée sur PRODUCT_SCHEMA.md
-- Principe : Schema strict (tous les champs présents, arrays vides si N/A)
-- -----------------------------------------------------------------------------

CREATE TABLE products (
    -- Identifiant unique auto-incrémenté
    -- SERIAL = INTEGER + séquence automatique (1, 2, 3...)
    id SERIAL PRIMARY KEY,

    -- Nom du produit (obligatoire, max 255 caractères)
    name VARCHAR(255) NOT NULL,

    -- Prix en euros avec 2 décimales
    -- NUMERIC(10,2) = jusqu'à 99 999 999.99 €
    -- CHECK garantit un prix positif
    price NUMERIC(10,2) NOT NULL CHECK (price > 0),

    -- URL vers la page produit (pour redirection achat)
    -- TEXT = longueur illimitée (URLs peuvent être longues)
    url TEXT NOT NULL,

    -- URL directe vers l'image du produit
    image_url TEXT NOT NULL,

    -- Marque (minuscules pour cohérence)
    -- VARCHAR(100) suffit pour les noms de marques
    brand VARCHAR(100) NOT NULL,

    -- Catégories/tags du produit (array de strings)
    -- TEXT[] = array natif PostgreSQL
    -- Exemples : {"veste", "vêtements"} ou {"bijoux", "bague", "accessoires"}
    category TEXT[] NOT NULL DEFAULT '{}',

    -- Tailles disponibles (au moins une requise)
    -- Exemples : {"XS", "S", "M", "L"} ou {"42", "43", "44"}
    -- CHECK garantit au moins une taille
    sizes_available TEXT[] NOT NULL CHECK (array_length(sizes_available, 1) > 0),

    -- Couleurs disponibles (peut être vide)
    -- Array vide {} = pas de variation de couleur (ex: bijoux)
    -- {"noir"} = une seule couleur
    -- {"noir", "blanc", "gris"} = plusieurs couleurs
    colors_available TEXT[] NOT NULL DEFAULT '{}',

    -- Styles/esthétiques du produit
    -- Exemples : {"casual"}, {"streetwear", "luxe"}
    -- Peut être vide (enrichissement ultérieur possible)
    styles TEXT[] NOT NULL DEFAULT '{}',

    -- Métadonnées (ajoutées automatiquement)
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- -----------------------------------------------------------------------------
-- INDEX
-- -----------------------------------------------------------------------------
-- Accélèrent les requêtes de filtrage les plus courantes
-- -----------------------------------------------------------------------------

-- Index sur la marque (filtrage par brand)
CREATE INDEX idx_products_brand ON products (brand);

-- Index sur le prix (filtrage par budget)
CREATE INDEX idx_products_price ON products (price);

-- Index GIN sur les arrays pour recherche dans les tags
-- GIN = Generalized Inverted Index (optimisé pour arrays)
-- Permet des requêtes comme : WHERE 'streetwear' = ANY(styles)
CREATE INDEX idx_products_category ON products USING GIN (category);
CREATE INDEX idx_products_styles ON products USING GIN (styles);

-- -----------------------------------------------------------------------------
-- TRIGGER : Mise à jour automatique de updated_at
-- -----------------------------------------------------------------------------
-- À chaque UPDATE, updated_at prend la date/heure actuelle
-- -----------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_products_updated_at
    BEFORE UPDATE ON products
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at_column();

-- -----------------------------------------------------------------------------
-- COMMENTAIRES SUR LA TABLE
-- -----------------------------------------------------------------------------
-- Documentation intégrée dans la base de données
-- -----------------------------------------------------------------------------

COMMENT ON TABLE products IS 'Catalogue de produits mode pour recommandations';
COMMENT ON COLUMN products.id IS 'Identifiant unique interne Chopper';
COMMENT ON COLUMN products.name IS 'Nom commercial du produit';
COMMENT ON COLUMN products.price IS 'Prix en euros (2 décimales)';
COMMENT ON COLUMN products.url IS 'Lien vers la page produit sur le site marchand';
COMMENT ON COLUMN products.image_url IS 'URL directe vers image du produit';
COMMENT ON COLUMN products.brand IS 'Nom de la marque (minuscules)';
COMMENT ON COLUMN products.category IS 'Tags de catégorie (ex: veste, vêtements)';
COMMENT ON COLUMN products.sizes_available IS 'Tailles disponibles (MAJUSCULES)';
COMMENT ON COLUMN products.colors_available IS 'Couleurs disponibles (minuscules), vide si N/A';
COMMENT ON COLUMN products.styles IS 'Styles/esthétiques (casual, streetwear, etc.)';

-- -----------------------------------------------------------------------------
-- EXEMPLES D'INSERTION (pour test)
-- -----------------------------------------------------------------------------
-- Ces exemples correspondent aux produits validés dans PRODUCT_SCHEMA.md
-- -----------------------------------------------------------------------------

/*
INSERT INTO products (name, price, url, image_url, brand, category, sizes_available, colors_available, styles)
VALUES
(
    'Veste utilitaire',
    159.00,
    'https://www.arket.com/fr-fr/product/utility-jacket-black-1313727002/',
    'https://media.arket.com/assets/006/8c/46/8c46c7a9edb1f81e9a1246da09970b6b7d221fa6_lg-1.jpg',
    'arket',
    ARRAY['veste', 'vêtements'],
    ARRAY['XS', 'S', 'M', 'L', 'XL'],
    ARRAY['noir'],
    ARRAY['casual']
),
(
    'Maison Margiela MM6 Ring',
    174.99,
    'https://www.bstn.com/eu_fr/p/maison-margiela-mm6-ring-sm6uq0104-p8371-951-0333286',
    'https://img.bstn.com/example.jpg',
    'maison margiela',
    ARRAY['bijoux', 'bague', 'accessoires'],
    ARRAY['50 MM', '52 MM', '54 MM'],
    ARRAY[]::TEXT[],
    ARRAY['streetwear', 'luxe']
);
*/

-- =============================================================================
-- FIN DU SCHEMA
-- =============================================================================
