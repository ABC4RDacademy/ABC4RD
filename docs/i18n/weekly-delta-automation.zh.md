# Weekly Delta 自动化

翻译状态: `draft`, requires native review.

![Weekly Delta 自动化预览](../../assets/article-previews/ranking-hub.svg)

ABC4RD Academy 现在拥有一个本地 weekly delta 草稿生成器。

脚本:

`scripts/build_weekly_delta.py`

## 它做什么

该脚本比较：

- 来自 `weekly-delta-baseline` 的已发布 baseline snapshot;
- 一个当前 sector CSV;
- 一个当前发布日期。

然后它生成一个 markdown 草稿，其中包含：

- new entrants;
- exits;
- largest upward move;
- largest downward move;
- total-score 变化;
- 一个 official signals 初始区块。

## 说明

这是 `draft` 翻译版本。英文页面仍然是规范来源。
