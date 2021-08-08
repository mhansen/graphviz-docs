---
defaults:
- TB
flags:
- dot
minimums: []
title: rankdir
types:
- rankdir
used_by: G
---
Sets direction of graph layout.

For example, if `rankdir="LR"`, and barring cycles, an edge `T -> H;` will go
from left to right. By default, graphs are laid out from top to bottom.

This attribute also has a side-effect in determining how record nodes are
interpreted. See [record shapes]({{< ref "../shapes.md#record" >}}).

{{< dot_card header="Top to bottom (default)">}}
digraph {
    rankdir="TB"
    a -> b -> c;
}
{{< /dot_card >}}

{{< dot_card header="Bottom to top">}}
digraph {
    rankdir="BT"
    a -> b -> c;
}
{{< /dot_card >}}

{{< dot_card header="Left to right">}}
digraph {
    rankdir="LR"
    a -> b -> c;
}
{{< /dot_card >}}

{{< dot_card header="Right to left">}}
digraph {
    rankdir="RL"
    a -> b -> c;
}
{{< /dot_card >}}

