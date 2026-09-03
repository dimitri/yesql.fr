+++
title   = "Le Cercle"
type    = "circle"
slug    = "cercle"
weight  = 30
nav     = "Le Cercle"
description = "Maintenance amont de pgloader, pgcopydb, pg_auto_failover et pgextwlist : correctifs priorisés, influence sur la feuille de route, et une lettre trimestrielle réservée aux membres."
kicker  = "Maintenance open source, co-financée"
summary = "Financer ensemble la maintenance des outils dont vos productions dépendent. Correctifs priorisés, versions publiées, influence sur la feuille de route — et une lettre trimestrielle réservée aux membres."

[cta]
  label = "Rejoindre le Cercle"
  href  = "#form-circle"
  note  = "La lettre trimestrielle est gratuite. Les paliers de maintenance se souscrivent sur la boutique."

# Libellés des paliers récurrents, indexés par l'`id` de data/circle.toml.
# Aucun montant ici : les prix sont dans le fichier de données, une seule fois.
[tier_labels]
  [tier_labels.community]
    name = "Communauté"
    lede = "Pour évaluer, ou pour un usage non critique."
    what = "Au mieux, via GitHub, comme pour tout le monde."
  [tier_labels.supporter]
    name = "Soutien"
    lede = "Vos tickets ne se perdent plus dans la file."
    what = "File prioritaire, réponse sous quelques jours."
  [tier_labels.professional]
    name = "Professionnel"
    lede = "Quand une production dépend de l'outil."
    what = "Vos correctifs sont triés sous engagement et embarqués dans la version suivante."
  [tier_labels.sponsor]
    name = "Sponsor"
    lede = "Quand votre feuille de route dépend de la sienne."
    what = "Influence sur la feuille de route, et de la capacité de développement réservée."

# Achats ponctuels.
[oneoff_labels]
  [oneoff_labels."per-release"]
    name = "Sponsor de version"
    unit = "par version"
    what = "Vos correctifs et vos fonctionnalités priorisés dans une version donnée, et votre nom dans les notes de version."
    note = "Un seul sponsor par version."
  [oneoff_labels."fast-lane"]
    name = "Voie rapide"
    unit = "par ticket"
    what = "Un bloquant précis, traité et livré dans la version suivante."

[programme]
  title = "Les paliers vivent sur oss.theartofpostgresql.com"
  note  = "Le programme de maintenance et sa boutique existent déjà : je ne les duplique pas ici. Cette page explique à quoi ils servent et ce que le Cercle y ajoute ; la souscription se fait là-bas."
  cta   = "Voir le programme"

# Le bénéfice propre au Cercle, celui qui n'existe pas sur la boutique.
[newsletter]
  title = "La lettre trimestrielle"
  tag   = "réservée aux membres"
  lede  = "Quatre fois par an, ce qui a bougé — dans The Art of PostgreSQL et dans les projets que je maintiens. Pas de reprise du blog, pas de promotion."
  bullets = [
    "Ce qui est nouveau dans The Art of PostgreSQL : chapitres, ateliers, contenus",
    "Ce qui a été livré dans pgloader, pgcopydb, pg_auto_failover et pgextwlist",
    "Ce sur quoi je travaille ensuite, et pourquoi",
    "L'état des campagnes de financement en cours",
  ]
  note = "Quatre envois par an. Désinscription en un clic."

# Financement participatif à seuil, pour une fonctionnalité identifiée.
[fund]
  title = "Financer une fonctionnalité"
  tag   = "campagne à seuil"
  lede  = "Certaines fonctionnalités dépassent ce qu'un palier récurrent peut financer. Elles font l'objet d'une campagne à part : un périmètre écrit, un montant cible, un seuil de démarrage affiché."
  bullets = [
    "Périmètre technique écrit à l'avance, pas une intention",
    "Seuil de démarrage affiché, pas implicite",
    "Le résultat est open source, y compris pour ceux qui n'ont pas financé",
  ]
+++

Les outils que je maintiens tournent en production chez des gens que je ne
connais pas, et c'est très bien ainsi. Mais la maintenance a un coût, et
quelqu'un le paie : soit vous, en attendant un correctif, soit un ensemble
d'entreprises qui le financent ensemble.

Le Cercle est la seconde option.
