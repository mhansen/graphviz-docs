---
defaults:
- black
flags: []
minimums: []
title: pencolor
types:
- color
used_by: C
---
Color used to draw the bounding box around a cluster.

 If `pencolor` is not defined, [`color`]({{< ref "color.md" >}}) is used.
 
 If [`color`]({{< ref "color.md" >}}) is not defined, [`bgcolor`]({{< ref "bgcolor.md" >}}) is used.
 
 If [`bgcolor`]({{< ref "bgcolor.md" >}}) is not defined, the default is used.

Note that a cluster inherits the root graph's attributes if defined. Thus, if
the root graph has defined a `pencolor`, this will override a [`color`]({{< ref "color.md" >}}) or
[`bgcolor`]({{< ref "bgcolor.md" >}}) attribute set for the cluster.
