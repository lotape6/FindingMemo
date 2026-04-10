---
description: "Create slides interactively following best practices"
disclaimer: "Conceptual example - not a real executable skill. Part of the Finding Memo presentation."
---

# /create-slides

## Web Research Phase (run FIRST)
Before creating slides, use WebSearch/WebFetch to enrich content:
- **Topic currency**: Search for the latest news, announcements, and developments related to the presentation topic. Prioritize sources from the last 3 months.
- **Audience context**: Search for trending discussions in the target audience's community (e.g., Hacker News, Reddit r/programming, dev.to) to find current pain points and hot takes to reference.
- **Statistics and quotes**: Search for recent data points, survey results (Stack Overflow Developer Survey, GitHub Octocopilot report, etc.), and quotable statements from industry figures to add authority.
- **Visual inspiration**: Search for recent conference talks or slide decks on similar topics for structural inspiration.

The following structure must be followed:
- **Front Page**: Catch user attention. Use `/creative-funny` skill
- **Introduction**: Explain the topic and the intention of the presentation
- **Maintain attention**:
    - Use skill `/plottwist`
    - Introduce memes where appropriate
- **1 or more slides**: Explain core concepts
- **Conclusion**: Summarize key points, circle back to the intention

Use `/metaphor` skill to create easy-to-understand associations with core concepts.

Given the user prompt, create self-contained slides with minimal animations but as many inter-slide connections as possible for interactive navigation.

**Ask user whenever a relevant decision is required for development of the slides.**

## Execution Flow

1. **Web research**: Search for latest developments, stats, and quotes on the topic
2. Analyze user prompt to extract: topic, audience, tone, constraints
3. Use `/metaphor` to find a central analogy (web-informed)
4. Draft slide outline and confirm with user — include sourced data points
5. Use `/marp-slide` to generate each slide
6. Use `/plottwist` at ~40% through the deck (can reference real recent events)
7. Use `/creative-funny` for opener and closer (use trending memes/references)
8. Review connections between slides and add navigation links
9. **Fact-check**: Verify all claims and statistics against their sources before finalizing
