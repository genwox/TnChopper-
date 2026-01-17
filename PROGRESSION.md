# 📊 Progression du projet Chopper

Ce fichier trackera l'avancement étape par étape.

---

## 🎯 Étapes globales (selon CADRE_PEDAGOGIQUE.md)

1. ✅ **Compréhension du problème métier**
2. 🔄 **Modélisation des données** (en cours)
3. ⏳ **API simple (sans IA)**
4. ⏳ **Recommandation basée sur des règles**
5. ⏳ **Chatbot comme interface**
6. ⏳ **IA avancée (embeddings, vision)**
7. ⏳ **Automatisation et amélioration UX**

---

## 📅 Historique détaillé

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

### 🔄 Étape en cours : Modélisation base de données

**Dernière action complétée :**
✅ Définition schema JSON produit (PRODUCT_SCHEMA.md créé)

**Prochaine étape :**
🎯 **Créer le schema SQL PostgreSQL**

**Pourquoi cette étape :**
- Transformer le JSON en tables PostgreSQL
- Comprendre types de données SQL (TEXT, DECIMAL, ARRAY)
- Définir contraintes et index
- Préparer la structure pour Supabase

**Fichiers à créer :**
- `schema.sql` ou `database/schema.sql`
- Tables : `products` (et potentiellement `users`, `interactions` plus tard)

---

## 🔄 Pour reprendre

### Phrase de reprise avec Claude Code

Quand tu reviens sur le projet, écris :

> "Projet Chopper : reprendre à l'étape schema SQL PostgreSQL. Lis CADRE_PEDAGOGIQUE.md et PRODUCT_SCHEMA.md pour le contexte."

Ou simplement :

> "Chopper : suite = SQL"

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

### Court terme (cette semaine ?)
1. **Schema SQL PostgreSQL** ← NEXT
2. **Dataset 50 produits** (JSON)
3. **Setup Supabase** (création projet + tables)

### Moyen terme
4. **API ASP.NET Core** (structure projet)
5. **Endpoints basiques** (GET /products, GET /products/:id)
6. **Logique de recommandation simple** (filtres budget/style)

### Long terme
7. **Chatbot interface** (intégration LLM)
8. **IA embeddings** (similarité vectorielle)
9. **Automatisation** (APIs externes)

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

**Dernière mise à jour :** 2025-01-17 (Session 1)
**Prochaine session :** Schema SQL PostgreSQL
