---
defaults:
- <system-dependent>
flags: []
minimums: []
title: fontpath
types:
- string
used_by: G
description: Directory list used by [libgd](https://libgd.github.io/) to search for bitmap fonts
---
Used if Graphviz was not built with the [fontconfig
library](https://www.freedesktop.org/wiki/Software/fontconfig/).

If `fontpath` is not set, the environment
variable `DOTFONTPATH` is checked.

If `DOTFONTPATH` is not set, `GDFONTPATH` is checked.

If `GDFONTPATH` not set, libgd uses its compiled-in font path.

Note that `fontpath` is an attribute of the root graph.
