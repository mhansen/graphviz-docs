---
defaults:
- '""'
flags:
- dot
minimums: []
name: ltail
types:
- string
used_by: E
---
Logical tail of an edge.

When [`compound`](#d:compound)`=true`, if `ltail` is defined and is the name
of a cluster containing the real tail, the edge is clipped to the boundary of
the cluster.

See [limitation](#h:undir_note).
