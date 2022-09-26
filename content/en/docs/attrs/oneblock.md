---
defaults:
- 'false'
flags:
- circo
minimums: []
title: oneblock
types:
- bool
used_by: G
description: Whether to draw circo graphs around one circle.
---

Observe two examples of rendering the same graph:

{{< dot_card header="Example: Multiple Blocks" >}}
digraph G {
    layout="circo"
    oneblock=false

    N0 -> N1
    N1 -> N2
    N2 -> N3
    N3 -> N4
    N4 -> N0
    
    N4 -> N5
    N5 -> N6
    N6 -> N7
    N7 -> N8
    N8 -> N5
}
{{< /dot_card >}}

{{< dot_card header="Example: One Block" >}}
digraph G {
    layout="circo"
    oneblock=true

    N0 -> N1
    N1 -> N2
    N2 -> N3
    N3 -> N4
    N4 -> N0
    
    N4 -> N5
    N5 -> N6
    N6 -> N7
    N7 -> N8
    N8 -> N5
}
{{< /dot_card >}}
