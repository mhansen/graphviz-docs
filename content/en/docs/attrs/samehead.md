---
defaults:
- '""'
flags:
- dot
minimums: []
title: samehead
types:
- string
used_by: E
---
Edges with the same head and the same `samehead` value are aimed at the same point on the head.

This has no effect on loops.

Each node can have at most 5 unique samehead values.

See [limitation]({{< ref "_index.md#undir_note" >}}).

See also [`sametail`]({{< ref "sametail.md" >}}).
