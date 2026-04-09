# Finding Memo

**An AI Introduction for Programmers** — where the slides are the lesson.

> View the presentation online: [lotape6.github.io/FindingMemo](https://lotape6.github.io/FindingMemo)

## About

A presentation that teaches AI agentic programming by **being** an example of it. The core metaphor maps Finding Nemo to AI concepts:

| Finding Nemo | AI Concept | Role |
|---|---|---|
| Marlin | The Agent | The intelligence |
| Water Tunnels | The Harness | Navigate the knowledge |
| Crush (you) | The Human | Builds the tunnels |

The 3 core concepts covered: **Agent Loop**, **Context**, and **Harness**.

## Quick Start

```bash
npm install          # install marp-cli
npm run preview      # open in browser with live reload
npm run build        # generate output/finding-memo.html
```

### Other build targets

```bash
npm run build:pdf    # PDF export (requires Chrome/Chromium)
npm run build:pptx   # PowerPoint export
npm run watch        # rebuild on file changes
bash scripts/build.sh # build all formats at once
```

### Presenting

**5-7 min path** — Open the HTML output or the [online version](https://lotape6.github.io/FindingMemo). Use arrow keys. Press `P` for presenter view with speaker notes.

**Deep dive** — Explore the repo structure below. Every file is both content and teaching material.

## Project Structure

```
FindingMemo/
  assets/
    images/
      generic.jpg              # Finding Nemo core characters
      love.jpg                 # Marlin & Nemo
      harness.jpg              # Crush & the Water Tunnel (EAC)
      mindset.jpg              # Nemo escaping the fish tank
    themes/
      finding-memo.css         # Custom MARP theme (light ocean pastel)
  skills/                      # Conceptual AI skill definitions
    create-slides.md           # Orchestrator skill example
    creative-funny.md          # Creative content generation skill
    metaphor.md                # Concept-mapping skill (includes Nemo table)
    plottwist.md               # Perspective-shifting skill
    marp-slide.md              # Single slide generator skill
  slides/
    deck.md                    # The presentation source
  scripts/
    build.sh                   # Multi-format build script
  .github/
    workflows/
      deploy.yml               # GitHub Pages deployment
  package.json                 # Dependencies & npm scripts
  .marprc.yml                  # MARP configuration
```

## TODO

- [ ] `slides/deck.md` — Create a separate presentation for the agent execution example (slides 2-5 from v1, showing the fictional `/create-slides` flow)
- [ ] `skills/` — Develop the conceptual skills into functional, reusable skill files for Claude Code
- [ ] `slides/deck.md` — Add a Dory slide to illustrate subagents and limited context (Marlin vs Dory = context capacity)
- [ ] `assets/themes/finding-memo.css` — Add a dark mode variant toggled via `<!-- _class: dark -->`
- [ ] `slides/deck.md` — Expand the "What I learned" slide into a bonus deep-dive section with concrete examples
- [ ] `scripts/build.sh` — Add image optimization step (auto-resize to 1920x1080 max)
- [ ] `README.md` — Add a "How to fork & customize" section for other presenters

## Built with

- [MARP](https://marp.app) — Markdown Presentation Ecosystem
- [Claude Code](https://claude.ai/code) — AI-powered development

## License

MIT
