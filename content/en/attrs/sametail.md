---
defaults:
- '""'
flags:
- dot
minimums: []
name: sametail
types:
- string
used_by: E
---
Edges with the same tail and the same `sametail` value are aimed at the
same point on the tail.

This has no effect on loops.

Each node can have at most 5 unique `sametail` values.

See [limitation](#h:undir_note).

See also [`samehead`](#d:samehead).
