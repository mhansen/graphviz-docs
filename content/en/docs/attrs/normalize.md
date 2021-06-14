---
defaults:
- 'false'
flags:
- notdot
minimums: []
title: normalize
types:
- double
- bool
used_by: G
---
Normalizes coordinates of final layout so that the first point is at the
origin, and then rotates the layout so that the angle of the first edge is
specified by the value of `normalize` in degrees.

If `normalize` is not a number, it is evaluated as a bool, with `true`
corresponding to `0` degrees.

**NOTE:** Since the attribute is evaluated first as a number, `0` and `1`
cannot be used for `false` and `true`.
