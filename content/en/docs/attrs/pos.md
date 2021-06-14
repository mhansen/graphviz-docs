---
defaults: []
flags: []
minimums: []
name: pos
types:
- point
- splineType
used_by: EN
---
Position of node, or spline control points.

For nodes, the position indicates the center of the node. On output, the
coordinates are in [points](#points).

In `neato` and `fdp`, `pos` can be used to set the initial position of a
node. By default, the coordinates are assumed to be in inches. However, the
[`-s`](command.html#-s) command line flag can be used to specify different
units. As the output coordinates are in points, feeding the output of a graph
laid out by a Graphviz program into `neato` or `fdp` will almost always
require the `-s` flag.

When the [`-n`](command.html#-n) command line flag is used with `neato`, it
is assumed the positions have been set by one of the layout programs, and are
therefore in points. Thus, `neato -n` can accept input correctly without
requiring a `-s` flag and, in fact, ignores any such flag.
