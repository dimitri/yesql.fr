+++
title = "Support Oracle pour pgloader v4"
description = "pgloader ne sait toujours pas migrer depuis Oracle, et ce manque est documenté depuis 2015. Financer le connecteur, avec les preuves tirées des tickets GitHub et de la feuille de route de pgloader."
kicker = "Financer une fonctionnalité"

# Rendu comme une simple note après la grille des campagnes — la politique
# derrière le mécanisme, tenue à l'écart de la campagne elle-même.
[policy]
  title = "Une fonctionnalité à la fois"
  note  = "C'est la seule campagne ouverte, volontairement. N'en faire tourner qu'une à la fois lui donne l'attention que mérite un engagement à seuil, et fait que la prochaine fonctionnalité financée ici sera celle dont le dossier est le plus clair une fois celle-ci close — pas celle qui était en file d'attente en premier. Quand le support Oracle sera livré, cette page passera au manque réel suivant, pas à une liste de souhaits."
+++

pgloader migre depuis MySQL, SQLite et MS SQL Server. Pas depuis Oracle — et ce
manque est documenté depuis dix ans : le
[ticket #244](https://github.com/dimitri/pgloader/issues/244), ouvert en juin
2015, demandait exactement ça, en citant « de nombreux systèmes d'entreprise
[qui] tournent encore sous Oracle ». On demande encore dans le
[ticket #1625](https://github.com/dimitri/pgloader/issues/1625), ouvert en
novembre 2024 — la demande n'a pas disparu, elle n'a simplement jamais été
financée.

C'est dans la [feuille de route de pgloader](https://pgloader.io/roadmap/)
depuis des années, écrit noir sur blanc : certains éléments « ne se feront que
si le projet reçoit des contributions financières ». Le support Oracle en fait
partie, et la feuille de route nomme déjà l'approche — un pilote Common Lisp
pour le protocole Oracle, sur le même modèle que le connecteur MS SQL Server
existant.
