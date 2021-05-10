---
defaults:
- '""'
flags: []
minimums: []
name: colorscheme
types:
- string
used_by: ENCG
---
This attribute specifies a color scheme namespace: the context for interpreting color names.

In particular, if a [`color`](#k:color) value has form `"xxx"` or `"//xxx"`,
then the color `xxx` will be evaluated according to the current color scheme.
If no color scheme is set, the standard X11 naming is used.

For example, if `colorscheme=bugn9`, then `color=7` is interpreted as
`color="/bugn9/7"`.
