---
title: patchwork
---

`patchwork` draws clustered graphs using a squarified treemap layout.

As input, `patchwork` takes any graph in the [dot format]({{< ref "/docs/lang.md" >}}).

Each cluster is given an area based on the areas specified by the clusters and
nodes it contains. The areas of nodes and empty clusters can be specified by
the [`area`]({{< ref "/docs/attrs/area.md" >}}) attribute. The default `area`
is 1.

The root graph is laid out as a square. Then, recursively, the region of a
cluster or graph is partitioned among its top-level nodes and clusters, with
each given a roughly square subregion with its specified area.

[PDF Manual](/pdf/patchwork.1.pdf)
