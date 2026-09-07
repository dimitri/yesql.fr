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
  preview = "Le pont entre le fonctionnement de l'entreprise et l'open source, angles morts compris."
[[toc]]
  id      = "strategy"
  label   = "Stratégie"
  preview = "Priorités utilisateurs, transmission, modèle soutenable, itérations rapides."
[[toc]]
  id      = "values"
  label   = "Valeurs"
  preview = "Huit principes, de l'autonomie à l'amélioration continue."

[mission]
  lede = "Apporter l'Open Source au monde de l'entreprise."
  body = "Faire en sorte que les entreprises obtiennent de PostgreSQL et de son écosystème libre la même confiance, la même structure de responsabilité, qu'elles n'obtiennent aujourd'hui que d'un fournisseur propriétaire — sans l'enfermement propriétaire, ni le coût total de possession qu'il entraîne. Les entreprises n'achètent que rarement du propriétaire pour la qualité d'ingénierie ; elles achètent le contrat qui évite à la personne qui a fait le choix de porter le blâme."

[vision]
  body = [
    "Faire le pont entre deux façons de travailler : la manière dont l'entreprise a l'habitude de fonctionner — sous-traitance, régie ou forfait, licences, lignes de support — et la manière dont l'open source fonctionne réellement. Ce modèle a déjà fait ses preuves : il produit un meilleur résultat sur tout ce qui compte — qualité, ingénierie, tenue en production, adéquation au besoin. PostgreSQL en est la preuve la plus nette : sur le [classement DB-Engines](https://db-engines.com/en/ranking) lui-même, c'est le seul système du top 4 encore en croissance, quand Oracle, MySQL et SQL Server perdent tous du terrain — et selon la [Stack Overflow Developer Survey](https://survey.stackoverflow.co/2025/technology), c'est « la technologie la plus désirée et la plus admirée de sa catégorie », en tête des deux classements depuis 2023.",
    "L'open source a un angle mort structurel : ce qu'aucun bénévole n'a envie de faire reste un manque, quel que soit le projet. Dans la communauté PostgreSQL aujourd'hui, ce manque se situe du côté de l'archivage et, plus largement, de l'outillage d'architecture de production qui entoure le cœur du moteur — le développement du cœur de PostgreSQL, lui, ne manque ni de financement ni de contributeurs ; ce qui l'entoure en production, si. Prenez la haute disponibilité et le disaster recovery : l'outillage actuel les sépare selon une ligne technique — la HA d'un côté, le DR regroupé avec les sauvegardes de l'autre — alors que ce que veulent les utilisateurs, c'est la HA et le DR ensemble, et les sauvegardes comme sujet à part. La prochaine version de pg_auto_failover corrige exactement cela.",
    "L'écosystème que je maintiens est pensé pour aider sur les architectures en production (pg_auto_failover, pgextwlist, pginstall, pgcopydb) et sur la migration vers PostgreSQL (pgloader, pgcopydb) ; il ne couvre pas encore tout.",
  ]

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
