---
defaults:
- TB
flags:
- dot
minimums: []
name: rankdir
types:
- rankdir
used_by: G
---
Sets direction of graph layout.

For example, if `rankdir="LR"`, and barring cycles, an edge `T -> H;` will go
from left to right. By default, graphs are laid out from top to bottom.

This attribute also has a side-effect in determining how record nodes are
interpreted. See [record shapes](shapes.html#record).
