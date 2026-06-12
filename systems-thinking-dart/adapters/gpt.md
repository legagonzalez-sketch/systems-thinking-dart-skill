# GPT Adapter

Target models: GPT-4o, GPT-5, and GPT-compatible CLI agents.

## Reasoning depth

- Use explicit DART state when the host supports structured outputs.
- For GPT-5, prefer function calling or JSON schema to enforce classification, confidence, cobra risk, delayed loops, and selected template.
- For GPT-4o, keep a compact visible diagnostic and rely on the template to prevent rambling.

## `<dart>` verbosity

- Internally, JSON is preferred for validation.
- Externally, convert to the XML contract from `SKILL.md`.
- Keep confidence numeric and calibrated; use 0.6 as the threshold for uncertain classification.

## Tools for Mentors/Data/Time

- Mentors: spawn review agents, use code review tools, or ask a domain model.
- Data: web search for current facts, code execution for reproducible claims, tests for software, database queries for metrics, RAG for internal docs.
- Time: git history, logs, observability dashboards, previous snapshots, financial trend data.

## Context handling

- Compress DART as:
  - `facts`
  - `assumptions`
  - `classification`
  - `risk_patterns`
  - `next_test`
- For large contexts, do not reread all evidence after classification; carry forward the compressed DART object.

## Preferred output

JSON internally, XML contract externally, Markdown final answer.

## Sampling suggestions

- Deconstruct: temperature 0.2.
- Analyze: temperature 0.1.
- Recognize: temperature 0.3.
- Test: temperature 0.2.
- Final answer: temperature 0.2-0.5 depending on user tone.
