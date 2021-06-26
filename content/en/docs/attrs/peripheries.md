---
defaults:
- default: <shape default>
  for: (nodes)
- default: '1'
  for: (clusters)
flags: []
minimums:
- '0'
title: peripheries
types:
- int
used_by: NC
---
Set number of peripheries used in polygonal shapes and cluster boundaries.

Note that [user-defined shapes]({{< ref "../shapes.md#epsf" >}}) are treated as a form of
box shape, so the default peripheries value is 1 and the user-defined shape
will be drawn in a bounding rectangle. Setting `peripheries=0` will turn this
off.

`peripheries=1` is the maximum value for clusters.
