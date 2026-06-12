.PHONY: lint eval

lint:
	markdownlint .
	yamllint .

eval:
	python -c 'import json, pathlib; p=pathlib.Path("systems-thinking-dart/tests/eval-cases.jsonl"); rows=[json.loads(line) for line in p.read_text().splitlines() if line.strip()]; assert 12 <= len(rows) <= 20; assert sum(not r["expected_skill_active"] for r in rows) >= 3; assert any("Cobra" in r["rationale"] or "Cobra" in r["input"] for r in rows); assert any("delayed" in r["rationale"].lower() for r in rows); assert any(r["expected_system"] == "chaotic" for r in rows); print(f"eval metadata ok: {len(rows)} cases")'
