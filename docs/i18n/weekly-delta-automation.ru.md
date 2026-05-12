# Автоматизация Weekly Delta

Статус перевода: `draft`, requires native review.

![Превью автоматизации weekly delta](../../assets/article-previews/ranking-hub.svg)

У ABC4RD Academy теперь есть локальный генератор weekly delta-черновиков.

Скрипт:

`scripts/build_weekly_delta.py`

## Что он делает

Скрипт сравнивает:

- один опубликованный baseline snapshot из `weekly-delta-baseline`;
- одну текущую sector ranking CSV;
- одну текущую дату публикации.

На выходе он собирает markdown-черновик с:

- new entrants;
- exits;
- largest upward move;
- largest downward move;
- изменениями total-score;
- стартовым блоком для official signals.

## Примечание

Это `draft`-версия перевода. Канонической остается английская страница.
