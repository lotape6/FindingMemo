---
description: "Generate a single MARP-formatted slide with proper directives"
disclaimer: "Conceptual example - not a real executable skill. Part of the Finding Memo presentation."
---

# /marp-slide

Generate a single slide in MARP markdown format.

## Input
- **type**: title | content | image | code | quote | split | meme
- **content**: The information to present
- **class**: CSS class to apply (lead, invert, concept, code, meme)
- **background**: Optional image path or color
- **transition**: Optional (fade, slide, wipe, etc.)
- **notes**: Speaker notes for presenter view

## Template

```markdown
---

<!-- _class: {class} -->
<!-- _transition: {transition} -->
<!-- _backgroundColor: {color} -->

# {title}

{content}

<!-- speaker notes here -->
```

## Guidelines
- One idea per slide
- Max 6 lines of text
- Images > text when possible
- Code blocks: max 10 lines, highlight key parts
- Always include speaker notes
