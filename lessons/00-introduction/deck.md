---
marp: true
theme: finding-memo
paginate: true
transition: fade
---

<!-- _class: lead -->
<!-- _paginate: skip -->

# Finding **Memo**

## An AI Introduction for Programmers

<!-- These slides were "created by an agent." Everything you see is both content and example of the concepts being taught. Press P for presenter view. -->

---

<!-- _class: lead -->
<!-- _paginate: skip -->

# It's all about **context**

You'll be the thinking brains; I'll guide you to think the agentic way.

You are the **agent**. I'm the **human**.

Let's understand 3 core concepts.

<!-- EASY PATH: "AI and agents — it's all about context. But how do we manage that context? For the next few minutes, you will be the agent — the intelligence processing information. These slides are your context. And I'm the human, the one shaping how that context reaches you. Let's understand 3 core concepts together." -->

---

<!-- _class: photo -->
<!-- _paginate: skip -->

![bg brightness:0.55](../assets/images/generic.jpg)

# Finding **Memo**

<!-- Image pops in. "Let me tell you about Finding Nemo — or as we'll call it, Finding Memo. Because AI is all about memory." Pause for the visual. -->

---

![bg left:32%](../assets/images/generic.jpg)

# The Analogy

Marlin, a clownfish, crossed the entire ocean to find his son Nemo.

**How did he do it?**

<!-- Brief intro to the analogy. The audience knows Finding Nemo. One sentence is enough. The question sets up the plottwist. "A dad crossed the ocean for his son. Simple story. But HOW he did it — that's where the lesson is." -->

---

<!-- _class: photo -->
<!-- _paginate: skip -->

![bg brightness:0.5](../assets/images/love.jpg)

# How did Marlin find Nemo?

<!-- Image pops in. Let the image breathe. The audience will internally answer "love" or "determination". Hold the pause. -->

---

<!-- _class: photo -->
<!-- _paginate: skip -->

![bg brightness:0.5](../assets/images/love.jpg)

# Was it **love**?

<!-- Same image, text changes. The fade transition makes "How did Marlin find Nemo?" dissolve into "Was it love?" — dramatic beat. Hold the silence. -->

---

![bg right:38%](../assets/images/harness.jpg)

# By the **turtle**.

Not by love. No feelings here.

Just concepts distributed over 1s and 0s.

<!-- PLOTTWIST 1: "Not by love. Marlin is an agent. Agents don't have feelings. They don't 'want' to find Nemo. They process context and take actions. The thing that actually carried Marlin across the ocean wasn't emotion — it was infrastructure. A turtle named Crush showed him the way." -->

---

<!-- _class: photo -->
<!-- _paginate: skip -->

![bg brightness:0.55](../assets/images/harness.jpg)

# *"Grab <span style="font-family: 'Ubuntu Mono', 'Courier New', monospace; color: #0f766e;">$hell</span>, dude!"*

<!-- Crush appears. Image pops in. "This is Crush. 150 years old. He didn't swim for Marlin. He showed him something much more powerful." -->

---

![bg left:35%](../assets/images/harness.jpg)

# The Water Currents

Crush showed Marlin the **infrastructure** that carried him faster than he could ever swim alone.

He didn't find Nemo for him. He showed him **the way**.

<!-- "Crush showed Marlin the East Australian Current — a massive water current that carried him across the ocean at incredible speed. Crush didn't do the thinking. He didn't swim for Marlin. He showed him the system — the infrastructure — that made the journey possible. That's exactly what the human does in AI." -->

---

<!-- _class: lead -->

## From ocean to AI

<div class="mapping">
<div class="map-row">
  <div class="map-block left">
    <span class="map-label">Marlin</span>
    <span class="map-desc">the intelligence</span>
  </div>
  <span class="map-arrow">&rarr;</span>
  <div class="map-block right">
    <span class="map-label">The Agent</span>
    <span class="map-desc">the intelligence</span>
  </div>
</div>
<div class="map-row">
  <div class="map-block left">
    <span class="map-label">Water Currents</span>
    <span class="map-desc">navigate the ocean</span>
  </div>
  <span class="map-arrow">&rarr;</span>
  <div class="map-block right">
    <span class="map-label">The Harness</span>
    <span class="map-desc">navigate the knowledge</span>
  </div>
</div>
<div class="map-row">
  <div class="map-block left">
    <span class="map-label">Crush (you)</span>
    <span class="map-desc">knows the currents</span>
  </div>
  <span class="map-arrow">&rarr;</span>
  <div class="map-block right">
    <span class="map-label">The Human</span>
    <span class="map-desc">builds the currents</span>
  </div>
</div>
</div>

*Guide Nemo through the currents.*

<!-- PLOTTWIST 2 / END OF ANALOGY: "So here's the mapping. Marlin is the agent — the intelligence in your AI system. The Water Currents are the harness — the infrastructure that lets you navigate through knowledge easily. And you? You're Crush. You know the currents. Your job is to build them — guide the agent through." -->

---

# The 3 Core Concepts

<div class="columns3">
<div>

### Agent Loop

<div class="loop-box">
  <div class="loop-step">Prompt</div>
  <div class="loop-arrow">&darr;</div>
  <div class="loop-step">Think</div>
  <div class="loop-arrow">&darr;</div>
  <div class="loop-step">Act</div>
  <div class="loop-arrow">&darr;</div>
  <div class="loop-step">Observe</div>
  <div class="loop-arrow">&hookleftarrow; repeat</div>
</div>

</div>
<div>

### Context

<div class="context-stack">
  <div class="stack-item s1">System prompt</div>
  <div class="stack-item s2">Instructions</div>
  <div class="stack-item s3">Conversation</div>
  <div class="stack-item s4">Tool results</div>
  <div class="stack-item s5">...compacted</div>
</div>

</div>
<div>

### Harness

<div class="harness-box">
  <div class="md-file">.md / .json</div>
  <div class="harness-item">&rarr; Instructions</div>
  <div class="harness-item">&rarr; Rules</div>
  <div class="harness-item">&rarr; Skills</div>
  <div class="harness-item">&rarr; Agents</div>
  <div class="harness-item">&rarr; Hooks</div>
  <div class="harness-item">&rarr; Memory</div>
</div>

</div>
</div>

<!-- CORE SLIDE: "Three concepts. That's all you need. (1) The Agent Loop: prompt in, think, act, observe result, repeat. The model IS the loop. (2) Context: everything the agent can see — stacked layers of text, compacted when full. Similar intelligence, different capacity — that's Marlin vs Dory. (3) The Harness: .md files that define agents, skills, instructions, rules. Your intelligence, crystallized into structure. The harness is what makes the difference between 'AI is useless' and 'AI just built my entire presentation.'" -->

---

<!-- _class: lead -->

# The mindset

*Think first. Then prompt.*

*Build the current, not be the fish.*

*Your context is your superpower.*

<!-- CONCLUSIONS: "Three things to take home. (1) Think before you prompt — write in an editor, read twice, dehumanize. Every wasted token is a wasted thought. (2) Your job is to build the harness — the infrastructure — not to do the thinking yourself. (3) Context is everything. The way you distribute, describe, and reference your files IS the intelligence of your system. The model provides raw thinking power. You provide direction and structure." -->

---

# What I learned

- **Never prompt directly in chat**
  - Write in an editor, read it twice, dehumanize it
- **Scripting has evolved** — create skills, agents, reusable context
- **Keep all context congruent** — don't tell it how to be smart, give it the right information
- **Think first, then prompt**

<!-- "These are practical rules after a month of burning tokens. (1) Never type in the chat directly. Prompts should be deliberate — write in an editor, read twice, strip the human politeness. You're configuring a system, not chatting with a colleague. (2) Scripting has evolved beyond bash — now you create skills, agents, and context files that can be reused across sessions. (3) Your mission is congruence: make sure all the files, settings, and prompts tell a consistent story. You're not teaching the model to be smart — it already is. You're giving it the right information. (4) Think first. Every wasted token is a wasted thought." -->

---

<!-- _class: lead -->
<!-- _paginate: skip -->

# Thank you

Deep dive into the 3 core concepts:
**[lotape6.github.io/FindingMemo](https://lotape6.github.io/FindingMemo/)**

<div class="small">

[github.com/lotape6/FindingMemo](https://github.com/lotape6/FindingMemo)

</div>

<div class="credits">
  <span>Built with MARP</span>
  <span>|</span>
  <span>Powered by Claude Code</span>
</div>

<!-- "Everything is in the repo. The slides are markdown. The skills are markdown. The theme is CSS. Fork it, break it, rebuild it. Go find your Memo. For an interactive deep dive into the Agent Loop, Context, and Harness, visit the web version." -->
