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
used_by: NEC
---
Tooltip annotation attached to the node or edge.
<!-- TODO: says used_by cluster too. should we mention this? -->

If unset, Graphviz will use the object's [`label`]({{< ref "label.md" >}}) if defined. Note
that if the `label` is a record specification or an HTML-like label, the
resulting tooltip may be unhelpful. In this case, if tooltips will be
generated, the user should set a `tooltip` attribute explicitly.
