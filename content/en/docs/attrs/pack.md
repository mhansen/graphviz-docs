---
defaults:
- 'false'
flags: []
minimums: []
title: pack
types:
- bool
- int
used_by: G
---

Whether each connected component of the graph should be
laid out separately, and then the graphs packed together.

If `pack` has an integral value, this is used as the size,
in [points]({{< ref "_index.md#points" >}}),of a margin around each part; otherwise, a default
margin of `8` is used.

If pack is interpreted as `false`, the entire graph is laid out together.
The granularity and method of packing is influenced by the
[`packmode`]({{< ref "packmode.md" >}}) attribute.

For layouts which always do packing, such as `twopi`, the `pack`
attribute is just used to set the margin.

`pack` is treated as true if the value of pack is `true` (case-insensitive)
or a non-negative integer.
