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

```dot
edge [style="invis"]
```

making all edges invisible, a specific edge can overrride this via:

```dot
a -> b [style=""]
```

Of course, the component can also explicitly set its <code>style</code> attribute to the desired value.
