---
defaults:
- '4'
flags: []
minimums:
- '0'
title: sides
types:
- int
used_by: "N"
---
Number of sides when <code>[shape]({{< ref "shape.md" >}})=polygon</code>.

{{< dot_card header="Example: Polygons with 3-6 sides">}}
graph {
  Triangle  [shape=polygon sides=3]
  Rectangle [shape=polygon sides=4]
  Pentagon  [shape=polygon sides=5]
  Hexagon   [shape=polygon sides=6]
}
{{< /dot_card >}}
