---
name: build-fauna
description: Generate the dynamic ocean fauna system (background fish, creatures, Nemo companion)
---

Build the JS module for the living ocean background.

## Web Research Phase
Use WebSearch/WebFetch to source assets and techniques:
- **Sprite resources**: Search for free pixel-art ocean creature sprites (OpenGameArt, itch.io, Kenney.nl). Find new species to add variety to the registry.
- **Animation techniques**: Search for performant CSS/JS sprite animation patterns (requestAnimationFrame best practices, will-change optimization, GPU compositing tips) to keep fauna smooth at 60fps.
- **Biological accuracy**: Search for real marine species behaviors (schooling patterns, depth preferences, speed ratios) to make the fauna system feel more natural and educational.

## Species Registry
Define species with: sprite path, pixel height, opacity, speed range, rarity weight, and optional special behavior.

Categories by rarity:
- Common (w:15-20): small colorful fish (6+ variants)
- Uncommon (w:5-10): medium fish, different colors
- Rare (w:2-4): turtle, jellyfish, seahorse
- Ultra-rare (w:0.5-1): shark, manta ray, whale

## Spawner Logic
- Spawn one creature every 3-5 seconds (randomized interval)
- Each creature swims across the full viewport width
- Direction: 50/50 left-to-right or right-to-left
- Vertical position: random between 10% and 80% of viewport
- Speed proportional to size (bigger = slower)
- Opacity proportional to rarity (rarer = more transparent — feels distant)
- Max concurrent creatures: 8 (remove oldest if exceeded)
- Clean up DOM elements after animation completes

## Marlin (companion fish)
- Fixed position, follows scroll with sine-wave bob
- Moves between sections with hysteresis (300ms delay, 200px threshold)
- Flips sprite direction when moving left
- Shows speech bubbles during Watch It simulation

## Baby Nemo
- Hidden until user scrolls to footer
- Appears from below, swims up to join Marlin
- Follows Marlin with 5% offset permanently
- Smaller sprite (40px vs 64px)

## Edge Decorations
- Coral and seaweed sprites anchored to bottom edges of sections
- Only at left:0 and right:0, never floating in middle
- Subtle sway animation via CSS
- Hue-rotate variations for color diversity
