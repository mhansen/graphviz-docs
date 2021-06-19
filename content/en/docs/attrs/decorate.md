---
defaults:
- 'false'
flags: []
minimums: []
title: decorate
types:
- bool
used_by: E
---
If true, attach edge label to edge by a 2-segment
polyline, underlining the label, then going to the closest point of spline.

{{< dot_card header="Example">}}
digraph {
  a -> a [label="AA" decorate=true]
  a -> b [label="AB" decorate=true]
}
{{< /dot_card >}}
