# Generic CLI installation

Use this guide for Codex-like CLIs, OpenCode, local agents, wrappers, and custom orchestration.

## Steps

1. Clone the repo.

   ```bash
   git clone https://github.com/LeonardoGonzalez/systems-thinking-dart-skill.git
   ```

2. Add this to the agent's global or project instructions:

   ```text
   When a request has ambiguity, multiple plausible causes, non-trivial trade-offs, irreversible decisions, time pressure, multiple stakeholders, or suspected feedback loops, load systems-thinking-dart/SKILL.md and run DART before answering.
   ```

3. Pick the closest adapter:

   - `claude.md` for Claude.
   - `gpt.md` for GPT and OpenAI-compatible models.
   - `deepseek.md` for DeepSeek V3/V4.
   - `gemini.md` for Gemini.
   - `local-small.md` for models under 8B.
   - `reasoning-models.md` for native reasoning models.

4. Make the response templates available to the agent.

## Test prompt

```text
Use systems-thinking-dart: production writes are failing right now and customers cannot place orders.
```

Expected classification: Chaotic.
