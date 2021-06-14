---
defaults:
- '""'
flags: []
minimums: []
title: style
types:
- style
used_by: ENCG
---
Set style information for components of the graph.

For cluster subgraphs, if `style="filled"`, the cluster box's background is
filled.

If the default style attribute has been set for a component, an individual
component can use `style=""` to revert to the normal default. For example, if
the graph has

{{< dot_card >}}
digraph {
  edge [style="invis"]
  a -> b
}
{{< /dot_card >}}

making all edges invisible, the `b->c` edge can overrride this via:

{{< dot_card >}}
digraph {
  edge [style="invis"]
  a -> b
  b -> c [style=""]
}
{{< /dot_card >}}

Of course, the component can also explicitly set its `style` attribute to the desired value.
