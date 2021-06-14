---
defaults:
- <none>
flags:
- map
- svg
minimums: []
title: headtarget
types:
- escString
used_by: E
---
If the edge has a [`headURL`]({{< ref "headURL.md" >}}),
`headtarget` determines which window of the
browser is used
for the URL. Setting `headURL=_graphviz` will open a new window if the window
doesn't already exist, or reuse the window if it does.

If undefined, the value of the [`target`]({{< ref "target.md" >}}) is used.
