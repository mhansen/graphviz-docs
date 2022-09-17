---
defaults:
- 'false'
flags: []
minimums: []
title: decorate
types:
- bool
used_by: E
description: Whether to connect the edge label to the edge with a line
---
If true, attach edge label to edge by a 2-segment polyline,
underlining the label, then going to the closest point of spline.

{{< dot_card header="Example">}}
digraph {
  a -> a [label="AA" decorate=true]
  a -> b [label="AB" decorate=true]
  b -> b [label="BB" decorate=false]
}
{{< /dot_card >}}
