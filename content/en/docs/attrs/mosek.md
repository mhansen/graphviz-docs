---
defaults:
- 'false'
flags:
- neato
minimums: []
title: mosek
types:
- bool
used_by: G
description: Whether to use the [MOSEK constraint solver](https://www.mosek.com/)
---
If Graphviz is built with `MOSEK` defined, `mode=ipsep` and `mosek=true`,
the [Mosek software](https://www.mosek.com) is use to solve the ipsep constraints.
