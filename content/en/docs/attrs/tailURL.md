---
defaults:
- '""'
flags:
- map
- svg
minimums: []
title: tailURL
types:
- escString
used_by: E
---
If defined, `tailURL` is output as part of the tail label of the
edge.

Also, this value is used near the tail node, overriding any
[`URL`]({{< ref "URL.md" >}}) value.

See [limitation]({{< ref "_index.md#undir_note" >}}).

See also:

- [`edgehref`]({{< ref "edgehref.md" >}}), [`edgeURL`]({{< ref "edgeURL.md" >}})
- [`headhref`]({{< ref "headhref.md" >}}), [`headURL`]({{< ref "headURL.md" >}})
- [`labelhref`]({{< ref "labelhref.md" >}}), [`labelURL`]({{< ref "labelURL.md" >}})
- [`tailhref`]({{< ref "tailhref.md" >}}), [`tailURL`]({{< ref "tailURL.md" >}})
- [`href`]({{< ref "href.md" >}}), [`URL`]({{< ref "URL.md" >}})
