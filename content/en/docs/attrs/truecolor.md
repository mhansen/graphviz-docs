---
defaults:
- ''
flags:
- bitmap output
minimums: []
name: truecolor
types:
- bool
used_by: G
---
Whether internal bitmap rendering relies on a truecolor color model or uses a
color palette.

If `truecolor` is unset, `truecolor` is not used
unless there is a [`shapefile`](#d:shapefile) property
for some node in the graph.
The output model will use the input model when possible.

Use of color palettes results in less memory usage during creation of the
bitmaps and smaller output files.

Usually, the only time it is necessary to specify the `truecolor` model
is if the graph uses more than 256 colors.
However, if one uses [`bgcolor`](#d:bgcolor)`=transparent` with
a color palette, font
antialiasing can show up as a fuzzy white area around characters.
Using `truecolor=true` avoids this problem.
