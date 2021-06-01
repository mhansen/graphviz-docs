---
defaults:
- '0.0'
flags: []
minimums:
- -MAXFLOAT
- '-1000'
name: z
types:
- double
used_by: "N"
---
**Deprecated:** Use [`pos`](#d:pos) attribute, along with
[`dimen`](#d:dimen) and/or [`dim`](#d:dim) to specify dimensions.

Provides z coordinate value for 3D layouts and displays. If the graph has
[`dim`](#d:dim) set to 3 (or more), neato will use a node's `z` value for
the z coordinate of its initial position if its [`pos`](#d:pos) attribute
is also defined.

Even if no `z` values are specified in the input, it is necessary to
declare a `z` attribute for nodes, e.g, using `node[z=""]` in order to get
z values on output. Thus, setting [`dim`](#d:dim)`=3` but not declaring `z` will cause
`neato -Tvrml` to layout the graph in 3D but project the layout onto the
xy-plane for the rendering. If the `z` attribute is declared, the final
rendering will be in 3D.
