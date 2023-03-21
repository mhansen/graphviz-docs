---
defaults:
- '""'
flags:
- dot
minimums: []
title: sametail
types:
- string
used_by: E
description: Edges with the same tail and the same `sametail` value are aimed at th
---
same point on the tail.

This has no effect on loops.

Prior to Graphviz 8.0.1, each node can have at most 5 unique `sametail` values.

See [limitation]({{< ref "_index.md#undir_note" >}}).

See also [`samehead`]({{< ref "samehead.md" >}}).
