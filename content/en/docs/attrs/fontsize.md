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
description: Font size, [in points](/doc/info/attrs.html#points), used for text
---

{{< dot_card >}}
digraph {
    label="40pt Graph Label"
    fontsize="40"
    subgraph cluster_a {
      label="30pt Cluster Label"
      fontsize="30pt"
      "20pt Node" [fontsize="20pt"];
      "20pt Node"-> "20pt Node" [label="10pt Edge" fontsize="10"]
    }
}
{{< /dot_card >}}
