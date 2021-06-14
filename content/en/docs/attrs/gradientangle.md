---
defaults:
- '""'
flags: []
minimums: []
title: gradientangle
types:
- int
used_by: NCG
---
If a gradient fill is being used, this determines the angle of the fill.

For linear fills, the colors transform along a line specified by the angle
and the center of the object. For radial fills, a value of zero causes the
colors to transform radially from the center; for non-zero values, the colors
transform from a point near the object's periphery as specified by the value.

If unset, the default angle is 0.
