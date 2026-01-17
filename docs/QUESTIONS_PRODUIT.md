# 🧠 Questions directrices — Chopper

Ce fichier contient les **questions fondamentales** à répondre avant de concevoir l'architecture technique.

⚠️ **Ne pas sauter ces étapes.** Chaque réponse influence directement la modélisation des données et l'architecture logicielle.

---

## 📋 Statut

- [x] Section 1 (Problème métier) - En cours de complétion
- [ ] Toutes les questions ont une réponse réfléchie
- [ ] Les réponses ont été validées par un cas d'usage concret
- [ ] L'architecture découle logiquement de ces réponses

---

## 1️⃣ Problème métier

### Question : D'où viennent les vêtements ?

**Options possibles :**
- [ ] Base de données statique (alimentée manuellement)
- [ ] Scraping de sites marchands
- [ ] API de partenaires e-commerce
- [x] Mix de plusieurs sources
- [ ] Autre : _____________

**Ma réponse :**
> **Approche progressive (Option D) :**
>
> **Phase 1 (MVP - maintenant) :**
> - Démarrer avec données statiques (50-100 produits)
> - Mix de dataset public + saisie manuelle
> - Focus sur la logique de recommandation
>
> **Phase 2 (évolution) :**
> - Ajout d'APIs officielles d'affiliation (Amazon, Awin, CJ)
> - Scraping léger si nécessaire (attention aspects légaux)
> - Architecture permettant d'ajouter facilement de nouvelles sources
>
> **Décision clé :** ID produit interne d'abord (partage entre utilisateurs), puis ajout produits via URL externe plus tard.

**Implications techniques :**
> - **Architecture en couches :** Abstraction "ProductCatalog" permettant plusieurs sources de données
> - **Base de données :** PostgreSQL avec structure flexible pour intégrer différentes sources
> - **Tâches planifiées :** Pas immédiatement nécessaire (Phase 2)
> - **Légalité :** Privilégier APIs officielles pour un projet publiable/vendable

---

### Question : "Style utilisateur" = quoi concrètement ?

**Options possibles :**
- [ ] Tags prédéfinis (casual, sportswear, elegant...)
- [ ] Marques préférées
- [ ] Photos de référence (Pinterest, TikTok)
- [ ] Historique like/dislike
- [ ] Analyse de garde-robe existante
- [ ] Mix de plusieurs
- [ ] Autre : _____________

**Ma réponse :**
> _(à compléter)_

**Implications techniques :**
> _(Quels champs dans la base ? Quels services IA nécessaires ?)_

---

### Question : Wishlist vs Recommandation — quelle relation ?

**Scénarios à clarifier :**
1. La wishlist influence-t-elle les futures recommandations ?
2. Est-ce juste un panier sauvegardé ?
3. Les items de la wishlist deviennent-ils des références de style ?

**Ma réponse :**
> _(à compléter)_

**Implications techniques :**
> _(Relations en base de données ? Logique de recommandation ?)_

---

## 2️⃣ Logique de recommandation (sans IA)

### Question : Quelles sont 3 règles simples qui recommandent un produit SANS IA ?

**Exemples fictifs :**
- "Si budget < 50€ ET catégorie = jean → montrer jeans < 50€"
- "Si l'utilisateur a liké 3 produits de marque X → proposer d'autres produits de X"

**Mes 3 règles :**
1. _(à compléter)_
2. _(à compléter)_
3. _(à compléter)_

**Pourquoi ces règles ? :**
> _(à compléter)_

---

### Question : Comment mesurer si une recommandation est "bonne" ?

**Indicateurs possibles :**
- [ ] L'utilisateur clique sur le produit
- [ ] Il l'ajoute à la wishlist
- [ ] Il dit "j'aime" dans le chat
- [ ] Il achète (si suivi d'achat)
- [ ] Il demande des produits similaires
- [ ] Autre : _____________

**Ma réponse :**
> _(à compléter)_

**Implications techniques :**
> _(Quels événements tracker ? Quelle table en base ?)_

---

## 3️⃣ Architecture données

### Question : Quelles sont les 5 entités principales du domaine ?

**Exemples pour démarrer :**
1. Utilisateur
2. Produit
3. Préférence
4. _(à compléter)_
5. _(à compléter)_

**Pour chaque entité, poser la question :**
- Quels attributs essentiels ?
- Quelle relation avec les autres ?

---

### Question : Entre "Utilisateur" et "Produit", quelles relations existent ?

**Relations possibles :**
- [ ] "a aimé"
- [ ] "a dans sa wishlist"
- [ ] "a été recommandé"
- [ ] "a rejeté"
- [ ] "a acheté" (si historique)
- [ ] "a vu"
- [ ] Autre : _____________

**Mes relations retenues :**
> _(à compléter)_

**Schéma mental (optionnel) :**
```
Utilisateur ─[relation]─> Produit
```

---

## 3️⃣ bis - Structure de données produit (décisions finales)

### Champs de la table `Products`

| Champ | Type | Obligatoire ? | Justification |
|-------|------|---------------|---------------|
| **id** | integer | ✅ Oui | Identifiant unique interne Chopper |
| **name** | string | ✅ Oui | Impossible de présenter un produit sans nom |
| **price** | decimal | ✅ Oui | Nécessaire pour filtrer par budget |
| **url** | string | ✅ Oui | Lien vers le produit original (pour achat) |
| **image_url** | string | ✅ Oui | Visuel essentiel pour la décision utilisateur |
| **brand** | string | ✅ Oui | Confiance + découverte de nouvelles références |
| **category** | string | ✅ Oui | Correspond à la demande utilisateur |
| **sizes_available** | string[] | ✅ Oui | Savoir si achat immédiat possible |
| **colors_available** | string[] | ❌ Non (NULL ok) | Utile mais pas toujours pertinent (ex: bijoux) |
| **styles** | string[] | ❌ Non (NULL ok) | Important mais peut être enrichi via logique métier |

### Décisions architecturales clés

#### 1. Couleur : Optionnelle
**Décision :** Champ `colors_available` peut être NULL

**Raison :** Certains produits (bijoux, accessoires) n'ont pas de variation de couleur pertinente

**Exemple :**
```json
{
  "name": "Bague Margiela",
  "colors_available": null
}
```

---

#### 2. Style : Optionnel avec enrichissement intelligent ⭐

**Décision :** Champ `styles` peut être NULL MAIS logique de fallback basée sur marque/catégorie

**Raison :** Accepter des produits sans style permet un catalogue plus large, tout en gardant la possibilité d'enrichir automatiquement

**Logique d'enrichissement (à implémenter) :**
```
IF styles == NULL
  → Regarder mapping marque/catégorie

Exemples :
- Marque "Levi's" + Catégorie "Jean" → styles = ["workwear", "casual"]
- Marque "Stüssy" → styles = ["streetwear"]
- Marque "Uniqlo" → styles = ["casual"]
```

**Avantage :** On peut commencer avec des produits partiellement tagués et améliorer progressivement

---

#### 3. Catégories et Styles : Tags flexibles (pas hiérarchie stricte)

**Décision :** Un produit peut avoir plusieurs catégories/styles

**Raison :** Reflète la réalité (une veste Carhartt = workwear + streetwear)

**Exemple :**
```json
{
  "name": "Veste en jean Carhartt",
  "category": "Veste",
  "styles": ["workwear", "streetwear"]
}
```

---

#### 4. Exemples de produits (validés)

**Dataset de validation :**
1. Veste utilitaire Arket - 159$ - Catégorie : Veste - Style : casual - Tailles : XS, S, M, L, XL
2. Jordan 1 smoke grey - 190$ - Catégorie : Basket - Style : streetwear - Tailles : 43-45
3. Pantalon barrel Uniqlo - 40$ - Catégorie : Pantalon - Style : casual - Tailles : XS-XXL
4. Veste en jean Carhartt - 140$ - Catégorie : Veste - Style : workwear - Tailles : XS-XXL
5. Ceinture Diesel - 159$ - Catégorie : Ceinture - Style : streetwear - Taille unique
6. Hoodie Uniqlo - 40$ - Catégorie : Pull - Style : casual - Tailles : XS-XL
7. Veste velours Stüssy - 200$ - Catégorie : Veste - Style : streetwear - Tailles : XS-XL
8. Cardigan Uniqlo - 50$ - Catégorie : Pull - Style : casual - Tailles : XS-XL - Couleurs : rouge, noir, bleu, beige, gris, marron
9. Bague Margiela - 190$ - Catégorie : Bijoux - Style : streetwear/luxe - Tailles : 50mm, 55mm, 60mm
10. Beanie Stüssy - 70$ - Catégorie : Accessoire - Style : streetwear - Taille unique

**Observations :**
- Variété de prix : 40$ - 200$ ✅
- Variété de styles : casual, streetwear, workwear, luxe ✅
- Variété de catégories : vêtements, chaussures, accessoires, bijoux ✅
- Marques variées : Uniqlo (accessible), Stüssy (streetwear), Margiela (luxe) ✅

---

## 4️⃣ Chatbot conversationnel

### Question : Quelles sont les 5 actions que l'utilisateur peut demander ?

**Mes 5 actions principales :**
1. _(à compléter)_
2. _(à compléter)_
3. _(à compléter)_
4. _(à compléter)_
5. _(à compléter)_

**Pour chaque action :**
- Quel service backend est appelé ?
- Quelles données sont nécessaires ?

---

### Question : Le chatbot doit-il avoir de la mémoire conversationnelle ?

**Scénarios à clarifier :**
- Utilisateur : "Trouve-moi un jean"
- Chopper : "Voici 3 jeans"
- Utilisateur : "Le deuxième est trop cher" ← doit-il se souvenir de "deuxième" ?

**Ma réponse :**
- [ ] Oui, mémoire de conversation
- [ ] Non, chaque question est indépendante
- [ ] Hybride : _____________

**Implications techniques :**
> _(Stockage de session ? Contexte dans les prompts ?)_

---

## 5️⃣ Scénario de validation

### Cas d'usage concret

**Marie** ouvre Chopper et dit :
> *"Je cherche une veste légère pour l'été, j'aime le style casual, budget max 80€"*

**Parcours technique attendu :**

#### Étape 1 : Réception du message
- Qui reçoit ? _(chatbot, API, autre ?)_
- Que fait-il en premier ? _(à compléter)_

#### Étape 2 : Extraction d'informations
- Quelles informations sont extraites ?
  - Catégorie : _____________
  - Style : _____________
  - Budget : _____________
  - Saison : _____________
  - Autre : _____________

#### Étape 3 : Logique de recommandation
- Quel composant est appelé ? _(à compléter)_
- Comment la recommandation est-elle construite ? _(à compléter)_
- Combien de résultats ? _(à compléter)_

#### Étape 4 : Réponse à Marie
- Format de la réponse ? _(texte, liste, cartes produits ?)_
- Quelles informations sont affichées par produit ?

#### Étape 5 : Interaction suivante
Marie répond : *"J'aime la deuxième"*

- Que se passe-t-il en base de données ? _(à compléter)_
- Quelle action est déclenchée ? _(ajout wishlist, like, autre ?)_
- Quelle est la prochaine réponse du chatbot ? _(à compléter)_

---

## 📌 Comment utiliser ce fichier

### Approche recommandée :

1. **Ne pas tout remplir d'un coup**
   - Une section à la fois
   - Prendre le temps de réfléchir

2. **Tester chaque réponse avec un cas concret**
   - "Si je réponds X, est-ce que le scénario Marie fonctionne ?"

3. **Revenir sur ce fichier avant chaque grande décision technique**
   - "Est-ce que mon architecture découle de ces réponses ?"

4. **Mettre à jour si la vision évolue**
   - Ce fichier n'est pas figé
   - Il évolue avec la compréhension

---

## 🎯 Objectif

Quand toutes ces questions ont une réponse **cohérente**, la modélisation des données devient **évidente**.

Ne pas passer à l'étape "modélisation" tant que ce fichier n'est pas complété.

---

## ✅ Validation finale

Avant de passer à la suite, je dois pouvoir :
- [ ] Expliquer chaque réponse à l'oral
- [ ] Dérouler le scénario Marie de bout en bout
- [ ] Justifier pourquoi ces choix plutôt que d'autres
