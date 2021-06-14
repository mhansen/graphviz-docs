---
defaults: []
flags:
- write
minimums: []
title: vertices
types:
- pointList
used_by: "N"
---
Sets the coordinates of the vertices of the node's polygon, in inches.

Used if the node is polygonal, and output is `dot` or `xdot`.

If the node is an ellipse or circle, the [`samplepoints`]({{< ref "samplepoints.md" >}})
attribute affects the output.
