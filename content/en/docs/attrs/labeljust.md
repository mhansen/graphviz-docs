---
defaults:
- '"c"'
flags: []
minimums: []
title: labeljust
types:
- string
used_by: GC
---
Justification for graph & cluster labels.

* If `labeljust=r`, the label is right-justified within bounding rectangle
* If `labeljust=l`, left-justified
* Else the label is centered.

Note that a subgraph inherits attributes from its parent. Thus, if
the root graph sets `labeljust=l`, the subgraph inherits
this value.

{{< dot_card header="Graph label justifications" >}}
digraph {
  label="l"
  labeljust=l
  a
}
{{< /dot_card >}}

{{< dot_card header="Graph label justifications" >}}
digraph {
  label="r"
  labeljust=r
  b
}
{{< /dot_card >}}


{{< dot_card header="Cluster label justifications" >}}
digraph {
  subgraph cluster_l {
    label="l"
    labeljust=l
    a
  }
  subgraph cluster_c {
    label="c"
    labeljust=c
    b
  }
  subgraph cluster_r {
    label="r"
    labeljust=r
    c
  }
}
{{< /dot_card >}}
