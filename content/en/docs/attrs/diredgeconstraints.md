---
defaults:
- 'false'
flags:
- neato
minimums: []
title: diredgeconstraints
types:
- string
- bool
used_by: G
---
If true, constraints are generated for each edge in the largest (heuristic)
directed acyclic subgraph such that the edge must point downwards.

Only valid when <code>[mode]({{< ref "mode.md" >}})="ipsep"</code>.

If `hier`, generates level constraints similar to those used with
<code>[mode]({{< ref "mode.md" >}})="hier"</code>. The main difference is that, in the latter
case, only these constraints are involved, so a faster solver can be used.
