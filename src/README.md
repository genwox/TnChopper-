# 💻 Source Code - Backend API

Ce dossier contiendra le code source de l'application (API ASP.NET Core).

---

## 📋 Statut actuel

⏳ **Vide** - En attente de création du projet ASP.NET Core

---

## 🏗️ Architecture prévue

```
src/
├── Chopper.API/              → API REST (contrôleurs, endpoints)
├── Chopper.Core/             → Logique métier (services, recommandation)
├── Chopper.Data/             → Accès données (repositories, EF Core)
└── Chopper.Tests/            → Tests unitaires et intégration
```

---

## 🎯 Composants à venir

### Phase 1 : API simple
- Controllers : `ProductsController`
- Services : `ProductService`, `RecommendationService`
- Data : `ProductRepository`, `DbContext`

### Phase 2 : Chatbot
- `ChatbotController`
- `ConversationService`
- Intégration LLM (OpenAI, Semantic Kernel)

### Phase 3 : IA avancée
- `EmbeddingService`
- `SimilarityService`
- `VectorRepository` (pgvector)

---

## 📚 Stack technique

- **Framework :** ASP.NET Core 8+
- **ORM :** Entity Framework Core
- **Base de données :** PostgreSQL (via Supabase)
- **IA :** OpenAI API, Semantic Kernel
- **Tests :** xUnit

---

## 🔗 Référence

Architecture basée sur : `docs/CADRE_PEDAGOGIQUE.md` (section "Périmètre technique")

**Prochaine étape :** Créer projet ASP.NET Core (après schema SQL + dataset)
