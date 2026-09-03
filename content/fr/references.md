+++
title   = "Références"
type    = "references"
slug    = "references"
weight  = 40
nav     = "Références"
description = "Preuves publiques et vérifiables : contributions au cœur de PostgreSQL, outils open source en production, livre et conférences. Références clients sur demande."
kicker  = "Ce qui est vérifiable"
summary = "Le travail public se vérifie sans me demander la permission. Le travail sous contrat est couvert par la confidentialité — les références se donnent en entretien."

# Un cas ci-dessous, Redpill Linpro, n'est pas une référence client toute
# neuve — il est repris du livre blanc 2018 de pgloader, où il était déjà
# publié sous ce nom par son propre auteur. Rien de nouveau n'est nommé ici
# sans cet accord préalable et déjà public.
#
# Pour en ajouter un autre, copier ce bloc et le remplir. La forme qui
# convainc est toujours la même : situation → ce que j'ai trouvé → ce qui a
# changé, avec un chiffre. Demander l'accord écrit du client avant de le
# nommer ; sans accord, « un opérateur télécom européen » vaut mieux que rien.
#
# [[cases]]
#   id      = "slug-du-cas"
#   client  = "Nom du client, ou secteur si anonyme"
#   tag     = "migration"                 # migration | performance | HA | formation
#   context = "La situation de départ, en une phrase, avec les volumes."
#   finding = "Ce que le diagnostic a révélé — la partie qui prouve l'expertise."
#   outcome = "Le résultat, chiffré : temps de migration, latence, coût, incidents."
#   quote   = "Une phrase du client, si vous l'avez."
#   author  = "Prénom Nom, rôle"
[[cases]]
  id      = "redpill-linpro"
  client  = "Redpill Linpro"
  tag     = "migration"
  context = "Un client de Redpill Linpro leur a demandé le moyen le plus efficace de migrer de Microsoft SQL Server vers PostgreSQL."
  finding = "Aucun connecteur source de pgloader ne couvrait encore MS SQL Server à l'époque — le chemin le plus rapide pour ce client n'existait pas."
  outcome = "Redpill Linpro a sponsorisé le connecteur. Il est sorti en open source, et profite donc aujourd'hui à tous les utilisateurs de pgloader, pas seulement au client qui en avait eu besoin le premier."
# ---------------------------------------------------------------------------

# Retours d'utilisateurs de pgloader, nommés exactement comme leurs auteurs
# les ont publiés eux-mêmes — dans le livre blanc 2018 de pgloader, ou dans
# leur propre tweet. Ne jamais inventer une attribution qui n'est pas déjà
# publique à la source. Le texte des citations reste en anglais, langue
# d'origine : traduire une citation directe la dénature.
[[quotes]]
  id     = "iwoca"
  text   = "We were able to migrate our main database from MySQL to Postgres, moving hundreds of tables used by our complex Django project. Dimitri implemented a new feature for us quickly and smoothly."
  source = "Andrea Crotti, Iwoca"
[[quotes]]
  id     = "complex"
  text   = "Fusionbox used pgloader on a project for a large government agency. We needed to migrate a large set of data from an existing SQL Server cluster to a new PostgreSQL solution. pgloader greatly reduced the time required to accomplish this complex migration."
  source = "Alexander Groth, Fusionbox"
  url    = "http://www.fusionbox.com/"
[[quotes]]
  id     = "one-tb"
  text   = "Made our migration really easy (~1Tb)."
  source = "CommaFeed, via Twitter"
  url    = "https://twitter.com/CommaFeed/status/568053907370450944"
[[quotes]]
  id     = "one-liner"
  text   = "Almost too easy — I just ran the one-liner and waited for 48 hours. Nothing to change in the app, thanks to Hibernate."
  source = "CommaFeed, via Twitter"
  url    = "https://twitter.com/CommaFeed/status/568053907370450944"

[quotes_note]
  title = "Ce que disent les utilisateurs"
  note  = "Comme publié dans le [livre blanc 2018 de pgloader](https://pgloader.io/MigratingToPostgreSQL.pdf), ou, pour CommaFeed, dans leur propre tweet."

[on_request]
  title = "Références clients"
  note  = "Les missions sont couvertes par des accords de confidentialité. Je donne des références nominatives, avec l'accord des clients concernés, au moment du devis — et je vous mets en relation directe quand c'est pertinent."

# La preuve publique, elle, n'a besoin de l'accord de personne.
[[public]]
  id    = "core"
  tag   = "cœur de PostgreSQL"
  title = "Deux fonctionnalités du cœur"
  lede  = "J'ai contribué `CREATE EXTENSION` et les Event Triggers au cœur de PostgreSQL. Ce code tourne dans toutes les installations de PostgreSQL, partout, depuis les versions 9.1 et 9.3."
  url   = "https://www.postgresql.org/community/contributors/"
  cta   = "Liste officielle des contributeurs"
[[public]]
  id    = "tools"
  tag   = "outils"
  title = "Trois outils en production"
  lede  = "pgloader est le standard de fait pour migrer vers PostgreSQL. pgcopydb et pg_auto_failover sont exploités par des équipes qui n'ont jamais eu à me parler. Le code, les tickets et les discussions sont publics."
  url   = "https://github.com/dimitri"
  cta   = "Les dépôts"
[[public]]
  id    = "migrations"
  tag   = "migrations"
  title = "Des migrations réellement livrées"
  lede  = "pgloader migre des bases entières depuis MySQL, SQLite, MS SQL Server et Oracle. Les retours ci-dessous viennent de ses utilisateurs, publiés sur pgloader.io."
  url   = "https://pgloader.io/"
  cta   = "pgloader.io"
[[public]]
  id    = "book"
  tag   = "écrit"
  title = "The Art of PostgreSQL"
  lede  = "52 chapitres sur l'écriture de SQL pour les développeurs, et vingt ans d'écriture technique sur tapoueh.org. C'est le support de l'Immersion, et vous pouvez le juger avant d'acheter quoi que ce soit."
  url   = "https://theartofpostgresql.com/"
  cta   = "Le livre"
+++

Une plaquette de références se fabrique. Un commit dans le cœur de PostgreSQL,
non. Cette page privilégie donc ce que vous pouvez vérifier vous-même, sans
m'écrire.
