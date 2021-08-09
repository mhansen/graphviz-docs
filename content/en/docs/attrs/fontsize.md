---
defaults:
- '14.0'
flags: []
minimums:
- '1.0'
title: fontsize
types:
- double
used_by: ENGC
---
Font size, [in points]({{< ref "_index.md#points" >}}), used for text.

{{< dot_card >}}
digraph {
    label="40pt"
    fontsize="40"
    subgraph cluster_a {
      label="30pt"
      fontsize="30pt"
      "20pt" [fontsize="20pt"];
      "20pt"-> "20pt" [label="10pt" fontsize="10"]
    }
}
{{< /dot_card >}}
