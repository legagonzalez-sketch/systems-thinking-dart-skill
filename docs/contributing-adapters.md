# Contributing adapters

Adapters make the skill agent-aware without contaminating the core. Add model-specific guidance here instead of changing `SKILL.md`.

Cynefin gives the skill its classification vocabulary. DART gives it the operational loop. An adapter tells a specific model how much scaffolding it needs to perform that loop reliably.

## Step 1: Copy the template

```bash
cp adapters/_template.md systems-thinking-dart/adapters/model-name.md
```

Use lowercase letters and hyphens. Examples:

- `llama-4-405b.md`
- `mistral-large-3.md`
- `qwen3-coder.md`

## Step 2: Complete the 7 required sections

Every adapter must include:

1. **Reasoning depth**
   - How explicit should DART be?
   - Should the model reason privately or visibly?
   - Should complex cases be split across turns?

2. **Output format**
   - XML, JSON, Markdown, or host-specific structured output.
   - How verbose should the `<dart>` block be?

3. **Tool use**
   - Recommended tools for Mentors, Data, and Time.
   - Whether the model handles tool selection reliably.

4. **Context handling**
   - How much history should be preserved?
   - How should DART summaries be compressed?

5. **Sampling**
   - Temperature or sampling recommendations by DART phase.

6. **Known failure modes**
   - Common misclassifications.
   - Overthinking or underthinking tendencies.
   - Output contract failures.

7. **Eval results**
   - Classification accuracy.
   - Output contract adherence.
   - Trap-case self-deactivation.
   - Provider, model name, date, and eval suite version.

## Step 3: Run the eval suite

Local metadata check:

```bash
make eval
```

Provider-backed eval runs in GitHub Actions on PRs when repo secrets are configured:

- `MODEL_PROVIDER`
- `MODEL_NAME`
- `API_KEY`
- `MODEL_BASE_URL` when using an OpenAI-compatible provider

## Step 4: Report results in the PR

Use `.github/PULL_REQUEST_TEMPLATE.md` and include:

- Model and provider.
- Context window.
- Native thinking support.
- Tool-use support.
- Accuracy.
- Output-contract adherence.
- Trap-case result.
- Known weak cases.

## Step 5: Set status

Use one of these statuses in docs or README updates:

- ✅ tested: evals run and pass.
- 🧪 experimental: adapter written, limited evals or manual tests.
- ❓ untested: requested or proposed but not validated.

## Acceptance threshold

An adapter can merge with 1 maintainer approval if it:

- Keeps the core DART contract intact.
- Does not edit unrelated adapters.
- Includes known failure modes.
- Includes eval results or clearly marks itself experimental.
