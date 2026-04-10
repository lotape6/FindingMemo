# Finding Memo

**AI agents are simpler than you think.**

An interactive guide that teaches AI agentic programming through a Finding Nemo metaphor -- where the guide itself was built by an AI agent, making it a live example of the concepts it teaches.

> **[lotape6.github.io/FindingMemo](https://lotape6.github.io/FindingMemo)**

## What you'll find

A single-page scrolling experience that walks you through three core concepts:

**The Cast** -- What a model, an agent, and context actually are. No jargon. A clownfish swims alongside you as your companion through the guide.

**How It Works** -- The agent loop visualized as a hand-drawn diagram. The harness file structure (root, user, project layers). The context window filling up and compacting.

**The Mindset** -- Four rules for working with AI agents: prompt deliberately, build reusable context, keep it congruent, think first.

**Watch It Happen** -- A live reconstruction of how an agent built the Finding Memo presentation. Step by step, tool call by tool call, subagent by subagent. Play, pause, step through. The loop in action.

There's also a [14-slide MARP presentation](https://lotape6.github.io/FindingMemo/lessons/00-introduction/index.html) that uses Finding Nemo as a metaphor for the three concepts. It's designed for a 5-minute talk with deep-dive speaker notes.

## The metaphor

| Finding Nemo | AI | |
|---|---|---|
| Marlin | The Agent | The intelligence that drives action |
| Water Tunnels | The Harness | Infrastructure that carries the agent |
| Crush | The Human | Knows the tunnels, builds the tunnels |
| Dory | Subagent | Same brain, smaller context |

## Run locally

```bash
npm install
npm run build        # build everything to dist/
npm run preview:intro  # preview the MARP slides
```

Or just open `index.html` in a browser -- the guide works without a build step.

## Project structure

```
index.html                  # The full scrolling guide
lessons/00-introduction/    # MARP presentation (14 slides)
assets/images/              # Finding Nemo scene images
assets/themes/              # Custom MARP theme
skills/                     # Conceptual skill files (teaching material)
scripts/                    # Build and image-inlining scripts
.github/workflows/          # GitHub Pages deployment
```

## Built with

[MARP](https://marp.app) for slides, [Claude Code](https://claude.ai/code) for everything else, [GSAP](https://gsap.com) for scroll animations.

## License

MIT
