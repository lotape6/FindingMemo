---
name: analyze-section
description: Analyze a webpage section from frontend + AI-expert perspectives, producing multi-level content
---

Given a section name and its current HTML/content, perform a dual analysis:

## Frontend Analysis
- Layout effectiveness (grid, spacing, responsiveness)
- Visual hierarchy (headings, contrast, whitespace)
- Interactivity quality (animations, transitions, controls)
- Accessibility (keyboard nav, screen readers, contrast ratios)
- Mobile behavior

## AI Expert Analysis
- Accuracy of concepts presented
- Completeness (what's missing vs state-of-the-art)
- Cross-tool coverage (Claude Code, Copilot, Cursor, OpenCode)
- Depth calibration: is it too shallow or too dense for each level?

## Multi-Level Content Generation
For each concept in the section, produce content at THREE levels:

**Level 1 — Essentials** (beginner-friendly)
- 1-2 sentences max per concept
- Analogy-first, no jargon
- Visual-heavy, text-light

**Level 2 — Practitioner** (working knowledge)
- How it works in practice
- Tool-specific examples
- Common patterns and gotchas

**Level 3 — Deep Dive** (expert)
- Internal mechanics (e.g., compaction levers, permission pipeline)
- Cross-tool comparison tables
- Edge cases, advanced patterns (worktrees, MCP, hooks)

## Output Format
Return a JSON-like structure:
```
{
  section: "name",
  frontend_issues: [...],
  content_gaps: [...],
  levels: {
    1: { title, concepts: [{name, text, visual_hint}] },
    2: { title, concepts: [{name, text, code_example}] },
    3: { title, concepts: [{name, text, comparison_table, advanced_notes}] }
  }
}
```
