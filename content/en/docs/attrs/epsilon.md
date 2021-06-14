---
defaults:
- '.0001 * # nodes(mode == KK)'
- .0001(mode == major)
- .01(mode == sgd)
flags:
- neato
minimums: []
title: epsilon
types:
- double
used_by: G
---
Terminating condition. If the length squared of all energy gradients are
less than `epsilon`, the algorithm stops.
