# Security Policy

## Supported versions

Security reports are accepted for the current major version.

| Version | Supported |
| --- | --- |
| 1.x | Yes |

## Reporting a vulnerability

Report vulnerabilities by email to security@leonardogonzalez.dev.

Please include:

- A clear description of the issue.
- Steps to reproduce.
- Affected files or workflows.
- Potential impact.
- Suggested mitigation, if known.

## Disclosure timeline

We aim to acknowledge reports within 7 days.

We use a 90-day coordinated disclosure window by default. If active exploitation or severe user risk is present, we may accelerate disclosure after a fix or mitigation is available.

## Scope

Relevant reports include:

- Prompt-injection risks introduced by the skill instructions.
- Workflow secret exposure.
- Eval workflow behavior that leaks prompts, model outputs, or API keys.
- Installation instructions that encourage unsafe secret handling.

Out of scope:

- General model hallucination unrelated to this repo.
- Provider outages.
- Vulnerabilities in third-party tools unless this repo uses them unsafely.
