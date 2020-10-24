---
defaults:
- '-4'
flags:
- prism
minimums:
- -1.0e10
name: overlap_scaling
types:
- double
used_by: G
---
When `overlap=prism`, the layout is scaled by this factor, thereby
removing a fair amount of node overlap, and making node overlap removal
faster and better able to retain the graph's shape.

* If `overlap_scaling` is negative, the layout is scaled by
`-1*overlap_scaling` times the average label size.

* If `overlap_scaling` is positive, the layout is scaled by
`overlap_scaling`.

* If `overlap_scaling` is zero, no scaling is done.
