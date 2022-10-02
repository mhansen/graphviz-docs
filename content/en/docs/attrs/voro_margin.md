---
defaults:
- '0.05'
flags:
- neato
- fdp
- sfdp
- twopi
- circo
minimums:
- '0.0'
title: voro_margin
types:
- double
used_by: G
description: Tuning margin of Voronoi technique
---

Factor to scale up drawing to allow margin for expansion in
[Voronoi technique](https://en.wikipedia.org/wiki/Voronoi_diagram).
`dim' = (1+2*margin)*dim`.
