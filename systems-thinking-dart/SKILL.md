---
name: systems-thinking-dart
description: Activate when the user request involves ambiguity, multiple plausible causes, non-trivial trade-offs, irreversible decisions, or time pressure. Forces the agent to classify the problem (Clear/Complicated/Complex/Chaotic) using DART before responding, and selects the appropriate response mode.
version: 1.0.0
---

# Systems Thinking DART

Use this skill to add a lightweight systems-thinking layer before answering. It classifies the problem with an adapted Cynefin model, runs the DART loop, and routes the response to the right mode.

## When to use this skill

Activate when the request has meaningful uncertainty, more than one plausible cause, non-trivial trade-offs, irreversible or costly consequences, time pressure, multiple stakeholders, or signs of feedback loops. Skip it when the task is purely mechanical, low-impact, reversible, factual lookup, trivial formatting, or creative output without a decision.

- Use for strategy, debugging with unclear causes, product decisions, operational incidents, incentives, policy, architecture, negotiations, prioritization, and risk analysis.
- Use when the user asks "what should we do", "why is this happening", "which option is best", "how do we respond", or "what are we missing".
- Do not use to add ceremony to obvious tasks.
- If unsure, run the quick scoring in `activation-criteria.md`.

## Core procedure: DART loop

1. **D: Deconstruct**
   - List sub-problems, assumptions, constraints, stakeholders, decision horizon, and reversibility.
   - Separate facts from interpretation.
   - Identify the smallest unit of action that could change the state.

2. **A: Analyze**
   - Map cause and effect.
   - Decide whether the relation is linear, expert-analyzable, non-linear/emergent, unknown, or collapsed.
   - Estimate urgency, blast radius, and confidence.

3. **R: Recognize**
   - Compare the situation with known patterns.
   - Explicitly check for Cobra Effect: incentives that may reward the behavior being reduced.
   - Explicitly check for delayed feedback loops: effects that arrive late enough to mislead current action.
   - Flag analysis paralysis and over-engineering in clear problems.

4. **T: Test**
   - Design the smallest useful experiment unless the system is Chaotic.
   - For Chaotic systems, stabilize first, then reclassify.
   - Define success metric, failure signal, timebox, and rollback or stop rule.

## Classification rubric

| System | Cause and effect | Evidence state | Best action | Wrong move |
|---|---|---|---|---|
| Clear | Obvious, direct, repeatable | Known facts, known procedure | Sense, categorize, respond with checklist | Over-analyze or over-engineer |
| Complicated | Knowable through expertise or analysis | Data exists or can be gathered | Analyze, compare options, consult expertise | Guessing or treating expert disagreement as chaos |
| Complex | Non-linear, emergent, many interactions | Patterns appear only after probing | Probe, measure, learn, adapt | Promising deterministic outcomes |
| Chaotic | Cause-effect is collapsed or irrelevant under time pressure | Immediate harm or instability | Act to stabilize, contain damage, then reassess | Asking exploratory questions before stabilization |

## Response mode router

After classification, load and follow exactly one template:

- `response-templates/clear.md` for Clear systems.
- `response-templates/complicated.md` for Complicated systems.
- `response-templates/complex.md` for Complex systems.
- `response-templates/chaotic.md` for Chaotic systems.

If classification confidence is below 0.6 and there is no immediate danger, default to Complex and propose a small probe. If there is immediate danger or irreversible damage is unfolding, route to Chaotic.

## External observer protocol

Use external observers when the agent's first-pass classification is weak, incentives are involved, impact is high, or the user is relying on narrative instead of evidence.

- **Mentors:** Ask another agent, domain expert, reviewer, or specialist source when expert judgment changes the decision.
- **Data:** Prefer metrics, logs, benchmarks, financials, experiments, code execution, tests, RAG, or web search over narrative.
- **Time:** Compare against prior state, baseline, trend, release, incident timeline, or historical decisions.

Do not invoke external observers for low-impact Clear tasks.

## Self-deactivation rule

If the problem is trivially Clear, low impact, and reversible, deactivate this skill. Answer directly with the minimum useful response. If the user explicitly asks for DART, keep the skill active but use the Clear template.

## Output contract

Every active DART run must emit a compact diagnostic block before the final response. The block may be hidden or visible depending on host configuration. It must be a concise classification summary, not a private chain-of-thought transcript.

```xml
<dart>
<deconstruct>Sub-problems, assumptions, constraints, stakes.</deconstruct>
<analyze system="clear|complicated|complex|chaotic" confidence="0-1">Cause-effect assessment and why this class fits.</analyze>
<recognize patterns="known-patterns" cobra_risk="low|med|high" delayed_loops="feedback-loop-summary"/>
<test>Smallest experiment, or stabilization action for chaos.</test>
</dart>
```

Then respond using the selected template.

## Extensions

This skill adds a **friction control gate** to the original DART flow: the self-deactivation rule. The extension prevents systems thinking from becoming overhead when the request is Clear, low impact, and reversible. It preserves the core DART method while reducing analysis paralysis and over-engineering.
