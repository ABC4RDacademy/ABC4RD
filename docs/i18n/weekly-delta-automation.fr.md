# Automatisation Weekly Delta

Statut de traduction: `draft`, requires native review.

![Apercu de l automatisation weekly delta](../../assets/article-previews/ranking-hub.svg)

ABC4RD Academy dispose maintenant d un generateur local de brouillons weekly
delta.

Script:

`scripts/build_weekly_delta.py`

## Ce qu il fait

Le script compare:

- un baseline snapshot publie depuis `weekly-delta-baseline`;
- un fichier CSV sectoriel courant;
- une date de publication courante.

Il produit ensuite un brouillon markdown avec:

- new entrants;
- exits;
- largest upward move;
- largest downward move;
- changements de total-score;
- un bloc initial pour les official signals.

## Note

Ceci est une traduction `draft`. La page anglaise reste la source canonique.
