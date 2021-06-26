---
defaults:
- default: '.0001 * # nodes'
  for: (mode == KK)'
- default: '.0001'
  for: (mode == major)
- default: '.01'
  for: (mode == sgd)
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
