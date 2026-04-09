---
marp: true
theme: finding-memo
paginate: true
transition: fade
---

<!-- _class: lead -->
<!-- _paginate: skip -->

# The Agent Loop

## Lesson 1 -- Finding Memo

<!-- Speaker notes: Welcome to Lesson 1. This is where we go deep on the first of our three core concepts: the agent loop. In the intro, we said the agent loop is "prompt, think, act, observe, repeat." Now we'll break that apart and understand every piece. By the end, you'll know exactly what happens between the moment you hit Enter and the moment you get an answer. -->

---

<!-- _class: concept -->

# Remember Marlin?

He crossed the ocean by repeating four steps:

- **Look around** for clues
- **Choose a direction** and swim
- **Observe what happened** and adjust

That's the agent loop.

<!-- Speaker notes: In the intro lesson we met Marlin, the clownfish who crossed the entire ocean. He didn't have a GPS. He didn't plan the whole route upfront. At every moment he looked around, picked a direction, swam, saw what happened, and repeated. That simple cycle -- sense, decide, act, observe -- is the exact same structure behind every AI agent. The difference is that Marlin processes light and sound. An AI agent processes text. -->

---

<!-- _class: concept -->

# What is a model?

The **raw intelligence**. Nothing more.

- Text in, text out -- one completion
- No memory of previous calls
- No ability to act on the world

A model is a **function**: `f(prompt) -> completion`

<!-- Speaker notes: Before we can understand agents, we need to understand what a model actually is. A model like Claude or GPT is a stateless function. You give it text, it produces text. That's it. It has no memory between calls. It cannot read files, browse the web, or run code. Every time you call it, it starts fresh with only what you put in the prompt. Think of it as pure reasoning ability trapped in a box with no arms and no eyes. Incredibly powerful thinking -- but only thinking. -->

---

<!-- _class: concept -->

# What is an agent?

A **model** + a **loop** + **tools**.

- The **model** decides what to do next
- The **loop** keeps the cycle running
- The **tools** let it act on the world

An agent is a model that can *do things*.

<!-- Speaker notes: An agent wraps that stateless model in a system that gives it persistence and agency. The loop calls the model, checks the response, executes any tool calls, feeds results back, and calls the model again. The tools are the arms and eyes -- file readers, code runners, web searchers, API callers. The model is still doing all the thinking. But now it can think in multiple steps and interact with real systems between each step. The "agent framework" is really just a while loop and a tool dispatcher. -->

---

# The loop, visualized

<div class="loop-box">
  <div class="loop-step">User prompt</div>
  <div class="loop-arrow">&darr;</div>
  <div class="loop-step">Model thinks</div>
  <div class="loop-arrow">&darr;</div>
  <div class="loop-step">Tool call?</div>
</div>

<div class="columns" style="margin-top: 20px;">
<div class="center">

<div class="loop-box">
  <div class="loop-arrow">yes &darr;</div>
  <div class="loop-step">Execute tool</div>
  <div class="loop-arrow">&darr;</div>
  <div class="loop-step">Feed result back</div>
  <div class="loop-arrow">&hookleftarrow; repeat</div>
</div>

</div>
<div class="center">

<div class="loop-box">
  <div class="loop-arrow">no &darr;</div>
  <div class="loop-step">Final answer</div>
</div>

</div>
</div>

<!-- Speaker notes: Here's the full cycle. A user prompt enters the system. The model generates a response. If that response contains a tool call, the harness executes the tool and feeds the result back into the context. The model thinks again with this new information. This repeats until the model decides it has enough information and responds with a final answer instead of a tool call. That branching point -- "tool call or final answer?" -- is the heart of the loop. The model itself makes that decision every single time. -->

---

<!-- _class: concept -->

# Tool calling

The model doesn't "run code."
It outputs a **structured request**.

```
Model:  "I need to read main.py"
  -> Tool call: Read(file="main.py")
  <- Result:    "def hello(): ..."
Model:  "Now I understand the code."
```

The harness executes. The model only writes text.

<!-- Speaker notes: This is a critical distinction. When Claude "reads a file," it doesn't actually open a file. It outputs a JSON object that says "please call the Read function with this path." The harness -- the code running the loop -- sees that structured output, actually reads the file, and pastes the contents back into the conversation. The model then sees those contents as new text in its context and reasons about them. Every tool works this way: the model requests, the harness executes, the result comes back as text. The model never leaves its text-in, text-out box. -->

---

<!-- _class: concept -->

# When does the loop stop?

Three possible endings:

- The model decides it **has the answer**
- The loop hits a **max iterations** limit
- The user **interrupts** the process

The model *chooses* to stop. That's the default.

<!-- Speaker notes: Most of the time, the loop ends because the model simply responds with text instead of a tool call. It has gathered enough information and is ready to answer. But there are safety rails. Most agent frameworks set a maximum number of iterations -- say 25 or 50 tool calls -- to prevent infinite loops. And the user can always interrupt. The key insight is that stopping is a model decision, not a framework decision. The model learns when "enough is enough" from the patterns in its training data and from the instructions in its system prompt. -->

---

# Subagents -- meet Dory

Sometimes the agent **spawns a child** for a subtask.

<div class="columns">
<div>

**Parent (Marlin)**
- Sees the full journey
- Decides what to delegate
- Passes focused context

</div>
<div>

**Child (Dory)**
- Gets a narrow task
- Has its own loop
- Returns a result

</div>
</div>

The parent keeps going with the child's answer.

<!-- Speaker notes: In complex tasks, a single agent loop isn't always enough. The parent agent might realize "I need to search this entire codebase" and spawn a child agent with a focused prompt: "Find all files that import the auth module." That child runs its own loop -- reading files, searching, reasoning -- and returns a summary. The parent never saw those intermediate steps. It just gets the result. This is like Marlin asking Dory to go talk to the whale. She has her own little adventure, comes back with an answer, and Marlin incorporates it. Subagents keep each loop focused and prevent the parent's context from overflowing with details it doesn't need. -->

---

<!-- _class: lead -->

# The key insight

The model **IS** the orchestrator.

There is no separate "agent brain."

Every decision -- what tool to call, when to stop, how to combine results -- comes from the model itself.

The framework just runs the loop.

<!-- Speaker notes: This is the single most important takeaway from this lesson. When people hear "AI agent," they imagine some complex framework making decisions. But the framework is trivially simple -- it's a while loop that calls the model and dispatches tools. ALL the intelligence comes from the model. The model decides which tool to use. The model decides when it has enough information. The model decides how to synthesize results into a final answer. The framework is plumbing. The model is the brain. Understanding this changes how you think about building with agents. You don't need a smarter framework. You need better context for the model. -->

---

<!-- _class: lead -->
<!-- _paginate: skip -->

# Next up

## Lesson 2 -- Context and Memory

How the agent remembers, forgets, and decides what matters.

[Back to lessons](../../index.html)

<!-- Speaker notes: In the next lesson, we'll explore context -- the window through which the model sees the world. We'll learn how context fills up, what happens when it overflows, and why managing context is the most important skill in agentic programming. See you there. -->
