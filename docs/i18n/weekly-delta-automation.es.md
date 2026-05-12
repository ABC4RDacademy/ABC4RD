# Automatizacion Weekly Delta

Estado de traduccion: `draft`, requires native review.

![Vista previa de la automatizacion weekly delta](../../assets/article-previews/ranking-hub.svg)

ABC4RD Academy ahora tiene un generador local de borradores weekly delta.

Script:

`scripts/build_weekly_delta.py`

## Que hace

El script compara:

- un baseline snapshot publicado desde `weekly-delta-baseline`;
- un CSV sectorial actual;
- una fecha de publicacion actual.

Despues genera un borrador markdown con:

- new entrants;
- exits;
- largest upward move;
- largest downward move;
- cambios de total-score;
- un bloque inicial para official signals.

## Nota

Esta es una traduccion `draft`. La pagina en ingles sigue siendo la fuente
canonica.
