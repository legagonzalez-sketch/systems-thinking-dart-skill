# Contributing

Thanks for improving `systems-thinking-dart-skill`. This repo accepts two main kinds of changes: core skill changes and adapter changes.

## Clone

```bash
git clone https://github.com/LeonardoGonzalez/systems-thinking-dart-skill.git
cd systems-thinking-dart-skill
```

## Install lint dependencies

```bash
npm install -g markdownlint-cli
python -m pip install yamllint
```

## Run checks

```bash
markdownlint .
yamllint .
make eval
```

`make eval` validates `systems-thinking-dart/tests/eval-cases.jsonl` locally. Provider-backed evals run in GitHub Actions when secrets are configured.

## PR policy

- One PR equals one logical change.
- Keep skill core changes small and heavily justified.
- Include examples or eval cases for behavior changes.
- Do not mix docs cleanup with classification logic changes.

## Core skill changes

Core changes include edits to:

- `systems-thinking-dart/SKILL.md`
- `systems-thinking-dart/activation-criteria.md`
- `systems-thinking-dart/response-templates/`
- `systems-thinking-dart/tests/eval-cases.jsonl`

Requirements:

- 2 maintainer approvals.
- Eval suite passing.
- Explanation of backward compatibility.
- Changelog entry.

## Adapter changes

Adapter changes include edits to:

- `systems-thinking-dart/adapters/`
- `adapters/_template.md`
- `docs/contributing-adapters.md`

Requirements:

- 1 maintainer approval.
- Eval results for the target model when possible.
- Clear status label: tested, experimental, or untested.

## Commit conventions

Use Conventional Commits:

- `feat: add mistral large adapter`
- `fix: tighten chaotic response template`
- `docs: clarify cursor install`
- `test: add cobra effect eval case`
- `chore: update lint workflow`

## Review checklist

- The change preserves the DART core.
- The activation criteria remain fast to apply.
- The output contract remains valid.
- Internal links still work.
- New model-specific advice belongs in an adapter, not in the core.
