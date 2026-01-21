# 📊 Progression du projet Chopper

Ce fichier trackera l'avancement étape par étape.

---

## 🎯 Étapes globales (selon CADRE_PEDAGOGIQUE.md)

1. ✅ **Compréhension du problème métier**
2. ✅ **Modélisation des données**
3. ✅ **API simple (sans IA)** - Phase 1 terminée !
4. ⏳ **Recommandation basée sur des règles**
5. ⏳ **Chatbot comme interface**
6. ⏳ **IA avancée (embeddings, vision)**
7. ⏳ **Automatisation et amélioration UX**

---

## 📅 Historique détaillé

### 2026-01-21 - Session 3 : API ProductsController

#### ✅ ProductsController créé
- [x] Dossier `Controllers/` créé
- [x] Fichier `ProductsController.cs` créé
- [x] Endpoint `GET /api/products` (liste tous les produits)
- [x] Endpoint `GET /api/products/{id}` (un produit par ID)
- [x] Gestion du 404 si produit non trouvé
- [x] Utilisation de async/await avec Entity Framework

#### ✅ Configuration Program.cs
- [x] Ajout `builder.Services.AddControllers()`
- [x] Ajout `app.MapControllers()`
- [x] Correction `appsettings.Development.json` (JSON invalide)

#### ✅ Tests manuels
- [x] API testée et fonctionnelle
- [x] `GET /api/products` retourne les 50 produits
- [x] `GET /api/products/1` retourne un produit
- [x] `GET /api/products/9999` retourne 404

#### 📚 Concepts appris cette session
- Structure d'un Controller ASP.NET Core (attributs, héritage ControllerBase)
- Injection de dépendances via constructeur
- Différence entre `[HttpGet]` et `[HttpGet("{id}")]`
- Async/await avec Entity Framework (`ToListAsync()`, `FindAsync()`)
- Gestion des erreurs HTTP (`NotFound()`, `Ok()`)
- Route `[Route("api/[controller]")]` et convention de nommage
- Principe YAGNI (ne pas over-engineer trop tôt)

---

### 2025-01-18 - Session 2 : Schema SQL + Dataset

#### ✅ Base de données
- [x] Création `database/schema.sql`
- [x] Table `products` avec tous les champs du PRODUCT_SCHEMA.md
- [x] Types PostgreSQL : VARCHAR, NUMERIC(10,2), TEXT[], TIMESTAMP
- [x] Contraintes : NOT NULL, CHECK (price > 0), CHECK (sizes non vide)
- [x] Index : brand, price, GIN sur category/styles
- [x] Trigger : mise à jour automatique de `updated_at`
- [x] Exemples d'insertion commentés

#### ✅ Dataset produits
- [x] Création `data/products.json` (50 produits)
- [x] Répartition : 15 hauts, 8 vestes, 10 bas, 10 chaussures, 7 accessoires
- [x] Marques variées : Uniqlo, Arket, COS, Stüssy, Carhartt WIP, Nike, Jordan, etc.
- [x] Styles couverts : casual, streetwear, workwear, elegant, sportswear, luxe, minimaliste
- [x] Prix : 12.99€ à 349€ (budget à premium)
- [x] URLs réelles ajoutées manuellement

#### ✅ Supabase
- [x] Projet créé sur Supabase
- [x] Schema SQL exécuté (`database/schema.sql`)
- [x] 50 produits insérés (`database/seed.sql`)

#### ✅ API ASP.NET Core
- [x] Projet créé (`src/Chopper.Api`)
- [x] Packages NuGet installés (Npgsql, EF Core)
- [x] Modèle `Product.cs` créé
- [x] DbContext configuré (`Data/AppDbContext.cs`)
- [x] Connection string configurée (`appsettings.Development.json`)
- [x] **ProductsController** créé et fonctionnel

---

### 2025-01-17 - Session 1 : Fondations

#### ✅ Infrastructure
- [x] Création du projet local
- [x] Initialisation Git
- [x] Connexion GitHub (https://github.com/genwox/TnChopper-)
- [x] Documentation cadre pédagogique

#### ✅ Définition du problème métier
- [x] Approche progressive définie (static data → APIs)
- [x] Décision : ID interne Phase 1, scraping Phase 2
- [x] Stratégie légale : privilégier APIs affiliation

#### ✅ Structure de données produit
- [x] 10 exemples de produits créés
- [x] Champs définis et justifiés :
  - Prix : DECIMAL (159.00)
  - Tailles : Array ["XS", "S", "M"]
  - Couleurs : Array (vide si N/A)
  - Styles : Array avec enrichissement possible
  - Catégories : Tags flexibles (array)
  - Casse : minuscules en base
- [x] Schema strict adopté (tous champs présents)
- [x] Documentation complète : `PRODUCT_SCHEMA.md`
- [x] Exemples JSON validés (veste, bijoux, produit incomplet)

---

## 📍 Où on en est MAINTENANT

### ✅ Phase 1 terminée !

**Dernière action complétée :**
✅ API fonctionnelle avec endpoints GET /api/products et GET /api/products/{id}

**Prochaine étape (Phase 2) :**
🎯 **Logique de recommandation simple**

**Options pour la Phase 2 :**
- Ajouter des filtres (par style, par budget, par marque)
- Ajouter la pagination
- Commencer la logique de recommandation

**Ce qui fonctionne actuellement :**
- `GET http://localhost:5170/api/products` → Liste des 50 produits
- `GET http://localhost:5170/api/products/{id}` → Un produit spécifique
- Gestion 404 si produit non trouvé

---

## 🔄 Pour reprendre

### Phrase de reprise avec Claude Code

Quand tu reviens sur le projet, écris :

> "Projet Chopper : Phase 1 terminée. API fonctionne. Prêt pour Phase 2 (filtres/recommandations)."

Ou simplement :

> "Chopper : suite = Phase 2 (filtres ou pagination)"

---

## 📝 Questions en suspens

### À clarifier avant le SQL
- Aucune (structure JSON finalisée)

### Futures questions (pour plus tard)
- [ ] Entités User : quels champs ?
- [ ] Relations User ↔ Product : quelles tables intermédiaires ?
- [ ] Logique de recommandation : quelles règles concrètes ?
- [ ] Actions chatbot : quelles 5 actions principales ?
- [ ] Mémoire conversationnelle : oui/non ?

---

## 📚 Ressources créées

| Fichier | Contenu | Statut |
|---------|---------|--------|
| `CADRE_PEDAGOGIQUE.md` | Règles de collaboration pédagogique | ✅ Finalisé |
| `QUESTIONS_PRODUIT.md` | Décisions métier et architecture | 🔄 Section 1 complétée |
| `PRODUCT_SCHEMA.md` | Structure JSON produit complète | ✅ Finalisé |
| `README.md` | Vue d'ensemble projet | ✅ Initial |

---

## 🎯 Prochaines étapes (roadmap)

### ✅ Phase 1 - TERMINÉE
1. ✅ Schema SQL PostgreSQL
2. ✅ Dataset 50 produits
3. ✅ Setup Supabase
4. ✅ API ASP.NET Core (structure projet)
5. ✅ Endpoints basiques (GET /api/products, GET /api/products/{id})

### Phase 2 - À VENIR
6. **Filtres** (par style, budget, marque) ← NEXT
7. **Pagination** (ne pas retourner 50 produits d'un coup)
8. **Logique de recommandation simple**

### Phase 3+ - Long terme
9. **Chatbot interface** (intégration LLM)
10. **IA embeddings** (similarité vectorielle)
11. **Automatisation** (APIs externes)

---

## 💡 Notes importantes

### Décisions architecturales clés à retenir
- **Phase 1 = apprentissage logique métier** (pas d'IA complexe tout de suite)
- **Schema strict** = tous les champs présents (arrays vides si N/A)
- **Tags flexibles** = catégories et styles multiples autorisés
- **Enrichissement intelligent** = styles peuvent être inférés (marque/catégorie)

### Philosophie du projet
> "Ce projet n'a PAS pour objectif d'être le plus rapide, mais d'être compris de bout en bout."

---

**Dernière mise à jour :** 2026-01-21 (Session 3)
**Prochaine session :** Phase 2 - Filtres et/ou pagination
