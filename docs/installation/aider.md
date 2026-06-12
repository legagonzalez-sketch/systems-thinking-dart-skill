# Aider installation

Use this guide when Aider should reason with DART during planning, debugging, architecture, or repo decisions.

## One-off usage

```bash
git clone https://github.com/LeonardoGonzalez/systems-thinking-dart-skill.git
aider \
  --read systems-thinking-dart-skill/systems-thinking-dart/SKILL.md \
  --read systems-thinking-dart-skill/systems-thinking-dart/activation-criteria.md \
  --read systems-thinking-dart-skill/systems-thinking-dart/adapters/gpt.md
```

## Persistent usage

Add the skill files to your Aider read-only context strategy. Keep the selected adapter aligned with the model you run.

## Test prompt

```text
Before editing, use systems-thinking-dart to classify whether this bug is Clear, Complicated, Complex, or Chaotic.
```

For straightforward code edits, the skill should skip or use Clear mode.
