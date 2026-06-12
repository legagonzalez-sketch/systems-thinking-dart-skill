# Claude Adapter

Target models: Claude Sonnet, Opus, Haiku, and Claude models with extended thinking.

## Reasoning depth

- For Sonnet/Opus with thinking enabled, let the model use native thinking privately and emit only a compact `<dart>` diagnostic.
- For Haiku or latency-sensitive runs, use the activation score and skip full DART unless score is 3 or higher.
- Keep final answers structured and concise; Claude tends to handle nuanced trade-offs well without heavy scaffolding.

## `<dart>` verbosity

- Use XML exactly as defined in `SKILL.md`.
- Keep each field to 1-3 sentences.
- Do not expose full chain-of-thought; provide classification rationale only.

## Tools for Mentors/Data/Time

- Mentors: ask a second Claude pass, code reviewer, domain expert, or critique agent.
- Data: use web search, RAG, logs, tests, analytics, or uploaded documents.
- Time: compare current facts with prior messages, changelogs, incident timeline, metrics history, or version history.

## Context handling

- With long context, summarize Deconstruct into facts, assumptions, constraints, and unknowns.
- Keep templates external; load only the selected response template.

## Preferred output

XML diagnostic plus Markdown final answer.

## Sampling suggestions

- Deconstruct: temperature 0.2-0.4.
- Analyze: temperature 0.1-0.3.
- Recognize: temperature 0.2-0.5.
- Test: temperature 0.1-0.3.
