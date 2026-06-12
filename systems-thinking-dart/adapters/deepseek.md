# DeepSeek Adapter

Target models: DeepSeek V3, V4, and R1-compatible deployments.

## Reasoning depth

- For V3/V4 chat models, maximize explicit scaffolding: run DART as four short phases when the score is 4-5.
- For complex tasks, separate turns if possible:
  1. Deconstruct.
  2. Analyze and classify.
  3. Recognize patterns.
  4. Test and answer.
- For R1-style reasoning, use `adapters/reasoning-models.md`.

## `<dart>` verbosity

- Use a more structured block than larger frontier models.
- Each DART field should include bullet-like clauses, not freeform prose.
- Keep system classification literal: `clear`, `complicated`, `complex`, or `chaotic`.

## Tools for Mentors/Data/Time

- Mentors: use another model or evaluator when classification confidence is below 0.7.
- Data: prefer executable checks, retrieved documents, logs, search results, and numeric metrics.
- Time: use explicit before/after comparison tables when possible.

## Context handling

- Summarize after each DART phase.
- If the context window is pressured, preserve only:
  - key facts
  - chosen class
  - confidence
  - cobra risk
  - delayed loop warning
  - next action

## Preferred output

JSON-like internal notes are acceptable, but final visible diagnostic must follow the XML contract.

## Sampling suggestions

- Deconstruct: temperature 0.1-0.2.
- Analyze: temperature 0.0-0.2.
- Recognize: temperature 0.2-0.4.
- Test: temperature 0.1-0.2.
