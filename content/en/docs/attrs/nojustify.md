---
defaults:
- 'false'
flags: []
minimums: []
title: nojustify
types:
- bool
used_by: GCNE
description: 
---
By default, the justification of multi-line labels is done within the largest
context that makes sense. Thus, in the label of a polygonal node, a
left-justified line will align with the left side of the node (shifted by the
prescribed [`margin`]({{< ref "margin.md" >}})). In record nodes, left-justified line will
line up with the left side of the enclosing column of fields. If
`nojustify=true`, multi-line labels will be justified in the context
of itself.

For example, if `nojustify` is set, the first label line is long, and the
second is shorter and left-justified, the second will align with the
left-most character in the first line, regardless of how large the node might
be.

See this example containing the `\l` (left-justify) escape-string.

{{< dot_card header="Nojustify causes text to align with previous text line, not left side of box" >}}
digraph G {
  node [width=3 shape=box]
  a [nojustify=false label="The first line is longer\nnojustify=false\l"]
  b [nojustify=true label="The first line is longer\nnojustify=true\l"]
  a -> b
}
{{< /dot_card >}}

