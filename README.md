# Finding Memo

**An AI learning platform for programmers** — interactive lessons built with MARP.

> [lotape6.github.io/FindingMemo](https://lotape6.github.io/FindingMemo)

## About

A self-contained platform that teaches AI agentic programming through interactive presentations. Each lesson is both content and example — the platform itself was built using the concepts it teaches.

| Finding Nemo | AI Concept | Role |
|---|---|---|
| Marlin | The Agent | The intelligence |
| Water Tunnels | The Harness | Navigate the knowledge |
| Crush (you) | The Human | Builds the tunnels |

## Lessons

| # | Title | Status | Duration |
|---|---|---|---|
| 0 | [Introduction](lessons/00-introduction/) | Available | 5-7 min |
| 1 | [The Agent Loop](lessons/01-agent-loop/) | Available | 10 min |
| 2 | Context & Memory | Coming soon | — |
| 3 | The Harness | Coming soon | — |

## Quick Start

```bash
npm install            # install marp-cli
npm run build          # build all lessons to dist/
npm run preview:intro  # preview Lesson 0
npm run preview:agent-loop  # preview Lesson 1
```

## Project Structure

```
FindingMemo/
  index.html                         # Landing page / lesson picker
  lessons/
    00-introduction/
      deck.md                        # Lesson 0: Finding Memo (intro)
    01-agent-loop/
      deck.md                        # Lesson 1: The Agent Loop (deep dive)
  assets/
    images/                          # Shared images (Finding Nemo scenes)
    themes/
      finding-memo.css               # Custom MARP theme (light ocean pastel)
  skills/                            # Conceptual AI skill definitions
    create-slides.md
    creative-funny.md
    metaphor.md
    plottwist.md
    marp-slide.md
  scripts/
    build.sh                         # Build all lessons to dist/
    inline-images.sh                 # Embed images as base64 in HTML
  .github/workflows/
    deploy.yml                       # GitHub Pages deployment
```

## TODO

### Lessons

- [ ] `lessons/02-context/deck.md` — **Context & Memory**: deep dive into context windows, Marlin vs Dory (capacity), compaction, summarization, memory systems, how conversation history works
- [ ] `lessons/03-harness/deck.md` — **The Harness**: CLAUDE.md files, skills as reusable prompts, hooks, project structure as intelligence, "engineering systems not prompts"
- [ ] `lessons/04-prompt-craft/deck.md` — **Prompt Craft**: writing effective prompts, editor-first workflow, dehumanization, token awareness, structured output requests
- [ ] `lessons/05-tools-mcp/deck.md` — **Tools & MCP**: how tool calling works in depth, MCP servers, building custom tools, tool selection strategies
- [ ] `lessons/06-real-world/deck.md` — **Real World Patterns**: practical project setup, multi-agent architectures, CI/CD with agents, code review agents, testing agents
- [ ] `lessons/00-introduction/deck.md` — Add the agent execution example (slides 2-5 from v1) as a bonus section or appendix within Lesson 0
- [ ] `lessons/01-agent-loop/deck.md` — Add a Dory-specific image for the subagents slide

### Platform

- [ ] `index.html` — Add search/filter for lessons by topic or difficulty
- [ ] `index.html` — Add a visual learning path graph (nodes + edges) instead of just cards
- [ ] `index.html` — Track lesson completion in localStorage and show progress
- [ ] `index.html` — Add dark mode toggle matching a dark variant of finding-memo.css
- [ ] `assets/themes/finding-memo-dark.css` — Dark mode variant of the theme
- [ ] `lessons/*/deck.md` — Add inter-lesson navigation (prev/next) as footer links in each lesson
- [ ] `scripts/build.sh` — Auto-generate landing page lesson list from lessons/ directory contents
- [ ] `scripts/build.sh` — Add PDF/PPTX export targets per lesson

### Content

- [ ] `skills/` — Develop conceptual skills into functional, reusable Claude Code skill files
- [ ] `assets/images/` — Add diagrams for agent loop, context stack, harness structure (replace CSS-only visuals)
- [ ] `lessons/*/deck.md` — Add "exercises" slides at the end of each deep dive with hands-on tasks
- [ ] `CONTRIBUTING.md` — Guide for adding new lessons (template, naming, structure)

## Built with

- [MARP](https://marp.app) — Markdown Presentation Ecosystem
- [Claude Code](https://claude.ai/code) — AI-powered development

## License

MIT
