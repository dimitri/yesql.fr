+++
title   = "L'Immersion"
type    = "onsite"
slug    = "immersion"
weight  = 20
nav     = "Immersion"
description = "Journée technique sur site, personnalisée et animée en personne : à partir de votre schéma et de vos requêtes. 4 500 € / 8 000 €, quatre sessions par an au total, tous clients confondus."
kicker  = "Sur site · quatre par an, au total"
summary = "Une session technique complète, préparée pour vous et animée en personne : une demi-journée de présentation, une demi-journée sur vos requêtes. Une ou deux journées, quatre fois par an — pas quatre fois par client."

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

# Comment une session se prépare, en quatre étapes. Volontairement simple :
# ce n'est pas un cahier des charges, c'est de quoi savoir à quoi s'attendre
# et quand s'y prendre.
[[workflow]]
  id    = "book"
  step  = "1"
  name  = "Réserver une date"
  lede  = "Au plus tôt, et six semaines avant la session au minimum — le temps de préparer un contenu qui parle de votre code, pas d'un exemple générique."
[[workflow]]
  id    = "materials"
  step  = "2"
  name  = "Envoyer votre matériel"
  lede  = "Deux semaines avant : schéma (DDL), quelques requêtes lentes avec leur EXPLAIN, et le contexte métier — volumétrie, contraintes, ce qui a déjà été essayé."
[[workflow]]
  id    = "logistics"
  step  = "3"
  name  = "Confirmer la logistique"
  lede  = "Une semaine avant : lieu, salle, vidéoprojecteur, accès VPN si besoin, et la liste des participants."
[[workflow]]
  id    = "day"
  step  = "4"
  name  = "Le jour J"
  lede  = "Présentation le matin, vos requêtes l'après-midi — voir le déroulé ci-dessus."

# Le déplacement change le format possible, pas seulement le confort. Deux
# scénarios, décrits tels qu'ils se déroulent réellement.
[[travel]]
  id      = "short"
  title   = "Déplacement court"
  example = "France, Europe proche"
  steps = [
    "Mardi matin — trajet aller",
    "Mardi après-midi — première session",
    "Mercredi matin — seconde session",
    "Mercredi après-midi — trajet retour",
  ]
  note = "Le format « une journée » (deux demi-journées) tient sur deux jours de calendrier, aller-retour compris."
[[travel]]
  id      = "long"
  title   = "Déplacement long"
  example = "hors Europe"
  steps = [
    "Jour 1 — trajet aller",
    "Jour 2 — repos (décalage horaire)",
    "Jours 3 et 4 — les deux journées sur site",
    "Jour 5 — trajet retour",
  ]
  note = "Une semaine complète. Pour ces destinations, seul le format deux journées a du sens — le format une journée n'est pas proposé. La journée de repos est facturée au tarif journalier, en plus du forfait deux journées : au total trois journées facturées, plus déplacement et hébergement au tarif réel."

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
    price    = 4500
    workload = "PT7H"
    lede     = "Une demi-journée de présentation, une demi-journée de questions et de cas réels."
  [[pricing.formats]]
    id       = "two-days"
    name     = "Deux journées"
    price    = 8000
    workload = "PT14H"
    lede     = "La préparation est la même quel que soit le format et se partage sur les deux journées : plus de sujets couverts, et le temps de reprendre vos requêtes une par une."

[course]
  mode = "onsite"
+++

L'immersion est une session technique complète : préparée spécifiquement pour
vous, et animée en personne, pas un support générique récité. Elle reprend le
contenu de *The Art of PostgreSQL* et le confronte à votre code. L'objectif
n'est pas de couvrir un programme, c'est que votre équipe reparte avec ses
propres requêtes réécrites.

À ne pas confondre avec la [Live Masterclass](https://theartofpostgresql.com/masterclass/),
qui est le format à distance, récurrent et ouvert à tous. L'immersion se tient
chez vous, une fois, sur votre code.
