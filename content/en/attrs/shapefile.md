---
defaults:
- '""'
flags: []
minimums: []
name: shapefile
types:
- string
used_by: "N"
---
*(Deprecated)* Specifies a file containing user-supplied node content.

Sets the node's [`shape`](#d:shape)`="box"`. The image in the shapefile must be
rectangular. The image formats supported as well as the precise semantics of
how the file is used depends on the [output format](output.html). For further
details, see [Image Formats](output.html#d:image_fmts) and [External
PostScript files](../../../faq/#ext_image).

There is one exception to this usage: If [`shape`](#d:shape)`="epsf"`,
`shapefile` gives a filename containing a definition of the node in
PostScript. The graphics defined must be contain all of the node content,
including any desired boundaries. For further details, see [External
PostScript files](../../../faq/#ext_ps_file).
