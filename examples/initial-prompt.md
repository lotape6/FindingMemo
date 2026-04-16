
You will plan and orchestrate a slide creation. I'll give you the overall idea and you have to use the agent loop properly with all claude code features. 

The stack will be MARP and .md files under a proper structure. 
The project shall contain all the steps required to install marp and generate the presentation. 

Start by performing an in depth analysis of the capabilities of MARP and how to create powerful visual presentations (try libreoffice compatibility as much as possible while keeping simplicity and fancyness as priority)

Search in the web images from nemo movie of the following scenes and store them with the names along:
- Generic photo with all Finding Nemo core charactes -> generic
- Marving with nemo -> love
- Crush showing Marlin the EAC (East Australian Current) -> harness
- One image of nemo scaping the fish tank. -> mindset

The presentation is a recursive concept. The idea is that the slides themselves (as .md files they are),  serve as  live example of the mindset behind AI Agentic programming. More details later on.

The core concepts to be presented (so far, it will grow) are:

- Agent loop
- Context/memory
- The harness system

The presentation will itself contain a fictional emulation of the way the slides where created. Some minimal representation of the execution of the agent (take claude-devtools as example. search on web). The execution will be:

BEGIN EXECUTION EXAMPLE

Prompt: "Create slides  to introduce programmers 2 AI agents"

Agent: Use skill /create-slides

```
---
description: "Create slides interactively following best practices"
---

The following structure must be followed:
	- Front Page: Catch up user attention. Use /creative-funny skill
	- Introduction: explain the topic and the intention of the presentation
	- Maintain the attention:
		 - use skill /plottwist
		 - introduce memes
    - 1 or more slides: Explain core concepts
    - conclusion: summarize key points getting back to the intention
      
Use /metaphor skill to create easy to understand associations with core concepts.

Given the user prompt create self-contained slides with minimal animations but as many connections between the slides as possible to navigate interactively.

Ask user whenever some relevant decision is required for the development of the slides.
```

The Agent: Use TODO:
- Use Metaphor -> (populate your self some metaphor skill as the one provided)
- Use plottwist -> (same)
- Summarize the content and define the core concepts, intention and the format.
- Use /marp-slide to create the slides.
- Etc..
(etc..)

END EXECUTION EXAMPLE
Complete the execution until slides are done (don't extend it too much)

Those skills will be real .md files but serving as conceptual example rather than ready to use files (disclaimer wherever required). 

The core guidelines for the presentation related to the core metaphor are:

AI is complex and it's all about memory. So, Finding Memo (Finding Nemo film analogy).
In the metaphor:
- Marlin -> Agent/Model
	- They are the same
	- They represent the intelligence in the AI system
	- Context capability == difference between Dory and  Marlin
	- They don't have feelings (agents, Marlin and Dory do)
- Crush -> The human 
	- Shit ton of context capability
	- Has feelings
	- Has passed the disturbing valley and confuses AI interaction
- Eastern Australian Current -> The harness system
	- It's what actually let Marling find Nemo, not the Love feeling.
	- It's what gives the Agent next-gen capabilities
	- It's a mixture of the context and how it's distributed and defined
	- Not std and currently in constant change

The presentation must be 5~7 minutes long to present, but +1h long to analyze and underestand. The easy path:
"""
This presentation was fully developed following the concepts I want to present to you so you can later on understand and explore (self-contained). The main problem of AI currently is the human since we have not entered the right mindset yet (me the first, these are indeed a 1 token-burning-month learning notes). To enter the mindset you will be the agent, and the presentation will be the context and I'll be the harness (more on this later). Straight into the meme. 

Let's talk about Finding Nemo (Memo): bla bla bla about the metaphor in this order:
- Who is Marling? The agent == model -> first common error thinking they are different
- How did Marling found Nemo? Love? -> second error -> no feelings here, just concepts distributed over 1s and 0s
- Crush was who showed the agent the EAC and let Marlin (and Dory, useful concept for subagents/task concept in AI). The human is the responsible to let Marlin find the "water tunel" or Harness.

End of Nemo metaphor, back to real life and AI.
I've done the presentation as I were an agent (intelligence) with some role (presentor, equivalent to agent.md) by ussing skills as metaphor or plottwist (equivalent to SKILL.md == old commands) to achieve a DoD (you are now comfortable with basic concepts).  Which are such concepts? 

Agent loop -> Model is the mind that thinks about next step

Context -> bunch of .md files distributed
	-> Model context capacity is the difference between Marlin and Dory
	-> Once too many tool usages -> compact (summarize or drop)

Harness -> "human intelligence" the way the files are distributed and how are they described, and referenced as well as the proper usage of available resources. 

What I learned with this in mind? 
- Never prompt directly in the chat:
	- Prompt on an editor
	- Read twice your prompt
	- Dehumanize your prompt
- Scripting has evolved: create skills agents, and in general context that can be reused
- Your mission is to keep congruent all the available context for the AI, not to telling him how to be smart
- Take your time to think first, then prompt.
"""
Populate the project by running as many agents and subagents as required. Create a full plan to create the slides step by step so there is a way to navigate the slides in 5~10 minutes with the easy path to present it wherever. Then the slides must also allow you to understand the full recursion of the slides with all the prior context I gave you.
