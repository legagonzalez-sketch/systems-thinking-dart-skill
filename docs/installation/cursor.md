# Cursor installation

Use this guide to install the skill as a Cursor project rule.

## Steps

1. Clone the repo inside or near your project.

   ```bash
   git clone https://github.com/LeonardoGonzalez/systems-thinking-dart-skill.git
   ```

2. Create a Cursor rule.

   ```bash
   mkdir -p .cursor/rules
   cp systems-thinking-dart-skill/systems-thinking-dart/SKILL.md .cursor/rules/systems-thinking-dart.mdc
   ```

3. Append the adapter for your model to the rule. For GPT-compatible models:

   ```bash
   cat systems-thinking-dart-skill/systems-thinking-dart/adapters/gpt.md >> .cursor/rules/systems-thinking-dart.mdc
   ```

4. Keep `response-templates/` and `activation-criteria.md` available as project context.

## Test prompt

```text
Use systems-thinking-dart before answering: should we split this monolith into microservices?
```

Expected classification: Complicated unless strong behavioral uncertainty dominates.
