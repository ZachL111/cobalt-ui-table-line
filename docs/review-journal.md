# Review Journal

The repository goal stays the same: develop a Lua command-oriented project for table scenarios with transition tables, invalid-transition tests, and offline replay mode. This note explains the added review angle.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its frontend apps focus without claiming live deployment or external usage.

## Cases

- `baseline`: `view drift`, score 109, lane `watch`
- `stress`: `state pressure`, score 174, lane `ship`
- `edge`: `layout risk`, score 149, lane `ship`
- `recovery`: `interaction cost`, score 181, lane `ship`
- `stale`: `view drift`, score 166, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
