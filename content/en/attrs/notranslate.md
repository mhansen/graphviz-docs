---
defaults:
- 'false'
flags:
- neato
minimums: []
name: notranslate
types:
- bool
used_by: G
---
By default, the final layout is translated so that the lower-left corner of
the bounding box is at the origin.

This can be annoying if some nodes are pinned or if the user runs `neato -n`.

To avoid this translation, set `notranslate=true`.
