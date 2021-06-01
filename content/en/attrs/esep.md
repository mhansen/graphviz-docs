---
defaults:
- '+3'
flags:
- notdot
minimums: []
name: esep
types:
- addDouble
- addPoint
used_by: G
---
Margin used around polygons for purposes of spline edge routing.

The interpretation is the same as given for [`sep`](#d:sep). `esep` should
normally be strictly less than [`sep`](#d:sep).
