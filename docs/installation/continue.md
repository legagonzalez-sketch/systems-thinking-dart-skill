# Continue installation

Use this guide for Continue in VS Code or JetBrains.

## Steps

1. Clone the repo.

   ```bash
   git clone https://github.com/LeonardoGonzalez/systems-thinking-dart-skill.git
   ```

2. Add these files as reusable context in your Continue config:

   - `systems-thinking-dart/SKILL.md`
   - `systems-thinking-dart/activation-criteria.md`
   - `systems-thinking-dart/response-templates/`
   - One adapter from `systems-thinking-dart/adapters/`

3. Add a custom slash command or prompt:

   ```text
   Use systems-thinking-dart. Classify the request, emit the DART block, and route to the correct response template.
   ```

## Model selection

- GPT-compatible hosted model: use `adapters/gpt.md`.
- Claude: use `adapters/claude.md`.
- Local model under 8B: use `adapters/local-small.md`.
