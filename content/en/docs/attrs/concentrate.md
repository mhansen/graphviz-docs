---
defaults:
- 'false'
flags: []
minimums: []
title: concentrate
types:
- bool
used_by: G
---
If true, use edge concentrators.

This merges multiedges into a single edge and causes partially parallel
edges to share part of their paths. The latter feature is not yet available
outside of `dot`.

{{< dot_card header="Example">}}
digraph {
    concentrate=true
    a -> b [label="1"]
    c -> b
    d -> b
}
{{< /dot_card >}}
