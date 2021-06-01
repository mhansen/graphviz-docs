---
defaults:
- '"\N" (nodes)'
- '"" (otherwise)'
flags: []
minimums: []
name: label
types:
- lblString
used_by: ENGC
---
Text label attached to objects.

If a node's [`shape`](#d:shape) is record, then the label can
have a [special format](shapes.html#record)
which describes the record layout.

Note that a node's default label is `"\N"`, so the node's name or ID becomes
its label.

Technically, a node's name can be an HTML string but this will not mean that
the node's label will be interpreted as an [HTML-like
label](shapes.html#html). This is because the node's actual label is an
ordinary string, which will be replaced by the raw bytes stored in the node's
name.

To get an HTML-like label, the label attribute value itself must be an HTML
string.
