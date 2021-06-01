---
defaults:
- '0.0'
flags:
- neato
minimums: []
name: levelsgap
types:
- double
used_by: G
---
Specifies strictness of level constraints in neato when
[`mode`](#d:mode)`="ipsep"` or `mode=hier`.

Larger positive values mean stricter constraints, which demand more
separation between levels. On the other hand, negative values will relax the
constraints by allowing some overlap between the levels.
