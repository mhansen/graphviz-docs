---
defaults:
- <none>
flags: []
minimums: []
title: _background
types:
- string
used_by: G
---
A string in the [`xdot` format](/docs/outputs/canon/) specifying an arbitrary background.  
During rendering, the canvas is first filled as described in the
[`bgcolor` attribute]({{< ref "bgcolor.md" >}}).

Then, if `_background` is defined, the graphics
operations described in the string are performed on the canvas.
