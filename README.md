# cobalt-ui-table-line

`cobalt-ui-table-line` is a Lua project for Frontend apps. It turns develop a Lua command-oriented project for table scenarios with transition tables, invalid-transition tests, and offline replay mode into a small local model with readable fixtures and a direct verification command.

## Reading Cobalt UI Table Line

Start with the README, then open `metadata/project.json` to check the constants behind the examples. After that, `fixtures/cases.csv` shows the compact path and `examples/extended_cases.csv` gives a wider look at the same rule.

## Purpose

This is not a wrapper around a service. It is a self-contained project that shows how the model behaves when demand, capacity, latency, risk, and weight move in different directions.

## Fixture Notes

The extended cases are not random smoke tests. `degraded` keeps pressure on the review path, while `surge` shows the model when capacity and weight are strong enough to clear the threshold.

## Design Sketch

The interesting part is the boundary between accepted and reviewed scenarios. Extended examples sit near that boundary so future edits can show whether the model became more permissive or more cautious. The Lua project keeps the module shape simple and validates behavior through a direct script.

## What It Does

- Models view models with deterministic scoring and explicit review decisions.
- Uses fixture data to keep interaction state changes visible in code review.
- Includes extended examples for layout checks, including `surge` and `degraded`.
- Documents fixture data tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Verification

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Files Worth Reading

- `src`: primary implementation
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Next Directions

- Add a short report command that prints the score breakdown for a single scenario.
- Add malformed input fixtures so the failure path is as visible as the happy path.
- Split the scoring constants into a typed configuration object and validate it before use.
- Add one more frontend apps fixture that focuses on a malformed or borderline input.

## Limits

The repository favors determinism over breadth. It does not pull live data, keep secrets, or depend on network access for verification.

## Setup

Install Lua and run the commands from the repository root. The project does not need credentials or a hosted service.
