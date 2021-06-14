---
defaults:
- 'false'
flags: []
minimums: []
title: fixedsize
types:
- bool
- string
used_by: "N"
---
If `false`, the size of a node is determined by smallest width and height
needed to contain its label and image, if any, with a margin specified by
the [`margin`]({{< ref "margin.md" >}}) attribute.

The width and height must also be at least as large as the sizes specified by
the [`width`]({{< ref "width.md" >}}) and [`height`]({{< ref "height.md" >}}) attributes, which specify
the minimum values for these parameters.

If true, the node size is specified by the values of the [`width`]({{< ref "width.md" >}})
and [`height`]({{< ref "height.md" >}}) attributes only and is not expanded to contain the
text label. There will be a warning if the label (with margin) cannot fit
within these limits.

If the [`fixedsize`]({{< ref "fixedsize.md" >}}) attribute is set to shape, the
[`width`]({{< ref "width.md" >}}) and [`height`]({{< ref "height.md" >}}) attributes also determine the size
of the node shape, but the label can be much larger. Both the label and shape
sizes are used when avoiding node overlap, but all edges to the node ignore
the label and only contact the node shape. No warning is given if the label
is too large.
