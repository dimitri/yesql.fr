+++
title   = "Références"
type    = "references"
slug    = "references"
weight  = 40
nav     = "Références"
description = "Preuves publiques et vérifiables : contributions au cœur de PostgreSQL, outils open source en production, livre et conférences. Références clients sur demande."
kicker  = "Ce qui est vérifiable"
summary = "Le travail public se vérifie sans me demander la permission. Le travail sous contrat est couvert par la confidentialité — les références se donnent en entretien."

# ---------------------------------------------------------------------------
# Études de cas. VIDE POUR L'INSTANT, et c'est volontaire : mieux vaut une page
# honnête qu'un cas inventé.
#
# Pour en ajouter une, copier ce bloc et le remplir. La forme qui convainc est
# toujours la même : situation → ce que j'ai trouvé → ce qui a changé, avec un
# chiffre. Demander l'accord écrit du client avant de le nommer ; sans accord,
# « un opérateur télécom européen » vaut mieux que rien.
#
# [[cases]]
#   id      = "slug-du-cas"
#   client  = "Nom du client, ou secteur si anonyme"
#   tag     = "migration"                 # migration | performance | HA | formation
#   context = "La situation de départ, en une phrase, avec les volumes."
#   finding = "Ce que le diagnostic a révélé — la partie qui prouve l'expertise."
#   outcome = "Le résultat, chiffré : temps de migration, latence, coût, incidents."
#   quote   = "Une phrase du client, si vous l'avez."
#   author  = "Prénom Nom, rôle"
# ---------------------------------------------------------------------------

[on_request]
  title = "Références clients"
  note  = "Les missions sont couvertes par des accords de confidentialité. Je donne des références nominatives, avec l'accord des clients concernés, au moment du devis — et je vous mets en relation directe quand c'est pertinent."

# La preuve publique, elle, n'a besoin de l'accord de personne.
[[public]]
  id    = "core"
  tag   = "cœur de PostgreSQL"
  title = "Deux fonctionnalités du cœur"
  lede  = "`CREATE EXTENSION` et les Event Triggers sont de moi. Ce code tourne dans toutes les installations de PostgreSQL, partout, depuis les versions 9.1 et 9.3."
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
  id    = "apt"
  tag   = "infrastructure"
  title = "apt.postgresql.org"
  lede  = "Mainteneur Debian, co-constructeur du dépôt qui garde chaque version supportée de PostgreSQL installable sur chaque version supportée de Debian et d'Ubuntu, depuis plus de dix ans."
  url   = "https://wiki.postgresql.org/wiki/Apt"
  cta   = "Le dépôt"
[[public]]
  id    = "book"
  tag   = "écrit"
  title = "The Art of PostgreSQL"
  lede  = "52 chapitres sur l'écriture de SQL pour les développeurs, et vingt ans d'écriture technique sur tapoueh.org. C'est le support de la masterclass, et vous pouvez le juger avant d'acheter quoi que ce soit."
  url   = "https://theartofpostgresql.com/"
  cta   = "Le livre"
+++

Une plaquette de références se fabrique. Un commit dans le cœur de PostgreSQL,
non. Cette page privilégie donc ce que vous pouvez vérifier vous-même, sans
m'écrire.
