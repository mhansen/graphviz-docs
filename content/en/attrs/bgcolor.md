---
defaults:
- <none>
flags: []
minimums: []
name: bgcolor
types:
- color
- colorList
used_by: GC
---
When attached to the root graph, this color is used as the background for
entire canvas.

When a cluster attribute, it is used as the initial background
for the cluster. If a cluster has a filled [`style`](#d:style), the cluster's
[`fillcolor`](#d:fillcolor) will overlay the background color.

If the value is a [`colorList`](/docs/attr-types/colorList/), a gradient fill is used. By
default, this is a linear fill; setting [`style`](#d:style)`=radial` will
cause a radial fill. Only two colors are used. If the second color (after a
colon) is missing, the default color is used for it. See also the
[`gradientangle`](#d:gradientangle) attribute for setting the gradient angle.

For certain output formats, such as PostScript, no fill is done for the root
graph unless `bgcolor` is explicitly set.

For bitmap formats, however, the bits need to be initialized to something, so
the canvas is filled with white by default. This means that if the bitmap
output is included in some other document, all of the bits within the
bitmap's bounding box will be set, overwriting whatever color or graphics
were already on the page. If this effect is not desired, and you only want to
set bits explicitly assigned in drawing the graph, set
`bgcolor="transparent"`.
