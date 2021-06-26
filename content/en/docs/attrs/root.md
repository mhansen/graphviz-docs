---
defaults:
- default: <none>
  for: (graphs)
- default: 'false'
  for: (nodes)
flags:
- twopi
- circo
minimums: []
title: root
types:
- string
- bool
used_by: GN
---
Specifies nodes to be used as the center of the layout and the root of
the generated spanning tree.

* As a graph attribute, this gives the name of the node.
* As a node attribute, it specifies that the node should be used as a
central node.

In `twopi`, `root` will actually be the central node. In `circo`, the
block containing the node will be central in the drawing of its connected
component. If not defined, `twopi` will pick a most central node, and `circo`
will pick a random node.

If the root attribute is defined as the empty string, `twopi` will reset it to
name of the node picked as the root node.

For `twopi`, it is possible to have multiple roots, presumably one for each
component. If more than one node in a component is marked as the `root`,
`twopi` will pick one.
