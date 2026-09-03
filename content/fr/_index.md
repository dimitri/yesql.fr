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
summary = "Contributeur au cœur de PostgreSQL, auteur de *The Art of PostgreSQL*, mainteneur de pgloader, pgcopydb, pg_auto_failover et pgextwlist. Cette page est la carte de tout ça."

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
  label = "`CREATE EXTENSION` et les Event Triggers sont de moi"
  href  = "https://www.postgresql.org/community/contributors/"
[[proof]]
  value = "1999"
  label = "première base PostgreSQL en production"
[[proof]]
  value = "pgloader · pgcopydb · pg_auto_failover · pgextwlist"
  label = "auteur et mainteneur"

# Financer une fonctionnalité — mis en avant : sa propre section, haut sur la
# page, juste après le portfolio open source qu'elle finance. Texte
# d'introduction seulement ; les campagnes elles-mêmes sont découvertes dans
# content/fr/campaigns/ par partials/campaign/open-list.html.
[fund]
  tag   = "campagne à seuil"
  title = "Financer une fonctionnalité"
  lede  = "Certaines fonctionnalités dépassent ce que couvre la maintenance courante. C'est le cas en ce moment : un périmètre écrit, un montant cible, et un seuil de démarrage publié en dessous duquel le travail ne commence pas."
  bullets = [
    "Périmètre technique écrit à l'avance, pas une intention",
    "Seuil de démarrage affiché, pas implicite",
    "Le résultat est open source, y compris pour ceux qui n'ont pas financé",
  ]

# Un renvoi discret vers le volet récurrent du financement — l'échelle
# complète des paliers vit sur /membres/, ceci n'en est pas une seconde copie.
[members_teaser]
  tag   = "l'autre façon de soutenir ce travail"
  title = "Support récurrent, si une campagne ne convient pas"
  lede  = "Les membres financent la maintenance au quotidien de ces outils, toute l'année : correctifs prioritaires, influence sur la feuille de route, une lettre trimestrielle sur ce qui a bougé. Les paliers commencent gratuitement."
  cta   = "Voir les paliers"
  href  = "/fr/membres/"
+++

Voici la carte : les outils open source que je maintiens, ce que j'écris et
enseigne, et les deux façons d'aider à financer le travail — une
fonctionnalité précise, ou la maintenance continue. Tout ce qui suit est
public et vous pouvez tout vérifier vous-même.
