# Cobalt UI Table Line Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | view drift | 109 | watch |
| stress | state pressure | 174 | ship |
| edge | layout risk | 149 | ship |
| recovery | interaction cost | 181 | ship |
| stale | view drift | 166 | ship |

Start with `recovery` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around state pressure and interaction cost.
