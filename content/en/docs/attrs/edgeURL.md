---
defaults:
- '""'
flags:
- map
- svg
minimums: []
title: edgeURL
types:
- escString
used_by: E
---
The link for the non-label parts of an edge.

`edgeURL` overrides any [`URL`]({{< ref "URL.md" >}}) defined for the edge.

Also, `edgeURL` is used near the head or tail node unless overridden
by [`headURL`]({{< ref "headURL.md" >}}) or [`tailURL`]({{< ref "tailURL.md" >}}), respectively.

See [limitation]({{< ref "_index.md#undir_note" >}}).
