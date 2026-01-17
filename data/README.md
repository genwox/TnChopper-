# 📊 Data - Datasets

Ce dossier contiendra les datasets de produits au format JSON.

---

## 📋 Statut actuel

⏳ **Vide** - En attente de création du dataset initial

---

## 🎯 Fichiers à venir

### Phase 1 : Dataset initial
- `products.json` : 50-100 produits (dataset public + saisie manuelle)
- `products_seed.json` : Subset pour tests rapides (10-20 produits)

### Phase 2 : Données enrichies
- `products_with_embeddings.json` : Produits + vecteurs IA (plus tard)

---

## 📐 Format

Tous les fichiers JSON suivent la structure définie dans `docs/PRODUCT_SCHEMA.md`

**Exemple :**
```json
[
  {
    "id": 1,
    "name": "Veste utilitaire",
    "price": 159.00,
    "url": "https://...",
    "image_url": "https://...",
    "brand": "arket",
    "category": ["veste", "vêtements"],
    "sizes_available": ["XS", "S", "M", "L", "XL"],
    "colors_available": ["noir"],
    "styles": ["casual"]
  }
]
```

---

## 🔗 Référence

Voir `docs/PRODUCT_SCHEMA.md` pour la spécification complète.

**Prochaine étape :** Trouver dataset public + créer 50 produits
