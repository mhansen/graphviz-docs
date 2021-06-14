---
defaults:
- <none>
flags:
- map
- svg
minimums: []
name: tailtarget
types:
- escString
used_by: E
---
If the edge has a [`tailURL`](#d:tailURL), `tailtarget` determines which
window of the browser is used for the URL.

Setting `tailtarget=_graphviz` will open a new window if it doesn't already
exist, or reuse it if it does.

If undefined, the value of the [`target`](#d:target) is used.
