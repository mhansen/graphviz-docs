---
defaults:
- '0'
flags: []
minimums:
- '0'
title: sortv
types:
- int
used_by: GCN
description: Sort order of graph components for ordering [`packmode`](/docs/attrs/packmode/) packing.
---
If [`packmode`]({{< ref "packmode.md" >}}) indicates an array packing, `sortv` specifies an
insertion order among the components, with smaller values inserted first.
