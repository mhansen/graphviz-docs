---
defaults:
- '0.0'
flags: []
minimums:
- -MAXFLOAT
- '-1000'
title: z
types:
- double
used_by: "N"
---
**Deprecated:** Use [`pos`]({{< ref "pos.md" >}}) attribute, along with
[`dimen`]({{< ref "dimen.md" >}}) and/or [`dim`]({{< ref "dim.md" >}}) to specify dimensions.

Provides z coordinate value for 3D layouts and displays. If the graph has
[`dim`]({{< ref "dim.md" >}}) set to 3 (or more), neato will use a node's `z` value for
the z coordinate of its initial position if its [`pos`]({{< ref "pos.md" >}}) attribute
is also defined.

Even if no `z` values are specified in the input, it is necessary to
declare a `z` attribute for nodes, e.g, using `node[z=""]` in order to get
z values on output. Thus, setting <code>[dim]({{< ref "dim.md" >}})=3</code> but not declaring `z` will cause
`neato -Tvrml` to layout the graph in 3D but project the layout onto the
xy-plane for the rendering. If the `z` attribute is declared, the final
rendering will be in 3D.
