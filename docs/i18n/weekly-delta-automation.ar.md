# اتمتة Weekly Delta

حالة الترجمة: `draft`, requires native review.

![معاينة اتمتة weekly delta](../../assets/article-previews/ranking-hub.svg)

لدى ABC4RD Academy الان مولد محلي لمسودات weekly delta.

السكريبت:

`scripts/build_weekly_delta.py`

## ماذا يفعل

يقارن السكريبت بين:

- baseline snapshot منشور من `weekly-delta-baseline`;
- ملف CSV قطاعي حالي;
- تاريخ نشر حالي.

ثم ينشئ مسودة markdown تحتوي على:

- new entrants;
- exits;
- largest upward move;
- largest downward move;
- تغييرات total-score;
- كتلة اولية ل official signals.

## ملاحظة

هذه ترجمة `draft`. وتبقى الصفحة الانجليزية هي المصدر الاساسي.
