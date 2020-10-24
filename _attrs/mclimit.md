---
defaults:
- '1.0'
flags:
- dot
minimums: []
name: mclimit
types:
- double
used_by: G
---
Multiplicative scale factor used to alter the `MinQuit` (default = 8)
and `MaxIter` (default = 24) parameters used during crossing
minimization.

These correspond to the number of tries without improvement before quitting
and the maximum number of iterations in each pass.
