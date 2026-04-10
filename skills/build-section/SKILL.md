---
name: build-section
description: Generate production HTML/CSS/JS for a single page section with multi-level content support
---

Given an analysis from /analyze-section, build the complete HTML/CSS/JS for one section.

## Requirements

### Multi-Level System
All content containers must support `data-level="1|2|3"` attributes.
A global CSS class on `<body>` controls visibility:
- `body.level-1` shows only `[data-level="1"]` and shared elements
- `body.level-2` shows `[data-level="1"]`, `[data-level="2"]`, and shared
- `body.level-3` shows all levels

Shared elements (always visible) have no `data-level` attribute.

### Visual Style
- Frosted glass cards: `rgba(12,40,60,0.5)`, `backdrop-filter:blur(8px)`, `border-radius:12px`
- Readable body font: Space Mono 13px
- Heading font: VT323 for retro flavor, only on h1/h2/h3 and labels
- Deep ocean background with subtle gradients
- Decorations: real PNG sprites from assets/sprites/, anchored to edges only
- No pixel-art borders on content containers — smooth rounded corners

### Interactivity
- Expandable detail panels where appropriate
- Toggle switches for mode changes (basic/advanced)
- Scroll-triggered reveal animations via GSAP ScrollTrigger
- Connected animations between related concepts (e.g., loop → context growth)

### Cross-Tool Support
Where concepts vary by tool, use a tool selector (tabs or dropdown):
- Generic (tool-agnostic explanation)
- Claude Code (CLAUDE.md, settings.json, hooks)
- GitHub Copilot (copilot-instructions.md, AGENTS.md)
- Cursor (.cursor/rules/*.mdc)

### Output
Return the complete HTML fragment for the section, plus any CSS to add to the global stylesheet, plus any JS functions to register.
