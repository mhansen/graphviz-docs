---
defaults:
- shape default(nodes)
- 1(clusters)
flags: []
minimums:
- '0'
name: peripheries
types:
- int
used_by: NC
---
Set number of peripheries used in polygonal shapes and cluster boundaries.

Note that [user-defined shapes](shapes.html#epsf) are treated as a form of
box shape, so the default peripheries value is 1 and the user-defined shape
will be drawn in a bounding rectangle. Setting `peripheries=0` will turn this
off.

`peripheries=1` is the maximum value for clusters.
