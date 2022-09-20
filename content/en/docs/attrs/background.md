---
defaults:
- <none>
flags: []
minimums: []
title: _background
types:
- xdot
used_by: G
description: A string in the [`xdot` format](/docs/attr-types/xdot/) specifying an arbitrary background
---
During rendering, the canvas is first filled as described in the
[`bgcolor` attribute]({{< ref "bgcolor.md" >}}).

Then, if `_background` is defined, the graphics
operations described in the string are performed on the canvas.

See [`xdot` format](/docs/attr-types/xdot/) page for more information.
