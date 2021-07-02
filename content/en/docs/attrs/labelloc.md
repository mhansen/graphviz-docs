---
defaults:
- default: '"t"'
  for: '(clusters)'
- default: '"b"'
  for: '(root graphs)'
- default: '"c"'
  for: '(nodes)'
flags: []
minimums: []
title: labelloc
types:
- string
used_by: NGC
---
Vertical placement of labels for nodes, root graphs and clusters.

For graphs and clusters, only `labelloc=t` and `labelloc=b` are allowed, corresponding
to placement at the top and bottom, respectively.

By default, root graph labels go on the bottom and cluster labels go on the
top.

Note that a subgraph inherits attributes from its parent. Thus, if
the root graph sets `labelloc=b`, the subgraph inherits
this value.

For nodes, this attribute is used only when the height of the node
is larger than the height of its label. 

If `labelloc=t`, `labelloc=c`, `labelloc=b`, the label is aligned
with the top, centered, or aligned with the bottom of the node, respectively.

By default, the label is vertically centered.

{{< dot_card header="Label at top of graph" >}}
digraph {
  labelloc="t"
  label="Title"
  a -> b
}
{{< /dot_card >}}

{{< dot_card header="Label at bottom of graph" >}}
digraph {
  labelloc="b"
  label="Title"
  a -> b
}
{{< /dot_card >}}

{{< dot_card header="Cluster Label Locations" >}}
digraph {
  label="Graph Title"
  subgraph cluster_t {
    labelloc="t"
    label="Cluster Top"
    a -> b
  }
  subgraph cluster_b {
    labelloc="b"
    label="Cluster Bottom"
    c -> d
  }
}
{{< /dot_card >}}

{{< dot_card header="Node label positions" >}}
digraph {
  t [labelloc=t]
  c [labelloc=c]
  b [labelloc=b]
}
{{< /dot_card >}}
