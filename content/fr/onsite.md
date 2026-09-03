+++
title   = "L'Immersion"
type    = "onsite"
slug    = "immersion"
weight  = 20
nav     = "Immersion"
description = "Immersion PostgreSQL sur site, une ou deux journées, à partir de votre schéma et de vos requêtes. 3 000 € / 6 000 €, quatre sessions par an au total, tous clients confondus."
kicker  = "Sur site · quatre par an, au total"
summary = "Une journée chez vous avec l'auteur de The Art of PostgreSQL : une demi-journée de présentation, une demi-journée sur vos requêtes. Une ou deux journées, quatre fois par an — pas quatre fois par client."

[cta]
  label = "Réserver une session"
  href  = "#form-onsite"
  note  = "Disponibilité limitée : quatre sessions par an au total, tous clients confondus."

# La rareté est un fait du calendrier, pas un argument, et elle porte sur le
# calendrier ENTIER, pas sur un client donné : le libellé et la note le disent
# explicitement pour ne rien laisser à l'ambiguïté.
[scarcity]
  max_per_year = 4
  label = "sessions par an, au total — tous clients confondus"
  note  = "Ce n'est pas quatre sessions par client : c'est quatre sessions pour l'année, toutes entreprises confondues. Le reste de l'année part en support et en développement open source. Les créneaux se réservent généralement un à deux trimestres à l'avance."

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
  # Répété sous CHAQUE prix (pas seulement en note de bas de page) : c'est le
  # genre de détail qu'on découvre trop tard s'il n'est visible qu'une fois,
  # tout en bas. Une facture surprise sur les frais est le plus sûr moyen de
  # perdre la confiance qu'un prix public est censé construire.
  note     = "Hors frais de déplacement et d'hébergement, facturés au réel, en sus du prix ci-dessus."

  [[pricing.formats]]
    id       = "one-day"
    name     = "Une journée"
    price    = 3000
    workload = "PT7H"
    lede     = "Une demi-journée de présentation, une demi-journée de questions et de cas réels."
  [[pricing.formats]]
    id       = "two-days"
    name     = "Deux journées"
    price    = 6000
    workload = "PT14H"
    lede     = "Le format long : plus de sujets couverts, et le temps de reprendre vos requêtes une par une."

[course]
  mode = "onsite"
+++

L'immersion reprend le contenu de *The Art of PostgreSQL* et le confronte à
votre code. L'objectif n'est pas de couvrir un programme, c'est que votre équipe
reparte avec ses propres requêtes réécrites.

À ne pas confondre avec la [Live Masterclass](https://theartofpostgresql.com/masterclass/),
qui est le format à distance, récurrent et ouvert à tous. L'immersion se tient
chez vous, une fois, sur votre code.
