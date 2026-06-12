# Getting started

`systems-thinking-dart` is a portable skill that helps an agent decide how to reason before it answers. It combines DART with an adapted Cynefin model.

Cynefin is a decision framework for matching action to context. In this skill, requests are classified as Clear, Complicated, Complex, or Chaotic.

## Install in 5 minutes

1. Clone the repo.

   ```bash
   git clone https://github.com/LeonardoGonzalez/systems-thinking-dart-skill.git
   cd systems-thinking-dart-skill
   ```

2. Pick the install guide for your agent:

   - [Claude Projects](installation/claude-projects.md)
   - [Cursor](installation/cursor.md)
   - [Continue](installation/continue.md)
   - [Aider](installation/aider.md)
   - [OpenAI Custom GPT](installation/openai-custom-gpt.md)
   - [Generic CLI](installation/generic-cli.md)

3. Use a prompt with ambiguity or trade-offs:

   ```text
   Use systems-thinking-dart to classify this decision and recommend the right response mode:
   [your task]
   ```

## What should happen

For active cases, the agent emits a compact `<dart>` block and then routes to one response template:

- Clear: checklist and direct execution.
- Complicated: options, assumptions, trade-offs, recommendation.
- Complex: minimum viable experiment, metrics, stop rule.
- Chaotic: immediate stabilization, containment, reclassification.

For trivial tasks, the skill should self-deactivate.
