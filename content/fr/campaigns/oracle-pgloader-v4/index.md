+++
title    = "Support Oracle pour pgloader v4"
# Pointe vers data/campaigns/oracle-pgloader-v4.toml, qui porte TOUS les
# chiffres. Aucun montant ne doit apparaître dans ce fichier.
campaign = "oracle-pgloader-v4"
date     = 2026-01-15
weight   = 10
summary  = "Financer la réécriture du connecteur Oracle de pgloader pour la v4, publiée sous licence libre."
description = "Campagne de financement : support Oracle dans pgloader v4. Expert pgloader, migration Oracle vers PostgreSQL."

[cta]
  label = "Contribuer"

# Libellés des paliers, indexés par l'`id` des [[tiers]] du fichier de données.
# Les montants sont dans le fichier de données, pas ici.
[tier_labels]
  individual = "Contributeur — mention dans les notes de version"
  company    = "Entreprise — un cas de migration réel priorisé dans les tests"
  sponsor    = "Sponsor — revue d'architecture de votre migration Oracle incluse"
+++

Le connecteur Oracle de pgloader fonctionne, et il porte dix ans de dette
technique. Il dépend d'une couche JDBC qui complique l'installation, ne couvre
pas proprement les partitions, et traite les types `NUMBER` et `CLOB` par
approximation.

## Où ça en est

Le montant collecté à ce jour est mon propre investissement — une mise de
départ pour cadrer correctement la réécriture du connecteur avant de demander
à qui que ce soit d'autre de la soutenir. Les contributions à partir
d'ici sont ce qui fait franchir le seuil et passe le projet en développement
actif.

## Ce qui est financé

- Réécriture complète du connecteur, sans dépendance Java
- Traitement exact de `NUMBER`, `CLOB`, `BLOB`, `TIMESTAMP WITH TIME ZONE`
- Support des tables partitionnées et des vues matérialisées
- Migration du schéma : contraintes, index, séquences, commentaires
- Suite de tests d'intégration contre Oracle 19c et 23ai
- Documentation de migration Oracle vers PostgreSQL

## Ce qui n'est pas financé

Le portage de PL/SQL vers PL/pgSQL. C'est un travail de nature différente, qui
fera l'objet d'une campagne distincte s'il y a une demande.

## Le seuil

En dessous du seuil de démarrage, le développement ne commence pas et les
engagements ne sont pas appelés. Au-dessus, le travail démarre et le code est
publié au fil de l'eau, sous la même licence que le reste de pgloader.

Atteindre la cible complète finance le périmètre entier. Entre le seuil et la
cible, le périmètre est réduit dans l'ordre de la liste ci-dessus, et la liste
de ce qui est effectivement livré est publiée avant le début du développement.
