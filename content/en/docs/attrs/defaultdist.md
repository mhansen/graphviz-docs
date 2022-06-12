---
defaults:
- 1+(avg. len)*sqrt(|V|)
flags:
- neato
minimums:
- epsilon
title: defaultdist
types:
- double
used_by: G
description: This specifies the distance between nodes in separate connecte
---
components. If set too small, connected components may overlap.

Only applicable if <code>[pack]({{< ref "pack.md" >}})=false</code>.
