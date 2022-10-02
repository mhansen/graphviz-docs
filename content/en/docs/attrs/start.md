---
defaults:
- '""'
flags:
- neato
- fdp
minimums: []
title: start
types:
- startType
used_by: G
description: Parameter used to determine the initial layout of nodes
---

If unset, the nodes are randomly placed in a unit square with the same seed
is always used for the random number generator, so the initial placement is
repeatable.

The following examples have the same graph, but render differently due to their `start` values:

{{< dot_card header="Set random seed to 1">}}
graph {
    layout="fdp"
    start=1
    A -- B; B -- C; C -- D; D -- A
}
{{< /dot_card >}}

{{< dot_card header="Set random seed to 2, graph looks different">}}
graph {
    layout="fdp"
    start=1
    A -- B; B -- C; C -- D; D -- A
}
{{< /dot_card >}}
