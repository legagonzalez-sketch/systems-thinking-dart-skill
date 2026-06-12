# Reasoning Models Adapter

Target models: o1-style models, R1-style models, Claude with thinking, and other models with native extended reasoning.

## Reasoning depth

- Let the model reason privately using its native mechanism.
- Do not force a long visible chain.
- Use DART as a validation harness: verify classification, anti-patterns, and next action.
- If the model's answer and DART classification disagree, revise the answer or lower confidence.

## `<dart>` verbosity

- Very compact.
- Include only:
  - classification
  - confidence
  - key pattern risk
  - smallest test or stabilization action
- Do not expose private chain-of-thought.

## Tools for Mentors/Data/Time

- Mentors: use only for high-impact or low-confidence cases; reasoning models are already strong at synthesis.
- Data: browse, execute, test, retrieve, or calculate when facts are unstable or claims are measurable.
- Time: force before/current/after comparison for trend-based claims.

## Context handling

- Keep the DART block as a checksum, not a transcript.
- Use compact summaries between long reasoning phases.

## Preferred output

XML DART diagnostic plus template-driven Markdown.

## Sampling suggestions

- Prefer deterministic settings for classification.
- Allow slightly higher sampling only in final communication style, not in classification.
