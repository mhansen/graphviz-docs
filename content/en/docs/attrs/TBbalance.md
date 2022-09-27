---
defaults:
- "''"
flags:
- dot
minimums: []
title: TBbalance
types:
- string
used_by: G
description: Which [rank](/docs/attrs/rank/) to move floating (loose) nodes to
---

Valid options:

- `"min"`: Move floating (loose) nodes to minimum [`rank`](/docs/attrs/rank/).
- `"max"`: Move floating (loose) nodes to maximum [`rank`](/docs/attrs/rank/).
- Otherwise, floating nodes are placed anywhere.

Despite the name `TBbalance` ("Top-Bottom Balance"), this also works with
left-right ranks, e.g. [`rankdir=LR`](/docs/attrs/rankdir/).

Examples:

{{< dot_card header="Default Behaviour">}}
digraph {
    layout="dot"

    { rank="min"; "min" }
    { rank="max"; "max" }
    "min" -> "middle" -> "max"
    
    "Floater 1"
    "Floater 2"
}
{{< /dot_card >}}

{{< dot_card header="Floating nodes moved to min rank">}}
digraph {
    layout="dot"
    TBbalance="min"

    { rank="min"; "min" }
    { rank="max"; "max" }
    "min" -> "middle" -> "max"
    
    "Floater 1"
    "Floater 2"
}
{{< /dot_card >}}

{{< dot_card header="Floating nodes moved to max rank">}}
digraph {
    layout="dot"
    TBbalance="max"

    { rank="min"; "min" }
    { rank="max"; "max" }
    "min" -> "middle" -> "max"
    
    "Floater 1"
    "Floater 2"
}
{{< /dot_card >}}
