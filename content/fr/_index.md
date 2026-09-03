+++
# `title` est le <title> propre à cette page (l'accueil est la seule page qui
# n'ajoute pas site.Title en suffixe — voir layouts/partials/head/meta.html) ;
# `headline` est le H1 que lit une personne. Les deux ciblent désormais
# l'identité et le portfolio, pas une requête commerciale — ce ciblage reste
# sur /entreprise/, /immersion/ et /membres/, les pages faites pour ça.
title    = "YeSQL — Dimitri Fontaine : portfolio PostgreSQL"
headline = "YeSQL : expertise PostgreSQL et portfolio open source"
description = "Contributeur majeur de PostgreSQL, auteur de The Art of PostgreSQL, mainteneur de pgloader, pgcopydb, pg_auto_failover et pgextwlist. Tout au même endroit : les outils, l'écriture, et comment financer le travail."

kicker  = "YeSQL · Dimitri Fontaine"
summary = "Tout ce que je fais, au même endroit : contributions au cœur de PostgreSQL, outils open source, conseil, le livre, formation sur site, conférences, leçons gratuites, et le blog."

# La preuve, gardée comme identité plutôt que comme accroche commerciale : le
# titre qui ne se fabrique pas, en premier.
# La seule mention du travail payant et ponctuel — une remarque de fin, pas un
# appel à l'action de page de vente. Liens markdown, rendus via RenderString.
# Placée ici, avant tout en-tête [table] : une clé nue après un en-tête de
# table TOML appartient à cette table, pas au niveau racine — c'est exactement
# ce qui l'a fait avaler silencieusement par [members_teaser] la première fois.
available = "Si tout ça vous est directement utile : je prends un petit nombre d'[interventions ponctuelles](/fr/entreprise/) chaque année, et il m'arrive de [venir travailler avec une équipe sur site](/fr/immersion/) une ou deux journées — quatre sessions par an, tous clients confondus, pas par client. Aucune pression dans un sens ou dans l'autre : le reste de cette page est identique, que ce soit ce que vous cherchiez ou non."

[[proof]]
  value = "Contributeur majeur PostgreSQL"
  label = "co-auteur de `CREATE EXTENSION` et des Event Triggers"
  href  = "https://www.postgresql.org/community/contributors/"
[[proof]]
  value = "pgloader, depuis 2005"
  label = "toujours activement maintenu, vingt ans après"
[[proof]]
  value = "pgloader · pgcopydb · pg_auto_failover · pgextwlist"
  label = "auteur et mainteneur"

# Un renvoi discret vers le volet récurrent du financement — l'échelle
# complète des paliers vit sur /membres/, ceci n'en est pas une seconde copie.
# La campagne en cours est maintenant une carte dans la grille du portfolio
# open source ci-dessus, pas sa propre section, donc ce bloc présente
# l'*autre* façon de financer le travail plutôt que de supposer que le
# lecteur vient de voir une section dédiée à la campagne juste avant.
[members_teaser]
  tag   = "une autre façon de soutenir ce travail"
  title = "Support récurrent, finançant la maintenance toute l'année"
  lede  = "Au-delà de financer une fonctionnalité précise : les membres financent la maintenance au quotidien de ces outils — correctifs prioritaires, influence sur la feuille de route, une lettre trimestrielle sur ce qui a bougé. Les paliers commencent gratuitement."
  cta   = "Voir les paliers"
  href  = "/fr/membres/"
+++

Une seule page pour tout : les outils open source que je maintiens, le
conseil et la formation, ce que j'écris et enseigne, et les deux façons
d'aider à financer le travail — une fonctionnalité précise, ou la
maintenance continue. Tout ce qui suit est public et vous pouvez tout
vérifier vous-même.
