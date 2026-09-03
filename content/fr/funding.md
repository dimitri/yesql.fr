+++
title = "Financer l'open source sans passer par un employeur"
type  = "article"
slug  = "financer-open-source"
weight = 35
nav    = "Financement"
description = "Comment financer un mainteneur open source quand aucun employeur ne sponsorise le travail : GitHub Sponsors, Open Collective, Tidelift, campagnes à seuil, subventions comme la Sovereign Tech Agency — avec l'historique de financement de pgloader en étude de cas."
kicker  = "En dehors du cadre salarié"
summary = "La plupart des conseils sur la pérennité de l'open source supposent qu'un employeur accepte de payer pour ça. Voici quoi faire quand ce n'est pas envisageable — en tant qu'individu, ou en tant qu'entreprise dont les ingénieurs utilisent un outil que personne, chez elle, ne maintient."
+++

Il existe une réponse toute faite à « comment s'assurer que l'open source dont
on dépend reste maintenu » : faire en sorte que l'employeur autorise du temps
payé dessus, faire sponsoriser une fondation par son entreprise, ou acheter du
support auprès de l'éditeur qui a construit le projet. Tout cela est réel, et
ça fonctionne — quand il y a un employeur, une fondation ou un éditeur dans la
boucle.

La plupart des logiciels dont vous dépendez réellement n'ont rien de tout ça.
Une part énorme de l'infrastructure critique est le dépôt d'une seule
personne, maintenu sur des soirées et des week-ends, sans entreprise derrière
et sans ligne budgétaire nulle part qui porte son nom. C'est le vrai sujet de
cette page : pas « convainquez votre employeur », mais ce qu'un individu, ou
une entreprise sans chemin interne pour sponsoriser le temps d'un salarié,
peut réellement faire.

## Ce n'est pas un problème théorique

En mars 2024, un développeur PostgreSQL nommé Andres Freund a remarqué
quelque chose qui n'aurait pas dû être remarquable : les connexions SSH sur
une machine de test étaient environ une demi-seconde plus lentes que prévu.
En remontant cette demi-seconde, il est tombé sur une porte dérobée,
délibérément insérée dans `xz-utils` — une bibliothèque de compression si
profondément enfouie dans la pile Linux que la plupart des gens qui en
dépendent n'en ont jamais entendu parler — par un contributeur qui avait
passé deux ans à gagner la confiance de son unique mainteneur, débordé,
avant d'y glisser la charge utile. C'est l'une des attaques de chaîne
d'approvisionnement les plus sophistiquées jamais documentées, et elle a
fonctionné précisément parce que le projet avait un seul bénévole épuisé et
personne pour veiller sur lui.

Personne n'avait prévu que ce mainteneur devienne un point de défaillance
unique pour une part significative du trafic SSH d'Internet. C'est arrivé
parce que c'est exactement à quoi ressemble, par défaut, un projet à
mainteneur unique et non financé — et la plupart d'entre eux ressemblent
exactement à ça.

## Ce que « contribuer » veut vraiment dire

Il n'y a que deux choses à mettre dans un projet open source : du temps ou de
l'argent. Le temps salarié est le mécanisme vers lequel la plupart des
articles se tournent en premier, et c'est réellement la meilleure option
quand elle existe — mais elle suppose un employeur prêt à l'allouer, ce qui
est exactement le cas que cette page suppose absent. L'argent ne suppose pas
ça. Il suppose vous, ou la note de frais de votre entreprise, et rien
d'autre.

## Les canaux qui existent en 2026

Aucun d'entre eux n'a besoin de l'aval d'un employeur, d'un processus d'achat,
ni même d'une entreprise du côté de celui qui donne.

**Récurrent, direct au mainteneur** — [GitHub Sponsors](https://github.com/sponsors)
est l'option la plus simple : on choisit un mainteneur, un montant mensuel,
c'est fait, facturé via GitHub. [Open Collective](https://opencollective.com/)
fait la même chose avec un budget public et détaillé, ce qui compte pour les
projets qui veulent montrer exactement où va l'argent plutôt que demander une
confiance aveugle. [Polar.sh](https://polar.sh/) est le nouvel entrant du même
créneau, qui ajoute abonnements et financement au ticket au-dessus du
sponsoring natif GitHub.

**Récurrent, pensé pour l'entreprise mais pas une relation d'emploi** —
[Tidelift](https://tidelift.com/) vend aux entreprises un abonnement donnant
des garanties de maintenance et de sécurité sur l'open source qu'elles font
tourner, et finance directement avec cet argent les mainteneurs des paquets
concernés. Utile à connaître précisément parce que c'est pensé pour
l'acheteur qui *a* un processus d'achat et une procédure de validation
fournisseur, mais aucun moyen de mettre un mainteneur externe sur sa fiche de
paie — Tidelift est la relation fournisseur qui s'y substitue.

**Ponctuel, pour une fonctionnalité précise** — c'est l'idée la plus ancienne
de cette liste, et celle que je préfère, parce qu'elle annonce son prix à
l'avance. En 2008, [Poul-Henning Kamp](http://phk.freebsd.dk/) a proposé
[la Varnish Moral License](http://phk.freebsd.dk/VML/) : les utilisateurs
satisfaits envoient l'équivalent d'une facture, il développe Varnish,
personne n'a à se sentir mal de faire tourner un excellent logiciel écrit par
quelqu'un qui a, lui aussi, des factures à payer. La version 2026 de cette
idée est une campagne publiée, à seuil : un périmètre écrit, un montant
cible, et une phrase qui dit clairement qu'en dessous d'un certain montant le
travail ne se fait pas du tout. Ça enlève l'incertitude des deux côtés : les
financeurs savent exactement ce qu'ils achètent, et le mainteneur ne
s'engage pas sur un travail sans limite contre un engagement sans limite.

**Des subventions, pas des emplois** — une catégorie plus récente et
réellement utile : de l'argent qui finance le temps d'un mainteneur sur de
l'infrastructure critique sans exiger qu'il devienne le salarié de qui que ce
soit. La [Sovereign Tech Agency](https://www.sovereign.tech/) (un fonds
soutenu par l'État allemand, anciennement Sovereign Tech Fund) fait
exactement ça : payer les mainteneurs d'infrastructures open source
fondamentales — en freelance, sur leur propre projet, à leurs propres
conditions — pour un travail de maintenance qui, sinon, ne serait le travail
de personne. [NLnet](https://nlnet.nl/) fait tourner un programme de
subventions similaire pour l'infrastructure numérique européenne depuis plus
de vingt ans. Aucun des deux n'exige que le mainteneur travaille pour le
financeur.

**Ce dont il faut se méfier** — les pourboires ponctuels (Buy Me a Coffee,
Ko-fi) sont très bien comme remerciement, mais s'additionnent rarement en
quelque chose qui change le temps qu'un mainteneur peut consacrer à un
projet : à traiter comme un geste, pas une stratégie de financement. Et
vérifiez qu'une plateforme est réellement solvable avant d'y faire passer de
l'argent : Bountysource, autrefois l'une des plateformes de primes les plus
visibles pour l'open source, a déposé le bilan fin 2023, après avoir déjà
cessé de verser des primes à des développeurs aux réclamations pourtant
vérifiées et complètes, des mois auparavant.

## L'histoire de pgloader avec tout ça

J'ai écrit sur ce problème dès 2018, alors que pgloader accompagnait déjà des
entreprises qui quittaient Oracle et d'autres bases de données historiques.
Une phrase de ce vieil article dit : *« je ne connais personne qui coderait
le support d'Oracle™ dans pgloader sur son temps libre. »* À l'époque, les
meilleurs outils que je pouvais proposer étaient exactement ceux décrits
ci-dessus dans leur version 2018 — une « Moral License » ponctuelle et un
« Patrons Membership » récurrent, tous deux via Gumroad, tous deux
aujourd'hui arrêtés.

Huit ans plus tard, cette phrase a une réponse : [Membres](/fr/membres/)
porte le volet récurrent — des paliers, un prix, finançant à l'année la
maintenance de pgloader, pgcopydb, pg_auto_failover et pgextwlist — et la
campagne de financement en cours est, presque mot pour mot, ce que j'avais
dit que personne ne ferait gratuitement : [le support Oracle pour pgloader v4](/fr/campaigns/oracle-pgloader-v4/),
financé comme une campagne à seuil, exactement le mécanisme dont parle cette
page. Ce n'est pas une étude de cas hypothétique. C'est ce que sont les
pages de financement de ce site.

## Ce qu'il faut réellement faire

Si vous êtes un individu qui utilise un outil que vous n'avez pas payé :
choisissez le mainteneur dont le logiciel vous manquerait vraiment, et mettez
un petit montant récurrent sur GitHub Sponsors ou Open Collective. Ça
s'additionne plus qu'on ne le pense.

Si vous êtes dans une entreprise qui n'a aucun moyen de sponsoriser le temps
d'un salarié sur de l'open source externe, mais qui a une note de frais ou un
budget discrétionnaire : un abonnement Tidelift, une candidature à une
subvention d'un fonds comme la Sovereign Tech Agency, ou le financement d'une
campagne publiée pour une fonctionnalité dont vous avez réellement besoin
sont autant de choses qui n'exigent de convaincre personne de changer la
façon dont l'entreprise recrute ou alloue son temps d'ingénierie. Elles
exigent seulement quelqu'un prêt à dépenser de l'argent sur un logiciel dont
l'entreprise dépend déjà.

Dans tous les cas : du temps ou de l'argent, mais quelque chose. L'alternative
n'est pas « le projet reste gratuit pour toujours ». L'alternative est un
mainteneur épuisé, et vous qui découvrez, de la manière la plus difficile, ce
que ça coûte réellement.
