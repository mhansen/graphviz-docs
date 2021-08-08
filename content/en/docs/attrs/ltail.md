---
defaults:
- '""'
flags:
- dot
minimums: []
title: ltail
types:
- string
used_by: E
---
Logical tail of an edge.

When <code>[compound]({{< ref "compound.md" >}})=true</code>, if `ltail` is defined and is the name
of a cluster containing the real tail, the edge is clipped to the boundary of
the cluster.

{{< dot_card >}}
digraph {
  compound=true;

  subgraph cluster_a {
    label="Cluster A";
    node1; node3; node5; node7;
  }
  subgraph cluster_b {
    label="Cluster B";
    node2; node4; node6; node8;
  }

  node1 -> node2 [label="1"];
  node3 -> node4 [label="2" ltail="cluster_a"];
  
  node5 -> node6 [label="3" lhead="cluster_b"];
  node7 -> node8 [label="4" ltail="cluster_a" lhead="cluster_b"];
}
{{< /dot_card >}}

See [limitation]({{< ref "_index.md#undir_note" >}}).
