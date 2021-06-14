---
defaults:
- <none>
flags:
- map
- postscript
- svg
minimums: []
name: URL
types:
- escString
used_by: ENGC
---
Hyperlinks incorporated into device-dependent output.
At present, used in `ps2`, `cmap`, `i*map` and `svg` formats.
For all these formats, URLs can be attached to nodes, edges and
clusters. URL attributes can also be attached to the root graph in `ps2`,
`cmap` and `i*map` formats. This serves as the base URL for relative URLs in the
former, and as the default image map file in the latter.

For `svg`, `cmapx` and `imap` output, the active area for a node is its
visible image.
For example, an unfilled
node with no drawn boundary will only be active on its label.
For other output, the active area is its bounding box.
The active area for a cluster is its bounding box.
For edges, the active areas are small circles where the edge contacts its head
and tail nodes. In addition, for `svg`, `cmapx` and `imap`, the active area
includes a thin polygon approximating the edge. The circles may
overlap the related node, and the edge URL dominates.
If the edge has a label, this will also be active.
Finally, if the edge has a head or tail label, this will also be active.

For edges, the attributes [`headURL`](#d:headURL),
[`tailURL`](#d:tailURL), [`labelURL`](#d:labelURL) and
[`edgeURL`](#d:edgeURL) allow control of various parts of an
edge.

if active areas of two edges overlap, it is unspecified which area dominates.
