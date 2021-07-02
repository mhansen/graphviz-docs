---
defaults:
- '0'
flags: []
minimums: []
title: rotate
types:
- int
used_by: G
---
If `rotate=90`, sets drawing orientation to landscape.

{{< dot_card header="Rotations">}}
digraph {
  rotate=90
  a -> b
}
{{< /dot_card >}}

See also:

- [`landscape`]({{< ref "landscape.md" >}})
- [`orientation`]({{< ref "orientation.md" >}})
