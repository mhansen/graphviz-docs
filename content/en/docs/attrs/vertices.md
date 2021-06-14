---
defaults: []
flags:
- write
minimums: []
name: vertices
types:
- pointList
used_by: "N"
---
Sets the coordinates of the vertices of the node's polygon, in inches.

Used if the node is polygonal, and output is `dot` or `xdot`.

If the node is an ellipse or circle, the [`samplepoints`](#d:samplepoints)
attribute affects the output.
