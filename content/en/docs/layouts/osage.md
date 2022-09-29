---
title: osage
description: >
  draws clustered graphs.
---

As input, `osage` takes any graph in the [dot format]({{< ref "/docs/lang.md" >}}).

`osage` draws the graph recursively.  At each level, there will be a collection of
nodes and a collection of cluster subgraphs. The internals of each cluster
subgraph are laid out, then the cluster subgraphs and nodes at the current
level are positioned relative to each other, treating each cluster subgraph as
a node.

At each level, the nodes and cluster subgraphs are viewed as rectangles to be
packed together. At present, edges are ignored during packing. Packing is done
using the standard packing functions. In particular, the graph attributes
[`pack`]({{< ref "/docs/attrs/pack.md" >}}) and [`packmode`]({{< ref
"/docs/attrs/packmode.md" >}}) control the layout. Each graph and cluster can
specify its own values for these attributes. Remember also that a cluster
inherits its attribute values from its parent graph.

After all nodes and clusters, edges are routed based on the value of the
[`splines`]({{< ref "/docs/attrs/splines.md" >}}) attribute.

Example:
<p style="text-align: center;">
<img src="/docs/layouts/osage.svg">
</p>
Source of the example:
{{< dot_card >}}
graph {
	layout=osage
		subgraph cluster_0 {
			label="composite cluster";
			subgraph cluster_1 {
			    label="the first cluster";
				C
				L
				U
				S
				T
				E
				R
			}
			subgraph cluster_2 {
			    label="the second\ncluster";
				a
				b
				c
				d
			}
			1
			2
		}
	3
	4
	5
}
{{< /dot_card >}}

- [PDF Manual](/pdf/osage.1.pdf)
- [Browse code](https://gitlab.com/graphviz/graphviz/-/tree/main/lib/osage)
