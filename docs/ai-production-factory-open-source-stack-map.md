# ABC4RD AI Production Factory Open-Source Stack Map

ABC4RD AI Production Factory is the Academy layer for producing educational and research assets quickly: websites, presentations, bulletins, certificates, courses, translations, research assistants, videos, designs, assessments, and reusable templates.

The goal is not to let AI publish unreviewed material. The goal is to create a fast production pipeline with human review, source verification, licensing checks, and clear authorship.

## Factory Blocks

| Block | Purpose | First stack | MVP time | MVP cost |
|---|---|---|---:|---:|
| AI Website Builder Lab | AI creates course pages, lab pages, landing pages, demo sites. | bolt.diy, Dyad, gpt-engineer, Astro, Next.js | 1-3 days | $0-50/month |
| AI Presentation Lab | AI creates lecture decks, pitch decks, conference slides. | Presenton, Slidev, Marp, Reveal.js, PptxGenJS | 1-2 days | $0-30/month |
| AI Newsletter Lab | Weekly research bulletins and email/web digests. | Listmonk, Mautic, Ghost, Strapi, Directus | 1-3 days | $0-50/month |
| Credentials and Certificates Lab | Certificates, badges, verification pages, learner records. | W3C VC, Open Badges, digitalbazaar/vc, CREDEBL | 2-7 days | $0-100/month |
| AI Course Builder Lab | Syllabus, modules, exercises, quizzes, reading lists. | Moodle, Open edX, Canvas, Quarto, Jupyter Book | 3-10 days | $0-200/month |
| AI Research Assistant Lab | RAG over Academy sources, docs, courses, PDFs, notes. | Ollama, Open WebUI, LangChain, LlamaIndex, Qdrant | 3-14 days | $0-500/month |
| AI Design Lab | Posters, banners, certificates, thumbnails, social cards. | Penpot, ComfyUI, ImageMagick, design templates | 1-5 days | $0-100/month |
| AI Video Production Lab | Clips, subtitles, summaries, chapters, shorts. | Whisper, faster-whisper, FFmpeg, OpenShorts | 3-10 days | $0-300/month |
| AI Localization Lab | Multilingual docs, subtitles, websites, courses. | Weblate, Argos Translate, LibreTranslate, Pontoon | 2-7 days | $0-200/month |
| AI Operations Lab | Agents for issues, README updates, digests, review tasks. | n8n, Windmill, OpenHands, Aider, Continue, Roo Code | 3-14 days | $0-300/month |
| AI Assessment Lab | Quizzes, rubrics, grading, GitHub-based student tasks. | nbgrader, GitHub Classroom, PrairieLearn, Open edX | 3-10 days | $0-100/month |
| Template Marketplace Lab | Reusable Academy templates for sites, decks, certificates. | GitHub templates, Markdown, Quarto, HTML, JSON schemas | 3-14 days | $0-100/month |

## Production Rule

AI can draft. ABC4RD reviewers approve.

Before publication, every generated artifact should pass:

1. source check;
2. license check;
3. factual review;
4. style review;
5. privacy check;
6. public disclaimer check;
7. final human approval.

## First 72 Hours

| Step | Output | Time | Cost |
|---|---|---:|---:|
| 1 | Launch AI Production Factory overview. | same day | $0 |
| 2 | Create AI Website Builder lab and first page template. | 1 day | $0-20 |
| 3 | Create AI Presentation lab and first lecture deck template. | 1 day | $0-20 |
| 4 | Create Certificate lab and one mock verifiable certificate page. | 1-2 days | $0-50 |
| 5 | Create AI Newsletter lab and first weekly bulletin template. | 1 day | $0-20 |
| 6 | Create Research Assistant architecture note. | 1-2 days | $0-50 |

## Upstream Repositories

Interaction results are saved in:

- `labs/ai-production-factory/ai-production-watch-results.csv`

Rows with `Not Found`, redirects, or API failures require verification before being cited as active upstream projects.

