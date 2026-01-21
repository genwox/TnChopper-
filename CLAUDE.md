# CLAUDE.md - Contexte du Projet Chopper

## Objectif du Projet

**Chopper** est un assistant mode personnel alimenté par l'IA qui recommande des vêtements selon les préférences, le budget et le style de l'utilisateur.

**Philosophie** : Projet éducatif où l'apprentissage prime sur la vitesse. Comprendre l'architecture de bout en bout.

## Stack Technique

- **Backend** : ASP.NET Core 8+ / C#
- **ORM** : Entity Framework Core
- **Base de données** : PostgreSQL (Supabase) + pgvector (Phase 2+)
- **IA** : OpenAI API, Semantic Kernel
- **Tests** : xUnit

## Structure du Projet

```
Chopper/
├── docs/                    # Documentation complète
│   ├── CADRE_PEDAGOGIQUE.md # Rôle de Claude comme mentor
│   ├── PRODUCT_SCHEMA.md    # Structure des produits (finalisé)
│   ├── PROGRESSION.md       # Roadmap et avancement
│   └── QUESTIONS_PRODUIT.md # Décisions business
├── src/
│   └── Chopper.Api/         # API ASP.NET Core
│       ├── Controllers/
│       │   └── ProductsController.cs  # Endpoints GET
│       ├── Data/
│       │   └── AppDbContext.cs        # Connexion DB
│       ├── Models/
│       │   └── Product.cs             # Modèle produit
│       └── Program.cs                 # Configuration
├── database/
│   ├── schema.sql           # Structure tables PostgreSQL
│   └── seed.sql             # Insertion 50 produits
├── data/
│   └── products.json        # Dataset 50 produits (JSON)
└── exercice.json            # 2 exemples de produits
```

## Schéma Produit (Finalisé)

```json
{
  "id": integer,
  "name": string,
  "price": decimal,
  "url": string,
  "image_url": string,
  "brand": string,
  "category": string[],
  "sizes_available": string[],
  "colors_available": string[],
  "styles": string[]
}
```

**Règles** : Tous les champs requis, tableaux vides si N/A, prix > 0, tailles obligatoires.

## Phases du Projet

| Phase | Description | Statut |
|-------|-------------|--------|
| 1 | Fondation & Modélisation (50 produits, API GET) | ✅ Terminé |
| 2 | Logique de recommandation (filtres, préférences) | À venir |
| 3 | Interface chatbot (LLM, dialogue) | À venir |
| 4 | IA avancée (embeddings, pgvector) | À venir |
| 5 | Automatisation (scraping, tâches planifiées) | À venir |

## État Actuel

**Phase 1 terminée** :
- ✅ Schema SQL PostgreSQL + Supabase configuré
- ✅ Dataset 50 produits (JSON + base de données)
- ✅ API ASP.NET Core fonctionnelle
- ✅ Endpoints GET /api/products et GET /api/products/{id}

**Prochaines étapes (Phase 2)** :
1. Ajouter des filtres (style, budget, marque)
2. Ajouter la pagination
3. Logique de recommandation simple

## Rôle de Claude

- Mentor/architecte, PAS générateur de code
- Poser des questions de clarification
- Expliquer les concepts et proposer des alternatives
- Guider l'apprentissage progressif

## Commandes Utiles

```bash
# Build
dotnet build

# Run l'API
dotnet run --project src/Chopper.Api

# L'API tourne sur http://localhost:5170
# Endpoints disponibles :
#   GET http://localhost:5170/api/products
#   GET http://localhost:5170/api/products/{id}
#   GET http://localhost:5170/swagger (interface graphique)

# Tests (à venir en Phase 2+)
dotnet test
```

## Fichiers Importants

- `docs/CADRE_PEDAGOGIQUE.md` - Approche pédagogique
- `docs/PRODUCT_SCHEMA.md` - Validation structure produit
- `docs/PROGRESSION.md` - Suivi avancement
- `docs/QUESTIONS_PRODUIT.md` - Décisions à prendre
