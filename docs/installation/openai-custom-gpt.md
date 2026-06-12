# OpenAI Custom GPT installation

Use this guide for GPT-4o, GPT-5, or GPT-compatible custom assistants.

## Steps

1. Clone the repo.

   ```bash
   git clone https://github.com/LeonardoGonzalez/systems-thinking-dart-skill.git
   ```

2. Paste `systems-thinking-dart/SKILL.md` into the Custom GPT Instructions.

3. Upload these files as knowledge:

   - `systems-thinking-dart/activation-criteria.md`
   - `systems-thinking-dart/response-templates/`
   - `systems-thinking-dart/adapters/gpt.md`
   - `systems-thinking-dart/examples/`

4. Add this instruction:

   ```text
   Use the GPT adapter. For active DART cases, return the XML diagnostic block before the final answer. For trivial clear tasks, self-deactivate.
   ```

## Optional structured output

If your host supports structured output or function calling, enforce:

- `skill_active`
- `system`
- `confidence`
- `cobra_risk`
- `delayed_loops`
- `selected_template`
