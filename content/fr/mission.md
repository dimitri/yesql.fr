+++
title   = "Mission, vision, stratégie, valeurs"
type    = "mission"
slug    = "mission"
weight  = 15
nav     = "Mission"
description = "Pourquoi YeSQL existe et comment l'entreprise fonctionne : apporter l'open source aux entreprises, la stratégie derrière les outils, et les valeurs qui maintiennent une pratique indépendante."
kicker  = "Pourquoi cela existe"
summary = "La mission, la vision, la stratégie et les valeurs de YeSQL — énoncées en entier, pas en slogan."

# Une clé nue placée après N'IMPORTE QUEL en-tête de table ([table] ou
# [[tableau]]) appartient à cette table jusqu'au prochain en-tête — pas
# seulement au tableau de tables qui la précède immédiatement (voir la
# note sur ce piège TOML dans README.md). Ce tableau à plat doit donc
# être placé avant TOUT en-tête [table]/[[tableau]] du fichier, pas
# seulement avant [[strategy]].
values = [
  "Autonomie",
  "Excellence technique",
  "Respect des individus plutôt que des process",
  "Service aux utilisateurs",
  "Technique au service de l'humain, pas l'inverse",
  "Décisions concrètes, sans jeux politiques de comité",
  "Transfert de compétences",
  "Amélioration continue",
]

[section_labels]
  mission  = "Mission"
  vision   = "Vision"
  strategy = "Stratégie"
  values   = "Valeurs"

# Le bandeau d'aperçu en haut de page : les énoncés réels, pas les noms de
# catégorie, pour que le contenu de chaque section soit clair avant de
# défiler.
[[toc]]
  id      = "mission"
  label   = "Mission"
  preview = "Apporter l'Open Source au monde de l'entreprise."
[[toc]]
  id      = "vision"
  label   = "Vision"
  preview = "Une synergie entre le développement indépendant et la structure attendue par les entreprises."
[[toc]]
  id      = "strategy"
  label   = "Stratégie"
  preview = "Quatre piliers, des priorités utilisateurs jusqu'au code qui tourne."
[[toc]]
  id      = "values"
  label   = "Valeurs"
  preview = "Huit principes, de l'autonomie à l'amélioration continue."

[mission]
  lede = "Apporter l'Open Source au monde de l'entreprise."
  body = "Faire en sorte que les entreprises puissent s'appuyer sur PostgreSQL et son écosystème libre avec la même structure de responsabilité qu'un fournisseur propriétaire — un contrat, un SLA, quelqu'un à appeler en cas d'incident majeur — sans payer la dépendance en licence qui va généralement avec. Les entreprises n'achètent que rarement du propriétaire pour la qualité d'ingénierie ; elles achètent le contrat qui évite à la personne qui a fait le choix de porter le blâme."

[vision]
  body = "Une synergie entre le développement indépendant et la structure attendue par les entreprises. Le pont actuel : des outils de production pour PostgreSQL — pg_auto_failover, pgloader, pgcopydb — pensés pour l'autonomie numérique face aux géants du cloud."

# Réutilise le composant workflow-step numéroté de la page onsite (mêmes
# classes) plutôt qu'une seconde version du même motif.
[[strategy]]
  step = "1"
  name = "Support Open Source, priorités utilisateurs"
  lede = "Le développement suit les besoins réels de production, arbitrés par une vision technique cohérente."
[[strategy]]
  step = "2"
  name = "Autonomisation par la transmission"
  lede = "Le livre et les cours The Art of PostgreSQL donnent aux équipes les moyens de comprendre, pas seulement d'utiliser."
[[strategy]]
  step = "3"
  name = "Un modèle économique soutenable"
  lede = "Pensé pour durer, sans dépendre d'une levée de fonds ni d'un rachat."
[[strategy]]
  step = "4"
  name = "Un prototype vaut mieux qu'un document de conception"
  lede = "On tranche sur du code qui tourne, pas sur des spécifications."

+++

C'est le cadre derrière [Entreprise](/fr/entreprise/) et les outils
eux-mêmes — voir [À propos](/fr/a-propos/) pour les personnes et les
projets à travers lesquels cela se joue.
