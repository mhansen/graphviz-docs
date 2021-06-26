---
defaults:
- default: '0.5'
  for: (dot)
- default: '1.0'
  for: (twopi)
flags:
- dot
- twopi
minimums:
- '0.02'
title: ranksep
types:
- double
- doubleList
used_by: G
---
In `dot`, sets the desired rank separation, in inches.

This is the minimum vertical distance between the bottom of the nodes in one
rank and the tops of nodes in the next. If the value contains `equally`, the
centers of all ranks are spaced equally apart. Note that both
settings are possible, e.g., `ranksep="1.2 equally"`.

In `twopi`, this attribute specifies the radial separation of concentric circles.
For `twopi`, `ranksep` can also be a list of doubles. The first double specifies
the radius of the inner circle; the second double specifies the increase in
radius from the first circle to the second; etc. If there are more circles than
numbers, the last number is used as the increment for the remainder.
