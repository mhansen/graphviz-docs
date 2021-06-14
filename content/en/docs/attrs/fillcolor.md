---
defaults:
- lightgrey(nodes)
- black(clusters)
flags: []
minimums: []
title: fillcolor
types:
- color
- colorList
used_by: NEC
---
Color used to fill the background of a node or cluster
assuming <code>[style]({{< ref "style.md" >}})=filled</code>, or a filled [`arrowhead`]({{< ref "arrowhead.md" >}}).

If `fillcolor` is not defined, [`color`]({{< ref "color.md" >}}) is
used. (For clusters, if `color` is not defined,
[`bgcolor`]({{< ref "bgcolor.md" >}}) is used.) If this is not defined,
the default is used, except for
<code>[shape]({{< ref "shape.md" >}})=point</code> or when the output
format is `MIF`,
which use black by default.

If the value is a [`colorList`](/docs/attr-types/colorList/), a gradient fill is
used. By default, this is a linear fill; setting <code>[style]({{< ref "style.md" >}})=radial</code> will
cause a radial fill. At present, only two colors are used. If the second
color (after a colon) is missing, the default color is used for it.

See also the [`gradientangle`]({{< ref "gradientangle.md" >}}) attribute
for setting the gradient angle. 

Note that a cluster inherits the root graph's attributes if defined.
Thus, if the root graph has defined a `fillcolor`, this will override a
[`color`]({{< ref "color.md" >}}) or [`bgcolor`]({{< ref "bgcolor.md" >}}) attribute set for the cluster.
