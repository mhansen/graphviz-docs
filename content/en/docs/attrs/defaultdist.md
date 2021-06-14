---
defaults:
- 1+(avg. len)*sqrt(|V|)
flags:
- neato
minimums:
- epsilon
name: defaultdist
types:
- double
used_by: G
---
This specifies the distance between nodes in separate connected
components. If set too small, connected components may overlap.

Only applicable if [`pack`](#d:pack)`=false`.
