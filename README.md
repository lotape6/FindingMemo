# Finding Memo: AI Introduction for Programmers

> A recursive presentation where the slides themselves are the lesson.

## Quick Start

### Prerequisites
- Node.js >= 18
- npm

### Install & Build

```bash
# Install dependencies
npm install

# Preview with live reload
npm run preview

# Build HTML (recommended for presenting)
npm run build

# Build PDF (requires Chrome/Chromium)
npm run build:pdf

# Build PPTX
npm run build:pptx

# Or build all formats at once
bash scripts/build.sh
```

### Presenting

**5-7 min path**: Open `output/finding-memo.html` in a browser. Use arrow keys to navigate. Follow speaker notes (press `P` for presenter view).

**1h+ deep dive**: Explore the `slides/`, `skills/`, and this README to understand the recursive structure. The presentation was built using the same concepts it teaches.

## Project Structure

```
├── README.md              # You are here
├── package.json           # MARP CLI dependency & build scripts
├── .marprc.yml            # MARP configuration
├── assets/
│   ├── images/            # Finding Nemo scene images
│   │   ├── generic.jpg    # Core characters
│   │   ├── love.jpg       # Marlin & Nemo
│   │   ├── harness.jpg    # Crush & EAC
│   │   └── mindset.jpg    # Nemo escaping tank
│   └── themes/
│       └── finding-memo.css  # Custom MARP theme
├── skills/                # Conceptual skill definitions (part of the meta-lesson)
│   ├── create-slides.md
│   ├── creative-funny.md
│   ├── plottwist.md
│   ├── metaphor.md
│   └── marp-slide.md
├── slides/
│   └── deck.md            # The presentation
├── scripts/
│   └── build.sh           # Build all formats
└── output/                # Generated files (gitignored)
```

## The Recursive Concept

This presentation teaches AI agentic programming concepts by **being** an example of AI agentic programming. The slides were created by an AI agent using skills (like `/create-slides`, `/metaphor`, `/plottwist`) — and those same skills are included in the repo as teaching material.

The core metaphor maps Finding Nemo characters to AI concepts:
- **Marlin** → The Agent/Model (intelligence)
- **Crush** → The Human (context + feelings)  
- **EAC** → The Harness (what actually enables the agent)
# FindingMemo
# FindingMemo
