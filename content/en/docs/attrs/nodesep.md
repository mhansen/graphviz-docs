---
defaults:
- '0.25'
flags: []
minimums:
- '0.02'
title: nodesep
types:
- double
used_by: G
---
In `dot`, `nodesep` specifies the minimum space between two adjacent nodes in the same rank, in inches.

For other layouts, `nodesep` affects the spacing between loops on a single node, or multiedges between
a pair of nodes.

{{< dot_card header="Small node separation">}}
digraph {
    nodesep=0.1;
    node1; node2; node3;
}
{{< /dot_card >}}

{{< dot_card header="Large node separation">}}
digraph {
    nodesep=0.5;
    node1; node2; node3;
}
{{< /dot_card >}}
