+++
title   = "Dimitri Fontaine"
type    = "about"
slug    = "a-propos"
weight  = 50
nav     = "À propos"
description = "Contributeur majeur de PostgreSQL, auteur de CREATE EXTENSION et des Event Triggers, de The Art of PostgreSQL, de pgloader, pgcopydb et pg_auto_failover."
kicker  = "À propos"
summary = "Contributeur majeur de PostgreSQL. Deux fonctionnalités que j'ai écrites sont présentes dans toutes les installations de PostgreSQL du monde."

[photo]
  src = "/img/dimitri-fontaine.png"
  alt = "Dimitri Fontaine"
  credit = "Photo : Oleg Bartunov"

# Les contributions au cœur de PostgreSQL. C'est la preuve la plus forte du
# site : ce code tourne chez tout le monde, y compris chez vos concurrents.
[[core]]
  name = "CREATE EXTENSION"
  url  = "https://www.postgresql.org/docs/current/extend-extensions.html"
  lede = "Le système de paquets qui permet de distribuer et d'installer des modules complémentaires. Avant les extensions, un module tiers imposait de patcher les sources ; depuis, ce sont des citoyens de première classe de l'écosystème."
[[core]]
  name = "CREATE EVENT TRIGGER"
  url  = "https://www.postgresql.org/docs/current/event-triggers.html"
  lede = "Des déclencheurs au niveau DDL, qui se déclenchent sur les changements de schéma et donnent le contrôle programmatique sur CREATE TABLE, DROP INDEX et le reste du vocabulaire DDL."

[[facts]]
  label = "Statut"
  value = "PostgreSQL Major Contributor"
  url   = "https://www.postgresql.org/community/contributors/"
[[facts]]
  label = "Debian"
  value = "Mainteneur, co-constructeur de apt.postgresql.org"
  url   = "https://wiki.postgresql.org/wiki/Apt"
[[facts]]
  label = "Conférences"
  value = "Orateur régulier depuis 2008"
  url   = "https://tapoueh.org/conf/"
[[facts]]
  label = "Parcours"
  value = "2ndQuadrant, puis Citus Data — racheté par Microsoft en 2019"
[[facts]]
  label = "Livre"
  value = "The Art of PostgreSQL, 52 chapitres"
  url   = "https://theartofpostgresql.com/"
+++

Développeur PostgreSQL, auteur et constructeur open source, basé près de Paris.
L'essentiel de ce que j'ai fait professionnellement depuis plus de vingt ans
tourne autour de PostgreSQL : écrire du code pour la base elle-même, construire
des outils par-dessus, l'enseigner, et parfois monter ou diriger des entreprises
autour.

## Parcours

J'ai fondé plusieurs entreprises avec l'open source au cœur, occupé des postes
de CTO et de CEO, puis je suis revenu à un rôle d'ingénieur principal. J'ai
passé plusieurs années chez 2ndQuadrant à faire du conseil et du développement
PostgreSQL, puis rejoint Citus Data pour travailler sur PostgreSQL distribué et
construire pg_auto_failover. Citus a été racheté par Microsoft en 2019.

## Pourquoi « YeSQL »

C'était un jeu de mots sur NoSQL, à l'époque où tout le monde expliquait que le
relationnel avait fait son temps. La blague a vieilli, la position non : ces
années-là, les équipes ont déplacé dans leur code applicatif un travail que leur
base de données faisait déjà mieux — jointures, agrégations, contraintes,
transactions.

C'est la même idée que le livre : la plupart des équipes laissent au sol une
puissance de requête considérable, non pas parce que PostgreSQL est difficile,
mais parce que personne ne leur a montré ce qu'il sait réellement faire.
