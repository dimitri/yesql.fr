+++
title   = "Travailler avec moi"
type    = "contract"
slug    = "entreprise"
weight  = 10
nav     = "Entreprise"
description = "Expertise PostgreSQL, en direct : sessions sur site et financement de la maintenance amont, par la personne qui fait le travail — sans couche commerciale, sans équipe cachée, sans intermédiaire."
kicker  = "En direct, volontairement"
summary = "Vous parlez à la personne qui fait le travail. Pas de chargé de compte qui traduit votre problème pour quelqu'un d'autre, pas d'équipe que vous n'avez jamais rencontrée. Ce n'est pas une limite — c'est le principe."

# Alimente le nœud schema.org Service. Le travail sur devis se discute par
# e-mail ; les deux offres tarifées ont déjà leur propre page Service/Course.
[service]
  type       = "Expertise PostgreSQL et maintenance open source amont"
  areaServed = "Europe"

# Les deux choses pour lesquelles on peut réellement s'engager. Volontairement
# limité à deux : chacune renvoie vers sa propre page, avec son propre prix et
# son propre engagement.
[[tiers]]
  id      = "onsite"
  name    = "Immersion"
  tag     = "une journée, en personne"
  bullets = [
    "Une journée chez vous, sur votre schéma et vos requêtes",
    "Préparée à l'avance, pas un support générique",
    "Tarif ferme, publié sur sa propre page",
  ]
  href = "/fr/immersion/"
  cta  = "Voir la page Immersion"

[[tiers]]
  id      = "members"
  name    = "Maintenance amont"
  tag     = "récurrent, finance les outils"
  bullets = [
    "pgloader, pgcopydb, pg_auto_failover, pgextwlist",
    "Correctifs priorisés, versions publiées, un mot à dire sur la feuille de route",
    "Paliers publics, à partir de gratuit",
  ]
  href = "/fr/membres/"
  cta  = "Voir les paliers"

[contact]
  label   = "Pour tout le reste"
  note    = "Une question structurante, un second avis, quelque chose qui ne rentre dans aucune des deux cases ci-dessus — écrivez directement, sans formulaire entre nous."
  email   = "dim@tapoueh.org"
  subject = "Travailler ensemble"
+++

Cette activité fonctionne comme une pratique solo, volontairement. Parler à
la personne qui va réellement faire le travail — et non à un chargé de
compte qui le relaie à quelqu'un d'autre — fait qu'il se perd moins de
choses entre le problème et la correction, et que l'incitation est de le
résoudre, pas d'occuper un palier de support.

Rester indépendant de cette façon a besoin de la même chose que n'importe
quelle petite structure ciblée : être financée par des gens qui ont un
besoin de production réel, pas par un plan marketing ou une feuille de
route décidée ailleurs. C'est ce qui garde le travail tourné vers ce qui
compte pour ceux qui le paient, et c'est pourquoi les deux offres présentées
ici sont tarifées et publiques plutôt que vendues via un processus
commercial — une journée sur site, et le financement de la maintenance des
outils open source sur lesquels ce travail s'appuie.

Pour l'exploitation de production complète — une astreinte, un SLA, une
équipe disponible — c'est un travail d'une autre nature, et
[Data Bene](https://data-bene.io/), l'ancienne équipe 2ndQuadrant France, le
fait bien ; nous travaillons ensemble quand un projet a besoin des deux.
