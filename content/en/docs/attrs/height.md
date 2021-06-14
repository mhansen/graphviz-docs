---
defaults:
- '0.5'
flags: []
minimums:
- '0.02'
name: height
types:
- double
used_by: "N"
---
Height of node, in inches.

This is taken as the initial, minimum height of the node. If
[`fixedsize`](#d:fixedsize) is true, this will be the final height of the
node. Otherwise, if the node label requires more height to fit, the node's height
will be increased to contain the label.

If the output format is `dot`, the value given to `height` will be the final
value.

If the node shape is regular, the width and height are made identical:

* If both the `width` and the `height` are set explicitly, the maximum of the
  two values is used.
* If one of `width` or `height` is set explicitly, that value is
  used for both `width` and `height`.
* If neither is set explicitly, the minimum of the two default values
  is used.
