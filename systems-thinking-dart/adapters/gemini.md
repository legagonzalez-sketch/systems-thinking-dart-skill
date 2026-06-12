# Gemini Adapter

Target models: Gemini 2.x and Gemini-compatible agents.

## Reasoning depth

- Use Gemini's long-context strength for Deconstruct and Time comparisons.
- Keep classification decisive; Gemini may over-include context, so force a short DART summary before the final answer.
- For multimodal inputs, include visual or document evidence under Data when it changes classification.

## `<dart>` verbosity

- Use 1-2 sentences per DART tag.
- Avoid dumping long source summaries into `<deconstruct>`.
- Put detailed evidence in the final answer only if the selected template needs it.

## Tools for Mentors/Data/Time

- Mentors: use a separate critique pass or specialist model for high-impact decisions.
- Data: retrieved docs, spreadsheets, screenshots, code execution, search, analytics exports.
- Time: compare versions, document revisions, dashboards, release notes, and conversation history.

## Context handling

- Use long context to identify contradictions, repeated symptoms, and historical shifts.
- Before answering, compress the relevant history into a baseline-current-delta summary.

## Preferred output

XML diagnostic plus Markdown final answer.

## Sampling suggestions

- Deconstruct: temperature 0.2-0.4.
- Analyze: temperature 0.1-0.3.
- Recognize: temperature 0.2-0.4.
- Test: temperature 0.1-0.3.
