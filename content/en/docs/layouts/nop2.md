---
title: nop2
description: Pretty-print DOT graph file, assuming positions already known.
---

Invoke equivalently as:

- `neato -n2`
- `dot -Knop2`

Assumes positions already specified in the input with the [`pos`](/docs/attrs/pos) attribute.


This performs an optional adjustment to remove node-node overlap, computes edge layouts, and emites the graphs.

- [PDF Manual (`-n` section of `neato`)](/pdf/dot.1.pdf)
- [Browse code](https://gitlab.com/graphviz/graphviz/-/blob/main/plugin/neato_layout/gvlayout_neato_layout.c)
