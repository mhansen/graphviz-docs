---
defaults:
- '96.0'
- '0.0'
flags:
- bitmap output
- svg
minimums: []
name: dpi
types:
- double
used_by: G
---
Specifies the expected number of pixels per inch on a display device.

For `bitmap` output, `dpi` guarantees that text rendering will be done more
accurately, both in size and in placement.

For SVG output, `dpi` guarantees the dimensions in the output correspond to
the correct number of points or inches.
