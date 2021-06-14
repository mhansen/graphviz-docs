---
defaults:
- '0.99'
flags:
- neato
minimums:
- '0.0'
title: Damping
types:
- double
used_by: G
---
Factor damping force motions. On each iteration, a node's movement
is limited to this factor of its potential motion. By being less than
`1.0`, the system tends to "cool", thereby preventing cycling.
