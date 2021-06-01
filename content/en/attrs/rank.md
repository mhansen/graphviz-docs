---
defaults:
- ''
flags:
- dot
minimums: []
name: rank
types:
- rankType
used_by: S
---
Rank constraints on the nodes in a subgraph.

* If `rank="same"`, all nodes are placed on the same rank.
* If `rank="min"`, all nodes are placed on the minimum rank.
* If `rank="source"`, all nodes are placed on the minimum rank, and
  the only nodes on the minimum rank belong to some subgraph with
  `rank="source"` or `rank="min"`.

Analogous criteria hold for `rank="max"` and `rank="sink"`.

(Note: the minimum rank is topmost or leftmost, and the maximum rank is
bottommost or rightmost.)
