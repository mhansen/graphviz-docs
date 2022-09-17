---
defaults:
- 'false'
flags:
minimums: []
title: cluster
types:
- bool
used_by: CS
description: Whether the subgraph is a cluster
---
Subgraph clusters are rendered differently, e.g. [`dot`](/docs/layouts/dot/) renders a box around subgraph clusters, but doesn't draw a box around non-subgraph clusters.

Example:

{{< dot_card >}}
digraph cats {
  subgraph cluster_big_cats {
    // This subgraph is a cluster, because the name begins with "cluster"
    
    "Lion";
    "Snow Leopard";
  }

  subgraph domestic_cats {
    // This subgraph is also a cluster, because cluster=true.
    cluster=true;

    "Siamese";
    "Persian";
  }

  subgraph not_a_cluster {
    // This subgraph is not a cluster, because it doesn't start with "cluster",
    // nor sets cluster=true.
    
    "Wildcat";
  }
}
{{< /dot_card >}}
