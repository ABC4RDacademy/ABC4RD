# ABC4RD Digital Press Open-Source Stack Map

ABC4RD Academy needs a boutique digital press: a repeatable publishing workflow for essays, research notes, books, open textbooks, articles, reports, preprints, proceedings, and public knowledge collections.

This is different from the library. The library stores and organizes sources. The digital press produces original ABC4RD publications.

## Publishing Rule

ABC4RD Digital Press should publish original Academy work, open educational resources, translated/annotated public-domain or open-licensed materials, and collaborative research outputs with clear authorship and licensing.

Do not publish copyrighted books, copied articles, paywalled materials, or translated works without permission.

## Publishing Layers

| Layer | Purpose | First candidates | MVP time | MVP cost |
|---|---|---|---:|---:|
| Authoring engine | Write books, essays, articles, reports in Markdown/Quarto/LaTeX. | Quarto, Pandoc, Jupyter Book, Bookdown, mdBook, HonKit | same day-2 days | $0 |
| Scientific/reproducible publishing | Code, figures, citations, notebooks, data-backed reports. | Quarto, Jupyter Book, Manubot | 1-3 days | $0-15/mo |
| Book publishing CMS | Public web books, EPUB, PDF, open textbooks. | Pressbooks, Booktype | 2-7 days | $10-80/mo |
| Journal/editorial workflow | Submission, peer review, editorial roles, journal issues. | OJS, OMP, OPS, PubPub, Kotahi | 1-4 weeks | $30-200/mo |
| Collaborative writing | Online academic editor and co-authoring. | Fidus Writer, Overleaf, HedgeDoc, Etherpad | 1-5 days | $10-80/mo |
| Layout/export | Beautiful PDF, EPUB, web, slides, print-ready outputs. | Pandoc, Typst, Paged.js, Sigil, Marp, Slidev | same day-5 days | $0 |
| Deployment | Publish from GitHub to web. | GitHub Pages, Coolify, Dokploy, Caddy | same day-3 days | $0-30/mo |

## Shortlist

| Project | GitHub | Role | Fit | Notes |
|---|---|---|---|---|
| Quarto | https://github.com/quarto-dev/quarto-cli | Scientific and technical publishing | Very high | Best first engine for essays, reports, books, websites, slides, PDF, HTML, DOCX, EPUB style workflows. |
| Pandoc | https://github.com/pandoc/pandoc | Universal document converter | Very high | Core document conversion engine for Markdown -> PDF/HTML/DOCX/EPUB. |
| Jupyter Book | https://github.com/jupyter-book/jupyter-book | Publication-quality books from computational content | High | Strong for courses and executable notebooks. |
| MyST Parser | https://github.com/executablebooks/MyST-Parser | Technical Markdown parser | High | Useful for rich scientific documentation. |
| Sphinx Book Theme | https://github.com/executablebooks/sphinx-book-theme | Book website theme | High | Good for beautiful research books/sites. |
| Manubot | https://github.com/manubot/rootstock | GitHub-native scholarly manuscripts | High | Good for collaborative manuscripts with citations and continuous publishing. |
| Bookdown | https://github.com/rstudio/bookdown | Books and technical docs with R Markdown | Medium/high | Excellent for R-heavy research and open textbooks. |
| mdBook | https://github.com/rust-lang/mdBook | Markdown books | High | Simple, fast, good for developer manuals and course books. |
| HonKit | https://github.com/honkit/honkit | Markdown books | Medium/high | GitBook-style book production. |
| Pressbooks | https://github.com/pressbooks/pressbooks | Open book publishing CMS | High | Strong for open textbooks and web books with exports. |
| Booktype | https://github.com/booktype/Booktype | Book production platform | Requires verification | Interesting but needs maintenance review. |
| PubPub | https://github.com/pubpub/pubpub | Community publishing | High | Strong for public communities, collections, conversations, article metadata. |
| OJS | https://github.com/pkp/ojs | Scholarly journal management | High | For peer-reviewed journal-style Academy publishing. |
| OMP | https://github.com/pkp/omp | Monograph/book publishing workflow | High | For formal book/monograph press workflow. |
| OPS | https://github.com/pkp/ops | Preprint server | Medium/high | For preprints and early research outputs. |
| Fidus Writer | https://github.com/fiduswriter/fiduswriter | Collaborative academic editor | High | Online editor for academics; exports to web, print, ebook style outputs. |
| Overleaf | https://github.com/overleaf/overleaf | Collaborative LaTeX editor | Medium/high | Useful for LaTeX-heavy research, but admin/ops complexity is higher. |
| HedgeDoc | https://github.com/hedgedoc/hedgedoc | Collaborative Markdown notes | High | Good for quick drafts and meeting notes. |
| Etherpad | https://github.com/ether/etherpad-lite | Realtime collaborative editor | Medium | Lightweight collaborative drafting. |
| Kotahi | https://github.com/coko-org/kotahi | Publishing workflow | Requires verification | Advanced editorial workflow; evaluate maintenance/deployment. |
| Editoria | https://github.com/coko-org/editoria | Book production | Requires verification | Interesting for book production; evaluate current status. |
| Paged.js | https://github.com/coko-org/pagedjs | Browser-based paged media/PDF | High | Useful for print-ready HTML-to-PDF books/reports. |
| Typst | https://github.com/typst/typst | Typesetting system | High | Excellent for modern reports, certificates, essays, and books. |
| Sigil | https://github.com/Sigil-Ebook/Sigil | EPUB editor | Medium/high | Useful for final EPUB polishing. |

## Recommended ABC4RD Digital Press

### Fastest MVP

Use:

- Quarto as main publishing engine;
- Pandoc under the hood;
- GitHub for version control;
- Zotero/BibTeX for citations;
- Typst or Quarto PDF for print-style exports;
- GitHub Pages or Coolify for web publishing.

Time: 1-2 days.

Cost: $0-15/month.

Output:

- essay template;
- research note template;
- book/open textbook template;
- PDF/HTML export;
- citation workflow;
- public publication index.

### Stronger boutique press

Use:

- Pressbooks for open textbooks and web books;
- PubPub for community collections and public conversation;
- OJS for journal-style editorial workflow;
- Quarto/Jupyter Book for technical books and reproducible research;
- Coolify/Dokploy for self-hosted deployment.

Time: 2-6 weeks.

Cost: $50-300/month.

Output:

- public publishing site;
- editorial workflow;
- author/reviewer roles;
- book/journal collections;
- DOI/metadata policy draft;
- export pipeline.

### Serious academic press

Use:

- OJS for journals;
- OMP for monographs;
- OPS for preprints;
- DSpace/InvenioRDM for repository archiving;
- Zotero/CSL/BibTeX for citations;
- DOI/Handle integration later.

Time: 2-4 months.

Cost: $300-1500+/month depending on storage, editorial workload, DOI services, copyediting, design, and sysadmin support.

## ABC4RD Publication Types

| Type | Tooling | MVP time | Notes |
|---|---|---:|---|
| Essay | Quarto + GitHub Pages | same day | Best first publication format |
| Research note | Quarto + Zotero/BibTeX | 1 day | Source-backed, versioned |
| Open textbook | Quarto/Jupyter Book/Pressbooks | 2-7 days | Chapters, glossary, exercises |
| Technical manual | mdBook/Docusaurus | 1-3 days | Developer docs and curricula |
| Journal article | OJS/PubPub/Quarto | 1-4 weeks | Needs editorial roles |
| Preprint | OPS/Quarto | 1-2 weeks | Needs policy and disclaimer |
| Report | Quarto/Typst/Paged.js | 1-3 days | PDF + web |
| Proceedings | OJS/PubPub/Quarto | 2-6 weeks | For conferences/workshops |

## Publishing Pipeline

```mermaid
flowchart LR
  A["Idea / outline"] --> B["Draft in Markdown / Quarto"]
  B --> C["Source and citation review"]
  C --> D["Editorial review"]
  D --> E["License and authorship check"]
  E --> F["Build HTML / PDF / EPUB"]
  F --> G["Publish on ABC4RD Digital Press"]
  G --> H["Archive in ABC4RD Library"]
```

## Minimum Metadata

| Field | Meaning |
|---|---|
| Title | Publication title |
| Authors | Named authors and contributors |
| Publication type | Essay, article, report, book, note, preprint |
| Abstract | Short summary |
| Keywords | Bitcoin, blockchain, AI, digital health, manufacturing, etc. |
| License | CC BY, CC BY-SA, CC0, All rights reserved, custom permission |
| Version | v0.1 draft, v1.0 published, revised |
| Source status | source-backed, opinion, draft, requires verification |
| Citation | Recommended citation format |
| Repository | GitHub source repo/path |
| Outputs | HTML, PDF, EPUB, DOCX |

## Editorial Roles

- Author
- Editor
- Technical reviewer
- Source verification reviewer
- Copyeditor
- Layout/export maintainer
- Publishing maintainer

## Immediate Tasks

1. Create `digital-press-lab` preview.
2. Create first essay template.
3. Create first research note template.
4. Create first book template.
5. Define license defaults: CC BY 4.0 for open educational content unless another license is required.
6. Define citation and versioning rules.
7. Publish first ABC4RD Digital Press index.

