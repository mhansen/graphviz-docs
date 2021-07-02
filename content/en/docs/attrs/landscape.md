---
defaults:
- 'false'
flags: []
minimums: []
title: landscape
types:
- bool
used_by: G
---
If true, the graph is rendered in landscape mode. Synonymous with
<code>[rotate]({{< ref "rotate.md" >}})=90</code> or <code>[orientation]({{< ref "orientation.md" >}})=landscape</code>.

{{< dot_card header="Rotations">}}
digraph {
  landscape=true
  a -> b
}
{{< /dot_card >}}

See also:

- [`rotate`]({{< ref "rotate.md" >}})
- [`orientation`]({{< ref "orientation.md" >}})
