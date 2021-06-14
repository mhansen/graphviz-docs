---
defaults:
- '"mc"'
flags: []
minimums: []
title: imagepos
types:
- string
used_by: "N"
---
Controls how an image is positioned within its containing node.

`imagepos` only has an effect when the image is smaller than the containing node.

The default is to be centered both horizontally and vertically.

Valid values:

* `tl` - Top Left
* `tc` - Top Centered
* `tr` - Top Right
* `ml` - Middle Left
* `mc` - Middle Centered *(the default)*
* `mr` - Middle Right
* `bl` - Bottom Left
* `bc` - Bottom Centered
* `br` - Bottom Right
