+++
title   = "Travailler avec moi"
type    = "contract"
slug    = "entreprise"
weight  = 10
nav     = "Entreprises"
description = "Support PostgreSQL entreprise : je ne suis pas une société de services. Une intervention ponctuelle par l'auteur de CREATE EXTENSION, et l'exploitation quotidienne confiée à Data Bene."
kicker  = "Ce que je fais, et ce que je ne fais pas"
summary = "Je ne suis pas une société de services. Une seule personne, des interventions ponctuelles, et un partenaire pour tout ce qui demande une équipe et une astreinte."

[cta]
  label = "Demander un devis"
  href  = "#form-quote"
  note  = "Réponse sous deux jours ouvrés. Si votre besoin relève de l'exploitation quotidienne, je vous le dis tout de suite et je vous oriente."

# Ce que je fais réellement. Pas de grille tarifaire ici : le périmètre se
# discute, et le seul tarif ferme du site est celui de l'Immersion.
[[tiers]]
  id      = "onsite"
  name    = "L'intervention"
  tag     = "format conférence"
  bullets = [
    "Une journée sur site, format conférence : présentation puis vos requêtes",
    "Sur votre schéma réel, vos plans d'exécution, votre volumétrie",
    "Quatre par an au total, tous clients confondus — pas quatre par client",
    "Tarif ferme, publié sur la page de l'Immersion",
  ]

[[tiers]]
  id      = "review"
  name    = "Le second avis"
  tag     = "ponctuel"
  bullets = [
    "Une décision structurante à trancher : modélisation, indexation, migration",
    "Revue de schéma, de plans d'exécution, de stratégie d'extensions",
    "Quelques jours, un rapport écrit, pas un engagement à l'année",
    "Utile surtout avant de construire, rarement après",
  ]

[[tiers]]
  id      = "oss"
  name    = "Mes outils open source"
  tag     = "maintenance amont"
  bullets = [
    "pgloader, pgcopydb, pg_auto_failover, pgextwlist",
    "Correctifs priorisés, publication des versions, influence sur la feuille de route",
    "Souscription récurrente, tarifs publics",
    "C'est le rôle des Membres — la page dédiée détaille les paliers",
  ]

# Le point le plus important de la page : dire non clairement, et dire à qui
# s'adresser. Un « oui » à tout est le signal le moins crédible qui soit.
[not_this]
  title = "Ce que je ne fais pas"
  lede  = "Je suis seul. Il n'y a ni astreinte 24×7, ni équipe d'exploitation, ni régie derrière moi, et prétendre le contraire se verrait au premier incident."
  items = [
    "Astreinte 24×7 et infogérance de production",
    "DBA au quotidien, en régie ou en délégation",
    "Support de niveau 1 et 2 sur un parc",
    "Prestation au forfait sur plusieurs mois",
  ]

  [not_this.partner]
    name = "Data Bene"
    url  = "https://data-bene.io/"
    note = "Pour tout cela, je travaille avec **Data Bene** — l'ancienne équipe 2ndQuadrant France, où j'ai moi-même passé plusieurs années. Ils ont les équipes, l'astreinte et les processus. Quand un projet demande les deux, nous intervenons ensemble : eux sur l'exploitation, moi sur le ponctuel et sur l'amont open source."

# Alimente le nœud schema.org Service. Offre sur devis, donc sans prix.
[service]
  type       = "Expertise PostgreSQL et maintenance open source amont"
  areaServed = "Europe"
+++

La plupart des sites de conseil vous disent oui à tout. Celui-ci vous dit
d'abord non, parce que la moitié des demandes qui arrivent ici relèvent de
l'exploitation quotidienne, et que je ne la fais pas.

Ce que je fais tient en une phrase : j'interviens ponctuellement, sur les
décisions structurantes et sur le code que j'écris et que je maintiens.
