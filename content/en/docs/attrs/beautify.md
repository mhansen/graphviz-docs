---
defaults:
- 'false'
flags:
- sfdp
minimums: []
title: beautify
types:
- bool
used_by: G
description: Whether to 'beautify' leaves in sfdp.
---
Whether to try to draw leaf nodes uniformly on a circle
around the root node.

Examples:

{{< dot_card header="Beatify">}}
digraph G {
    layout="sfdp"
    beautify=true

    N0 -> {N1; N2; N3; N4; N5; N6}
}
{{< /dot_card >}}

{{< dot_card header="No beautify">}}
digraph G {
    layout="sfdp"
    beautify=false

    N0 -> {N1; N2; N3; N4; N5; N6}
}
{{< /dot_card >}}
