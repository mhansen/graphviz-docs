---
defaults:
- black
flags: []
minimums: []
name: pencolor
types:
- color
used_by: C
---
Color used to draw the bounding box around a cluster.

 If `pencolor` is not defined, [`color`](#d:color) is used.
 
 If [`color`](#d:color) is not defined, [`bgcolor`](#d:bgcolor) is used.
 
 If [`bgcolor`](#d:bgcolor) is not defined, the default is used.

Note that a cluster inherits the root graph's attributes if defined. Thus, if
the root graph has defined a `pencolor`, this will override a [`color`](#d:color) or
[`bgcolor`](#d:bgcolor) attribute set for the cluster.
