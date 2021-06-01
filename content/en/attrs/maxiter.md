---
defaults:
- '100 * # nodes(mode == KK)'
- 200(mode == major)
- 30(mode == sgd)
- 600(fdp)
flags:
- neato
- fdp
minimums: []
name: maxiter
types:
- int
used_by: G
---
Sets the number of iterations used.
