---
defaults:
- 'false'
flags: []
minimums: []
title: regular
types:
- bool
used_by: "N"
---
If true, force polygon to be regular, i.e., the vertices of the
polygon will lie on a circle whose center is the center of the node.

{{< dot_card >}}
digraph {
    "pentagon1" [shape="pentagon"];
    "pentagon2" [shape="pentagon" regular=true]
    "hexagon1" [shape="hexagon"];
    "hexagon2" [shape="hexagon" regular=true];
}
{{< /dot_card >}}
