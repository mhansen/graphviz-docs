---
defaults:
- <none>
flags:
- map
- svg
minimums: []
title: edgetarget
types:
- escString
used_by: E
description: Browser window to use for the [`edgeURL`](/docs/attrs/edgeURL/) link
---
If the edge has a [`URL`]({{< ref "URL.md" >}}) or [`edgeURL`]({{< ref "edgeURL.md" >}})
attribute, `edgetarget` determines which window of the
browser is used
for the URL attached to the non-label part of the edge.

Setting `edgetarget=_graphviz` will open a new window if it
doesn't already exist, or reuse it if it does.

If undefined, the value of the [`target`]({{< ref "target.md" >}}) is used instead.
