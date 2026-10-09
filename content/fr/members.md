+++
title   = "Membres"
type    = "members"
slug    = "membres"
weight  = 30
nav     = "Membres"
description = "Maintenance amont de pgloader, pgcopydb, pg_auto_failover et pgextwlist : correctifs priorisés, influence sur la feuille de route, et une lettre trimestrielle réservée aux membres."
kicker  = "Maintenance open source, co-financée"
summary = "Financer ensemble la maintenance des outils dont vos productions dépendent. Correctifs priorisés, versions publiées, influence sur la feuille de route — et une lettre trimestrielle réservée aux membres."

# Libellés des paliers récurrents, indexés par l'`id` de data/members.toml.
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

# Le bénéfice propre aux membres, celui qui n'existe pas sur la boutique.
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

# Un renvoi vers la page dédiée au financement à seuil — pas un second
# argumentaire ici. L'adhésion finance la maintenance au quotidien ; une
# campagne finance une fonctionnalité nommée, un engagement différent avec
# sa propre page.
[campaign_teaser]
  note = "Vous préférez financer une fonctionnalité précise plutôt qu'un abonnement ?"
  cta  = "Voir la campagne en cours"
  href = "/fr/campaigns/"
# Achats par un service procurement. La grille ci-dessus envoie chaque
# acheteur vers un paiement par carte chez ThriveCart — ce que la politique
# interne d'un grand groupe interdit justement. Ce bloc est l'autre porte ;
# il existe parce qu'un acheteur réel a écrit sans pouvoir utiliser la
# première.
[procurement]
  title = "Vous passez par un service achats ?"
  note  = "Chaque niveau est disponible sur facture : à l'année ou au mois, par virement, avec votre numéro de bon de commande sur la facture. YeSQL est une SAS française — immatriculation, numéro de TVA et coordonnées bancaires figurent sur les mentions légales, et les formalités de référencement fournisseur ne posent aucun problème."
  cta   = "Demander une facture"
  link_label = "mentions légales"
  link_href  = "/fr/mentions-legales/"
+++

Les outils que je maintiens tournent en production chez des gens que je ne
connais pas, et c'est très bien ainsi. Mais la maintenance a un coût, et
quelqu'un le paie : soit vous, en attendant un correctif, soit un ensemble
d'entreprises qui le financent ensemble et deviennent, en échange, membres du
programme.

Devenir membre est la seconde option.
