---
defaults:
- default: '100 * # nodes'
  for: '(mode == KK)'
- default: '200'
  for: '(mode == major)'
- default: '30'
  for: '(mode == sgd)'
- default: '600'
  for: '(fdp)'
flags:
- neato
- fdp
minimums: []
title: maxiter
types:
- int
used_by: G
---
Sets the number of iterations used.
