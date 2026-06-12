# Local Small Model Adapter

Target models: local models under 8B parameters, small Llama, Qwen, Phi, Mistral variants, and low-context agents.

## Reasoning depth

- Use rigid templates. Do not allow freeform reasoning.
- Always run the activation score first.
- If active, fill the DART fields in order.
- If classification confidence is below 0.6 and there is no danger, choose Complex and propose a small test.
- If danger or active damage exists, choose Chaotic.

## `<dart>` verbosity

Use this exact compact pattern:

```xml
<dart>
<deconstruct>facts=[...]; assumptions=[...]; constraints=[...]</deconstruct>
<analyze system="..." confidence="...">cause_effect=...</analyze>
<recognize patterns="..." cobra_risk="..." delayed_loops="..."/>
<test>next_action=...; metric=...; stop_rule=...</test>
</dart>
```

## Tools for Mentors/Data/Time

- Mentors: ask a stronger model or human reviewer when stakes are high.
- Data: run commands, tests, search local files, query logs, retrieve docs.
- Time: compare two snapshots only; avoid broad historical synthesis.

## Context handling

- Keep at most 5 facts.
- Keep at most 3 assumptions.
- Keep at most 3 constraints.
- Use the selected response template exactly.

## Preferred output

XML diagnostic plus Markdown final answer. Avoid JSON unless the host requires it.

## Sampling suggestions

- Use temperature 0.0-0.2 for all DART phases.
- Use temperature 0.2-0.4 for final wording only if needed.

## Few-shot classification anchor

- Obvious procedure, low risk: Clear.
- Expert comparison, data available: Complicated.
- Human behavior, adoption, incentives, emergent effects: Complex.
- Active outage, safety issue, financial leak, security incident: Chaotic.
