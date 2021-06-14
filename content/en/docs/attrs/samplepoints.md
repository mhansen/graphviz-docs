---
defaults:
- 8(output)
- 20(overlap and image maps)
flags: []
minimums: []
name: samplepoints
types:
- int
used_by: "N"
---
Gives the number of points used for a circle/ellipse node.

Used if the input graph defines the [`vertices`](#d:vertices) attribute, and
output is `dot` or `xdot`.

It plays the same role in `neato`, when adjusting the layout to avoid
overlapping nodes, and in image maps.
