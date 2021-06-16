---
defaults:
- '1.0'
flags: []
minimums:
- '0.0'
title: arrowsize
types:
- double
used_by: E
---
Multiplicative scale factor for arrowheads.

{{< dot_card header="Example">}}
digraph {
  a -> "0.5" [arrowsize=0.5]
  a -> "1"
  a -> "2" [arrowsize=2]
  a -> "3" [arrowsize=3]
}
{{< /dot_card >}}
