---
defaults:
- '""'
flags:
- cmap
- svg
minimums: []
title: tooltip
types:
- escString
used_by: NECG
---
Tooltip (mouse hover text) attached to the node, edge, cluster, or graph.

If `tooltip` is unset, Graphviz will use the object's [`label`]({{< ref "label.md" >}}) if defined.

Note
that if the `label` is a record specification or an HTML-like label, the
resulting tooltip may be unhelpful. In this case, if tooltips will be
generated, the user should set a `tooltip` attribute explicitly.

{{< dot_card header="Tooltips" >}}
digraph {
  label="Graph Label"
  tooltip="Graph Tooltip"
  subgraph cluster_a {
    label="Cluster Label"
    tooltip="Cluster Tooltip"
    Node1 [tooltip="Node1 Tooltip"]
    Node1 -> Node2 [label="Edge" tooltip="Edge Tooltip"]
  }
}
{{< /dot_card >}}

See also:

- [`edgetooltip`]({{< ref "edgetooltip.md" >}}).
- [`headtooltip`]({{< ref "headtooltip.md" >}}).
- [`labeltooltip`]({{< ref "labeltooltip.md" >}}).
- [`tailtooltip`]({{< ref "tailtooltip.md" >}}).
