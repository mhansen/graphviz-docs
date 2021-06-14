---
defaults:
- '""'
flags:
- dot
minimums: []
title: lhead
types:
- string
used_by: E
---
Logical head of an edge.

When [`compound`]({{< ref "compound.md" >}}) is true, if `lhead` is defined and is the name
of a cluster containing the real head, the edge is clipped to the boundary of
the cluster.

See [limitation]({{< ref "_index.md#undir_note" >}}).
