+++
title   = "Le club utilisateurs"
type    = "club"
slug    = "club"
weight  = 30
nav     = "Le club"
description = "Support pro par abonnement sur pg_auto_failover, pgcopydb et pgloader, et financement participatif de fonctionnalités open source."
kicker  = "Deux mécanismes, distincts"
summary = "Financer une fonctionnalité open source précise, ou souscrire un support pro récurrent sur les outils que je maintiens."

[cta]
  label = "Rejoindre le club"
  href  = "#form-club"
  note  = "Une adresse e-mail. Rien d'autre."

# ---------------------------------------------------------------------------
# Carte A — financement participatif à seuil. Les campagnes elles-mêmes sont
# découvertes automatiquement dans content/<lang>/campaigns/ ; ce bloc ne porte
# que le texte d'introduction de la carte.
# ---------------------------------------------------------------------------
[fund]
  title = "Financer une fonctionnalité"
  tag   = "campagne à seuil"
  lede  = "Une fonctionnalité identifiée, un montant cible, un seuil de démarrage. En dessous du seuil, le développement ne commence pas et rien n'est appelé. Au-dessus, le code est écrit et publié sous licence libre."
  bullets = [
    "Périmètre technique écrit à l'avance, pas une intention",
    "Seuil de démarrage affiché, pas implicite",
    "Le résultat est open source, y compris pour ceux qui n'ont pas financé",
  ]

# ---------------------------------------------------------------------------
# Carte B — abonnement de support pro. Tarifs volontairement indicatifs.
# ---------------------------------------------------------------------------
[subscription]
  title = "Support pro, par abonnement"
  tag   = "récurrent"
  lede  = "Un support récurrent sur les outils que j'écris : pg_auto_failover, pgcopydb, pgloader. Mise en place, correction de bugs, évolutions."
  currency = "EUR"
  period   = "mois"
  price_note = "Tarifs indicatifs, à confirmer au contrat."

  [[subscription.tiers]]
    id     = "daily"
    name   = "Quotidien"
    price  = 500
    lede   = "L'exploitation au jour le jour."
    bullets = [
      "Questions d'usage et de configuration",
      "Correction des bugs que vous remontez, priorisée",
      "Réponse sous deux jours ouvrés",
    ]

  [[subscription.tiers]]
    id     = "escalation"
    name   = "Escalade"
    price  = 1500
    lede   = "Quand la production décroche."
    bullets = [
      "Tout le palier quotidien",
      "Escalade sur incident, réponse sous quatre heures ouvrées",
      "Analyse post-incident écrite",
    ]

  [[subscription.tiers]]
    id     = "strategic"
    name   = "Stratégique"
    price  = 4000
    lede   = "Quand votre feuille de route dépend de l'outil."
    bullets = [
      "Tout le palier escalade",
      "Évolutions spécifiques priorisées dans la feuille de route amont",
      "Point trimestriel d'architecture",
    ]
+++

Deux façons de financer le travail open source, qui ne se mélangent pas : l'une
finance **une fonctionnalité**, l'autre finance **une disponibilité**.
