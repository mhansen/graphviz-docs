---
defaults:
- '""'
flags:
- dot
minimums: []
title: ltail
types:
- string
used_by: E
---
Logical tail of an edge.

When <code>[compound]({{< ref "compound.md" >}})=true</code>, if `ltail` is defined and is the name
of a cluster containing the real tail, the edge is clipped to the boundary of
the cluster.

See [limitation]({{< ref "_index.md#undir_note" >}}).
