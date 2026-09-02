+++
title   = "La masterclass"
type    = "masterclass"
slug    = "masterclass"
weight  = 20
nav     = "Masterclass"
description = "Formation PostgreSQL avancée sur site, une ou deux journées, à partir de votre schéma et de vos requêtes. 3 000 € / 5 000 €, quatre sessions par an."
kicker  = "The Art of PostgreSQL · sur site"
summary = "Formation PostgreSQL avancée sur site, sur une ou deux journées, à partir de votre schéma et de vos requêtes. Quatre sessions par an, pas davantage."

[cta]
  label = "Réserver une session"
  href  = "#form-masterclass"
  note  = "Disponibilité limitée — quatre sessions par an."

# La rareté est un fait du calendrier, pas un argument. Elle est affichée.
[scarcity]
  max_per_year = 4
  label = "sessions par an, maximum"
  note  = "Le reste de l'année part en support et en développement open source. Les créneaux se réservent généralement un à deux trimestres à l'avance."

# Déroulé d'une journée type.
[[agenda]]
  id    = "morning"
  name  = "Matin — présentation"
  lede  = "Une demi-journée de contenu structuré, tiré du livre et retravaillé pour votre contexte."
[[agenda]]
  id    = "afternoon"
  name  = "Après-midi — questions et cas réels"
  lede  = "Une demi-journée sur vos requêtes, votre schéma, vos plans d'exécution. Pas d'exemple générique."

[materials]
  title = "Support envoyé à l'avance"
  note  = "Le livre et les supports sont envoyés aux participants avant la session, pour que la journée serve aux questions plutôt qu'à la découverte."

# Tarifs affichés : ici, contrairement au contrat entreprise, le prix est ferme.
[pricing]
  currency = "EUR"
  note     = "Hors frais de déplacement et d'hébergement, facturés au réel."

  [[pricing.formats]]
    id       = "one-day"
    name     = "Une journée"
    price    = 3000
    workload = "PT7H"
    lede     = "Une demi-journée de présentation, une demi-journée de questions et de cas réels."
  [[pricing.formats]]
    id       = "two-days"
    name     = "Deux journées"
    price    = 5000
    workload = "PT14H"
    lede     = "Le format long : plus de sujets couverts, et le temps de reprendre vos requêtes une par une."

[course]
  mode = "onsite"
+++

La masterclass reprend le contenu de *The Art of PostgreSQL* et le confronte à
votre code. L'objectif n'est pas de couvrir un programme, c'est que votre équipe
reparte avec ses propres requêtes réécrites.
