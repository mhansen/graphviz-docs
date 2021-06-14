---
defaults:
- 'false'
flags:
- dot
minimums: []
title: newrank
types:
- bool
used_by: G
---
Whether to use a single global ranking, ignoring clusters.

The original ranking algorithm in `dot` is recursive on clusters. This can
produce fewer ranks and a more compact layout, but sometimes at the cost of a
head node being place on a higher rank than the tail node. It also assumes
that a node is not constrained in separate, incompatible subgraphs. For
example, a node cannot be in a cluster and also be constrained by `rank=same`
with a node not in the cluster.

This allows nodes to be subject to multiple constraints. Rank
constraints will usually take precedence over edge constraints.
