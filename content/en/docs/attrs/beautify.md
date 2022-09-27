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
description: Whether to draw leaf nodes uniformly in a circle around the root node in sfdp.
---
Whether to try to draw leaf nodes uniformly on a circle
around the root node.

Note this is affected by [Issue 2283](https://gitlab.com/graphviz/graphviz/-/issues/2283): rendering one fewer sector than necessary, overlapping the first and last nodes.

Examples:

{{< dot_card header="Beautify">}}
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
