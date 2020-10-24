---
defaults:
- '""'
flags:
- map
- svg
minimums: []
name: edgeURL
types:
- escString
used_by: E
---
The link for the non-label parts of an edge.

`edgeURL` overrides any [`URL`](#d:URL) defined for the edge.

Also, `edgeURL` is used near the head or tail node unless overridden
by [`headURL`](#d:headURL) or [`tailURL`](#d:tailURL), respectively.

See [limitation](#h:undir_note).
