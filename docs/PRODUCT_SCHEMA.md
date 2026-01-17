# 📐 Product Schema - Chopper

Structure de données standardisée pour les produits.

---

## 🎯 Principes de conception

### Schema strict (Option A)
- **Tous les champs sont TOUJOURS présents**
- Champs optionnels : array vide `[]` si non applicable
- Garantit cohérence et validation facile

### Conventions de nommage
- **Champs texte** : minuscules (brand, category, colors, styles)
- **Tailles** : MAJUSCULES avec unité si nécessaire ("XS", "50 MM")
- **Arrays** : toujours présents (vides si non applicable)

---

## 📊 Structure JSON complète

```json
{
  "id": <integer>,
  "name": "<string>",
  "price": <decimal>,
  "url": "<string>",
  "image_url": "<string>",
  "brand": "<string>",
  "category": ["<string>", ...],
  "sizes_available": ["<string>", ...],
  "colors_available": ["<string>", ...],
  "styles": ["<string>", ...]
}
```

---

## 📋 Spécification des champs

### `id` (integer)
- **Type :** Entier positif
- **Obligatoire :** ✅ Oui
- **Unique :** ✅ Oui
- **Description :** Identifiant unique interne Chopper
- **Exemple :** `8`, `9`, `42`

---

### `name` (string)
- **Type :** Chaîne de caractères
- **Obligatoire :** ✅ Oui
- **Longueur max :** 255 caractères
- **Description :** Nom commercial du produit
- **Exemple :** `"Veste utilitaire"`, `"Jordan 1 Smoke Grey"`

---

### `price` (decimal)
- **Type :** Décimal (2 chiffres après virgule)
- **Obligatoire :** ✅ Oui
- **Format :** `XXX.XX`
- **Description :** Prix en euros (ou devise principale)
- **Exemple :** `159.00`, `40.50`, `1299.99`
- **Justification :** Précision pour calculs (panier, taxes, remises)

---

### `url` (string)
- **Type :** URL valide
- **Obligatoire :** ✅ Oui
- **Description :** Lien vers la page produit sur le site marchand
- **Exemple :** `"https://www.arket.com/fr-fr/product/utility-jacket-black-1313727002/"`
- **Usage :** Redirection utilisateur pour achat

---

### `image_url` (string)
- **Type :** URL valide (image directe)
- **Obligatoire :** ✅ Oui
- **Formats acceptés :** `.jpg`, `.jpeg`, `.png`, `.webp`
- **Description :** URL directe vers l'image du produit
- **Exemple :** `"https://media.arket.com/.../lg-1.jpg"`
- **Usage :** Affichage visuel dans chatbot/interface
- **Note :** Différent de `url` (page produit)

---

### `brand` (string)
- **Type :** Chaîne de caractères
- **Obligatoire :** ✅ Oui
- **Format :** Minuscules
- **Description :** Nom de la marque
- **Exemples :** `"arket"`, `"uniqlo"`, `"maison margiela"`, `"nike"`
- **Justification :** Cohérence pour recherche/filtrage

---

### `category` (array of strings)
- **Type :** Array de chaînes
- **Obligatoire :** ✅ Oui (peut être vide `[]` temporairement)
- **Format :** Minuscules, tags multiples
- **Description :** Catégories/tags du produit (approche flexible)
- **Exemples :**
  ```json
  ["veste", "vêtements"]
  ["bijoux", "bague", "accessoires"]
  ["chaussures", "baskets", "sneakers"]
  ```
- **Justification :** Tags flexibles permettent classification multiple

---

### `sizes_available` (array of strings)
- **Type :** Array de chaînes
- **Obligatoire :** ✅ Oui
- **Format :** Dépend du type de produit
- **Description :** Tailles disponibles
- **Exemples :**
  ```json
  // Vêtements
  ["XS", "S", "M", "L", "XL", "XXL"]

  // Chaussures
  ["40", "41", "42", "43", "44", "45"]

  // Bijoux
  ["50 MM", "52 MM", "54 MM"]

  // Taille unique
  ["Taille unique"]
  ```
- **Note :** Toujours MAJUSCULES pour cohérence

---

### `colors_available` (array of strings)
- **Type :** Array de chaînes
- **Obligatoire :** ✅ Oui (vide `[]` si non applicable)
- **Format :** Minuscules
- **Description :** Couleurs disponibles
- **Exemples :**
  ```json
  // Produit avec choix de couleurs
  ["noir", "blanc", "gris", "beige"]

  // Produit multicolore
  ["rouge", "bleu", "vert"]

  // Produit sans variation couleur (ex: bijoux argent)
  []
  ```
- **Distinction :**
  - `[]` = Pas de choix de couleur (intentionnel)
  - `["noir"]` = Une seule couleur disponible

---

### `styles` (array of strings)
- **Type :** Array de chaînes
- **Obligatoire :** ✅ Oui (vide `[]` si non défini)
- **Format :** Minuscules, tags multiples
- **Description :** Styles/esthétiques du produit
- **Exemples :**
  ```json
  ["casual"]
  ["streetwear", "luxe"]
  ["workwear", "outdoor"]
  ["sportswear", "athleisure"]
  ```
- **Valeurs recommandées :**
  - `casual`
  - `streetwear`
  - `workwear`
  - `sportswear`
  - `elegant`
  - `luxe`
  - `outdoor`
  - `athleisure`
  - `minimaliste`
- **Note :** Peut être vide `[]` si non encore classifié (enrichissement ultérieur)

---

## 🧪 Exemples validés

### Exemple 1 : Veste avec couleurs

```json
{
  "id": 8,
  "name": "Veste utilitaire",
  "price": 159.00,
  "url": "https://www.arket.com/fr-fr/product/utility-jacket-black-1313727002/",
  "image_url": "https://media.arket.com/assets/006/8c/46/8c46c7a9edb1f81e9a1246da09970b6b7d221fa6_lg-1.jpg",
  "brand": "arket",
  "category": ["veste", "vêtements"],
  "sizes_available": ["XS", "S", "M", "L", "XL"],
  "colors_available": ["noir"],
  "styles": ["casual"]
}
```

---

### Exemple 2 : Bijoux sans couleur

```json
{
  "id": 9,
  "name": "Maison Margiela MM6 Ring",
  "price": 174.99,
  "url": "https://www.bstn.com/eu_fr/p/maison-margiela-mm6-ring-sm6uq0104-p8371-951-0333286",
  "image_url": "https://img.bstn.com/[...]",
  "brand": "maison margiela",
  "category": ["bijoux", "bague", "accessoires"],
  "sizes_available": ["50 MM", "52 MM", "54 MM"],
  "colors_available": [],
  "styles": ["streetwear", "luxe"]
}
```

---

### Exemple 3 : Produit temporairement incomplet

```json
{
  "id": 42,
  "name": "T-shirt basique",
  "price": 19.99,
  "url": "https://example.com/tshirt",
  "image_url": "https://example.com/tshirt.jpg",
  "brand": "uniqlo",
  "category": ["t-shirt", "vêtements"],
  "sizes_available": ["S", "M", "L", "XL"],
  "colors_available": ["blanc", "noir", "gris"],
  "styles": []
}
```

**Note :** `styles: []` indique que le style n'a pas encore été classifié. Logique d'enrichissement peut inférer `["casual"]` via marque Uniqlo.

---

## ✅ Règles de validation

Un produit est **valide** si :

1. ✅ Tous les champs sont présents (pas de champ manquant)
2. ✅ `id` est unique et positif
3. ✅ `name` non vide
4. ✅ `price` > 0
5. ✅ `url` et `image_url` sont des URLs valides
6. ✅ `brand` non vide
7. ✅ `category` est un array (peut être vide temporairement)
8. ✅ `sizes_available` est un array non vide (au moins une taille)
9. ✅ `colors_available` est un array (peut être vide)
10. ✅ `styles` est un array (peut être vide)

---

## 🔄 Évolution future

### Phase 2 : Champs additionnels possibles

```json
{
  ...champs actuels,
  "stock_status": "in_stock" | "low_stock" | "out_of_stock",
  "last_updated": "2025-01-17T10:30:00Z",
  "source": "manual" | "api_amazon" | "scraping",
  "rating": 4.5,
  "reviews_count": 127,
  "gender": ["homme", "femme", "unisexe"],
  "season": ["printemps", "été", "automne", "hiver"]
}
```

**Principe :** On ajoute ces champs APRÈS avoir validé la structure de base.

---

## 📚 Référence rapide

### Template vide (copier-coller)

```json
{
  "id": 0,
  "name": "",
  "price": 0.00,
  "url": "",
  "image_url": "",
  "brand": "",
  "category": [],
  "sizes_available": [],
  "colors_available": [],
  "styles": []
}
```

---

## 🎯 Utilisation

### Pour ajouter un produit

1. Copier le template vide
2. Remplir tous les champs
3. Vérifier la validation (règles ci-dessus)
4. Ajouter au dataset

### Pour enrichir un produit incomplet

```json
// Avant
{
  "id": 10,
  "styles": []  // Non classifié
}

// Après enrichissement (logique métier)
{
  "id": 10,
  "styles": ["casual"]  // Inféré via marque "uniqlo"
}
```

---

**Date de création :** 2025-01-17
**Version :** 1.0
**Statut :** ✅ Finalisé
