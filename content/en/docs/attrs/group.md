---
defaults:
- '""'
flags:
- dot
minimums: []
title: group
types:
- string
used_by: "N"
description: Name for a group of nodes, for bundling edges avoiding crossings.
---
If the end points of an edge belong to the same group, i.e., have the
same `group` attribute, parameters are set to avoid crossings and keep
the edges straight.
