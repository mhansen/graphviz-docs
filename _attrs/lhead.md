---
defaults:
- '""'
flags:
- dot
minimums: []
name: lhead
types:
- string
used_by: E
---
Logical head of an edge.

When [`compound`](#d:compound) is true, if `lhead` is defined and is the name
of a cluster containing the real head, the edge is clipped to the boundary of
the cluster.

See [limitation](#h:undir_note).
