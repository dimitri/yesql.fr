+++
title    = "Support Oracle pour pgloader v4"
# Pointe vers data/campaigns/oracle-pgloader-v4.toml, qui porte TOUS les
# chiffres. Aucun montant ne doit apparaître dans ce fichier.
campaign = "oracle-pgloader-v4"
date     = 2026-01-15
weight   = 10
summary  = "Financer la construction du support Oracle pour pgloader v4, publiée sous licence libre."
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

pgloader n'a jamais su migrer depuis Oracle — ce manque est documenté depuis
dix ans (voir les preuves sur la [page des campagnes](/fr/campaigns/)). Ceci
finance sa construction, en partant de zéro, dans pgloader v4 : la
réécriture en Clojure en cours, qui migre déjà depuis MySQL, MS SQL Server
et SQLite via JDBC.

## Où ça en est

Le montant collecté à ce jour est mon propre investissement — une mise de
départ pour cadrer correctement le projet avant de demander à qui que ce
soit d'autre de le soutenir. Les contributions à partir d'ici sont ce qui
fait franchir le seuil et passe le projet en développement actif.

## Ce qui est financé

- Une nouvelle source Oracle pour pgloader v4, connectée via JDBC — la même
  approche déjà utilisée pour MySQL, MS SQL Server et SQLite
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
