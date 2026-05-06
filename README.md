# cobalt-ui-table-line

`cobalt-ui-table-line` is a compact Lua repository for frontend apps, centered on this goal: Develop a Lua command-oriented project for table scenarios with transition tables, invalid-transition tests, and offline replay mode.

## Reason For The Project

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Cobalt UI Table Line Review Notes

Start with `interaction cost` and `view drift`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## What It Does

- `fixtures/domain_review.csv` adds cases for view drift and state pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/cobalt-ui-table-walkthrough.md` walks through the case spread.
- The Lua code includes a review path for `interaction cost` and `view drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## How It Is Put Together

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The added Lua path is deliberately direct, with fixtures doing most of the explaining.

## Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Check It

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Boundaries

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
