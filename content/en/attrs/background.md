---
defaults:
- <none>
flags: []
minimums: []
name: _background
types:
- string
used_by: G
---
A string in the [`xdot` format](/docs/outputs/dot/) specifying an arbitrary background.  
During rendering, the canvas is first filled as described in the
[`bgcolor` attribute](#d:bgcolor).

Then, if `_background` is defined, the graphics
operations described in the string are performed on the canvas.
