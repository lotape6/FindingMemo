---
description: "Generate a single MARP-formatted slide with proper directives"
disclaimer: "Conceptual example - not a real executable skill. Part of the Finding Memo presentation."
---

# /marp-slide

Generate a single slide in MARP markdown format.

## Web Research Phase
Use WebSearch/WebFetch when generating slides:
- **Image sourcing**: When the slide type is `image` or `meme`, search for relevant Creative Commons / Unsplash images or well-known meme templates. Provide URLs or describe the image to use.
- **MARP features**: If using advanced features, fetch the latest MARP CLI documentation to verify directive syntax (themes, pagination, custom CSS support).
- **Code accuracy**: When the slide includes code examples, fetch the relevant library/tool documentation to ensure syntax and API usage is current.

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
