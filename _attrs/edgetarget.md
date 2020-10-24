---
defaults:
- <none>
flags:
- map
- svg
minimums: []
name: edgetarget
types:
- escString
used_by: E
---
If the edge has a [`URL`](#d:URL) or [`edgeURL`](#d:edgeURL)
attribute, `edgetarget` determines which window of the
browser is used
for the URL attached to the non-label part of the edge.

Setting `edgetarget=_graphviz` will open a new window if it
doesn't already exist, or reuse it if it does.

If undefined, the value of the [`target`](#d:target) is used instead.
