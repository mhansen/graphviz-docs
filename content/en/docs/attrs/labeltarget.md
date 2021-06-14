---
defaults:
- <none>
flags:
- map
- svg
minimums: []
name: labeltarget
types:
- escString
used_by: E
---

If the edge has a [`URL`](#d:URL) or [`labelURL`](#d:labelURL) attribute, this
attribute determines which window of the browser is used for the URL attached
to the label.

Setting `labeltarget=_graphviz` will open a new window if it doesn't
already exist, or reuse it if it does.

If undefined, the value of the [`target`](#d:target) is used.
