---
defaults:
- '0.3'
flags:
- fdp
- sfdp
minimums:
- '0'
title: K
types:
- double
used_by: GC
---
Spring constant used in virtual physical model. It roughly corresponds
to an ideal edge length (in inches), in that increasing `K` tends to
increase the distance between nodes.

Note that the edge attribute [`len`]({{< ref "len.md" >}}) can be used to
override this value for adjacent nodes.
