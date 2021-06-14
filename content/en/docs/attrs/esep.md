---
defaults:
- '+3'
flags:
- notdot
minimums: []
title: esep
types:
- addDouble
- addPoint
used_by: G
---
Margin used around polygons for purposes of spline edge routing.

The interpretation is the same as given for [`sep`]({{< ref "sep.md" >}}). `esep` should
normally be strictly less than [`sep`]({{< ref "sep.md" >}}).
