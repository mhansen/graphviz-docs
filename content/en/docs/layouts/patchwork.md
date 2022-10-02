---
title: patchwork
description: >
  draws map of clustered graph using a
  [squarified treemap layout](https://en.wikipedia.org/wiki/Treemapping).
---

Each cluster is given an area based on the areas specified by the clusters and
nodes it contains. The areas of nodes and empty clusters can be specified by
the [`area`]({{< ref "/docs/attrs/area.md" >}}) attribute. The default `area`
is 1.

The root graph is laid out as a square. Then, recursively, the region of a
cluster or graph is partitioned among its top-level nodes and clusters, with
each given a roughly square subregion with its specified area.

Example: Australian Coins, area proportional to value
<p style="text-align: center">
	<img style="width: 50%" src="/docs/layouts/patchwork.svg">
</p>
Source of the example:
{{< dot_card >}}
graph {
	layout=patchwork
	node [style=filled]
	"$2"  [area=200 fillcolor=gold]
	"$1"  [area=100 fillcolor=gold]
	"50c" [area= 50 fillcolor=silver]
	"20c" [area= 20 fillcolor=silver]
	"10c" [area= 10 fillcolor=silver]
	"5c"  [area=  5 fillcolor=silver]
}
{{< /dot_card >}}
<h2>Attributes for patchwork features</h2>
<ul>
{{< partial attr-li "area">}}
</ul>
<br/>

- [PDF Manual](/pdf/patchwork.1.pdf)
- [Browse code](https://gitlab.com/graphviz/graphviz/-/tree/main/lib/patchwork)
