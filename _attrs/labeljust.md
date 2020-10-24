---
defaults:
- '"c"'
flags: []
minimums: []
name: labeljust
types:
- string
used_by: GC
---
Justification for cluster labels.

* If `labeljust=r`, the label is right-justified within bounding rectangle
* If `labeljust=l`, left-justified
* Else the label is centered.

Note that a subgraph inherits attributes from its parent. Thus, if
the root graph sets `labeljust=l`, the subgraph inherits
this value.
