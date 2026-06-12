# systems-thinking-dart

Portable systems-thinking skill for AI agents. It classifies user requests as Clear, Complicated, Complex, or Chaotic, then applies the DART loop: Deconstruct, Analyze, Recognize, Test.

## What it does

- Adds a pre-response diagnostic layer for ambiguous or high-impact tasks.
- Selects the correct response mode instead of using one generic reasoning style.
- Detects Cobra Effect incentives, delayed feedback loops, analysis paralysis, and over-engineering.
- Works as an Anthropic-style skill and as a portable prompt/rule package for other agents.

## File map

- `SKILL.md`: master instructions and output contract.
- `activation-criteria.md`: fast activation scoring.
- `response-templates/`: final-answer templates by system type.
- `adapters/`: model and agent-specific adjustments.
- `examples/`: four end-to-end examples in Spanish.
- `tests/eval-cases.jsonl`: evaluation cases for activation and classification.

## Using with different agents

### Anthropic Skills or Codex-style skills

Place the folder where the agent discovers skills, preserving this structure:

```text
systems-thinking-dart/SKILL.md
```

The agent should read `SKILL.md` when the activation criteria match.

### Cursor Rules

Copy the content of `SKILL.md` into a project rule. Link or paste the relevant adapter from `adapters/` depending on the model. Keep the templates as referenced files when the IDE supports file context.

### Continue

Add `SKILL.md` as a slash command or context provider. Use `activation-criteria.md` as the routing rule and include one adapter in the model profile.

### Aider

Use `SKILL.md` as a read-only context file. Add the relevant adapter as an extra read file. For small models, use `adapters/local-small.md`.

### OpenAI Custom GPTs

Paste `SKILL.md` into Instructions. Upload `activation-criteria.md`, `response-templates/`, `adapters/`, `examples/`, and `tests/` as knowledge files. For GPT-5 or GPT-4o, include `adapters/gpt.md`.

### Generic CLI agents

Add this folder to the agent's shared context directory. In the agent's global instructions, write:

```text
When a task is ambiguous, costly, irreversible, multi-causal, time-pressured, or stakeholder-heavy, load systems-thinking-dart/SKILL.md and follow its router.
```

## Versioning

This package is idempotent: regenerating files with the same paths should not break references.
