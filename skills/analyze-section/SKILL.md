---
name: analyze-section
description: Analyze a webpage section from frontend + AI-expert perspectives, producing multi-level content
---

Given a section name and its current HTML/content, perform a dual analysis.

## Web Research Phase (run FIRST)
Before analyzing, use WebSearch/WebFetch to gather current data:
- **AI tools state-of-the-art**: Search for latest features of Claude Code, GitHub Copilot, Cursor, and other AI coding tools (e.g., "Claude Code latest features 2026", "GitHub Copilot agent mode updates"). Use this to assess content freshness and gaps.
- **Frontend best practices**: Search for current accessibility standards (WCAG 2.2), CSS/JS performance recommendations, and responsive design patterns relevant to the section's layout.
- **Concept accuracy check**: For each AI concept presented, search for the latest documentation or announcements to verify accuracy (e.g., context window sizes, supported features, pricing changes).
- **Competitor content**: Search for how other educational sites explain the same AI concepts — identify framing ideas or depth levels we're missing.

## Frontend Analysis
- Layout effectiveness (grid, spacing, responsiveness)
- Visual hierarchy (headings, contrast, whitespace)
- Interactivity quality (animations, transitions, controls)
- Accessibility (keyboard nav, screen readers, contrast ratios)
- Mobile behavior

## AI Expert Analysis (informed by web research)
- Accuracy of concepts presented — cross-reference with latest official docs
- Completeness (what's missing vs state-of-the-art, based on recent searches)
- Cross-tool coverage (Claude Code, Copilot, Cursor, OpenCode) — verify feature claims against current release notes
- Depth calibration: is it too shallow or too dense for each level?
- Flag any outdated information found (model names, pricing, capabilities that have changed)

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
