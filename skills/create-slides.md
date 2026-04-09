---
description: "Create slides interactively following best practices"
disclaimer: "Conceptual example - not a real executable skill. Part of the Finding Memo presentation."
---

# /create-slides

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

1. Analyze user prompt to extract: topic, audience, tone, constraints
2. Use `/metaphor` to find a central analogy
3. Draft slide outline and confirm with user
4. Use `/marp-slide` to generate each slide
5. Use `/plottwist` at ~40% through the deck
6. Use `/creative-funny` for opener and closer
7. Review connections between slides and add navigation links
