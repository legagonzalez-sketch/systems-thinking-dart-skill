# Claude Projects installation

Use this guide for Claude Sonnet, Opus, Haiku, or Claude models with thinking.

## Steps

1. Clone the repo.

   ```bash
   git clone https://github.com/LeonardoGonzalez/systems-thinking-dart-skill.git
   ```

2. Create or open a Claude Project.

3. Add these files to project knowledge:

   - `systems-thinking-dart/SKILL.md`
   - `systems-thinking-dart/activation-criteria.md`
   - `systems-thinking-dart/response-templates/`
   - `systems-thinking-dart/adapters/claude.md`

4. Add this project instruction:

   ```text
   When the user request has ambiguity, multiple plausible causes, non-trivial trade-offs, irreversible decisions, or time pressure, use systems-thinking-dart/SKILL.md and the Claude adapter.
   ```

## Test prompt

```text
Our sales referral incentive doubled leads but closed deals dropped. Classify the system and recommend the response mode.
```

Expected classification: Complex.
