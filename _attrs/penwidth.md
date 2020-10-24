---
defaults:
- '1.0'
flags: []
minimums:
- '0.0'
name: penwidth
types:
- double
used_by: CNE
---
Specifies the width of the pen, in points, used to draw lines and curves,
including the boundaries of edges and clusters.

`penwidth` value is inherited by subclusters, and has no effect on text.

Previous to 31 January 2008, the effect of `penwidth=W` was achieved by
including `setlinewidth(W)` as part of a [`style`](#d:style) specification.

If both attributes are set, `penwidth` will be used.
