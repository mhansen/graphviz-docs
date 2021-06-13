---
defaults:
- lightgrey(nodes)
- black(clusters)
flags: []
minimums: []
name: fillcolor
types:
- color
- colorList
used_by: NEC
---
Color used to fill the background of a node or cluster
assuming [`style`](#d:style)`=filled`, or a filled [`arrowhead`](#d:arrowhead).

If `fillcolor` is not defined, [`color`](#d:color) is
used. (For clusters, if `color` is not defined,
[`bgcolor`](#d:bgcolor) is used.) If this is not defined,
the default is used, except for
[`shape`](#d:shape)`=point` or when the output
format is `MIF`,
which use black by default.

If the value is a [`colorList`](/docs/attr-types/colorList/), a gradient fill is
used. By default, this is a linear fill; setting [`style`](#d:style)`=radial` will
cause a radial fill. At present, only two colors are used. If the second
color (after a colon) is missing, the default color is used for it.

See also the [`gradientangle`](#d:gradientangle) attribute
for setting the gradient angle. 

Note that a cluster inherits the root graph's attributes if defined.
Thus, if the root graph has defined a `fillcolor`, this will override a
[`color`](#d:color) or [`bgcolor`](#d:bgcolor) attribute set for the cluster.
