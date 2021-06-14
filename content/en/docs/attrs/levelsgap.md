---
defaults:
- '0.0'
flags:
- neato
minimums: []
title: levelsgap
types:
- double
used_by: G
---
Specifies strictness of level constraints in neato when
<code>[mode]({{< ref "mode.md" >}})="ipsep"</code> or `mode=hier`.

Larger positive values mean stricter constraints, which demand more
separation between levels. On the other hand, negative values will relax the
constraints by allowing some overlap between the levels.
