---
title: dot
weight: 1
description: >
  [hierarchical or layered drawings](https://en.wikipedia.org/wiki/Layered_graph_drawing)
  of directed graphs.
---

`dot` is the default tool to use if edges have directionality.

The layout algorithm aims edges in the same direction (top to bottom, or left
to right) and then attempts to avoid edge crossings and reduce edge length.

- [PDF Manual](/pdf/dot.1.pdf)
- [User Guide](/pdf/dotguide.pdf) (caveat: not current with latest features of Graphviz)
- [Browse code](https://gitlab.com/graphviz/graphviz/-/tree/main/lib/dotgen)

<p style="text-align: center;">
  <a href="/Gallery/directed/cluster.html">
    <img src="/Gallery/directed/cluster.svg">
  </a>
</p>

<h2>Attributes for dot features</h2>
<ul>
{{< partial attr-li "clusterrank">}}
{{< partial attr-li "compound">}}
{{< partial attr-li "constraint">}}
{{< partial attr-li "group">}}
{{< partial attr-li "lhead">}}
{{< partial attr-li "ltail">}}
{{< partial attr-li "mclimit">}}
{{< partial attr-li "minlen">}}
{{< partial attr-li "newrank">}}
{{< partial attr-li "nslimit">}}
{{< partial attr-li "nslimit1">}}
{{< partial attr-li "ordering">}}
{{< partial attr-li "rank">}}
{{< partial attr-li "rankdir">}}
{{< partial attr-li "ranksep">}}
{{< partial attr-li "remincross">}}
{{< partial attr-li "samehead">}}
{{< partial attr-li "sametail">}}
{{< partial attr-li "searchsize">}}
{{< partial attr-li "showboxes">}}
{{< partial attr-li "TBbalance">}}
</ul>
<br/>
