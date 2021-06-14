---
defaults:
- '""'
flags:
- svg
minimums: []
title: fontnames
types:
- string
used_by: G
---
Allows user control of how basic fontnames are represented in SVG output.

If `fontnames` is undefined or `svg`, the output will try to use known SVG
fontnames.

For example, the default font `Times-Roman` will be mapped to the
basic SVG font `serif`. This can be overridden by setting `fontnames` to `ps`
or `hd`. In the former case, known PostScript font names such as
`Times-Roman` will be used in the output. In the latter case, the fontconfig
font conventions are used. Thus, `Times-Roman` would be treated as `Nimbus
Roman No9 L`. These last two options are useful with SVG viewers that support
these richer fontname spaces.
