---
title: sfdp
weight: 4
description: >
  stands for Scalable [Force-Directed Placement](https://en.wikipedia.org/wiki/Force-directed_graph_drawing).
---

`sfdp` is a fast, multilevel, force-directed algorithm that efficiently layouts large graphs, outlined in "Efficient and High Quality Force-Dircted Graph Drawing"[^1].

Multiscale version of the [`fdp`](/docs/layouts/fdp/) layout, for the layout of large graphs.

- [PDF Manual](/pdf/dot.1.pdf)
- [Browse code](https://gitlab.com/graphviz/graphviz/-/tree/main/lib/sfdpgen)

<p style="text-align: center;">
  <img src="/Gallery/undirected/200910_viz_matrix_188w.png">
</p>

<h2>Attributes for sfdp features</h2>
<ul>
{{< partial attr-li "beautify">}}
{{< partial attr-li "dim">}}
{{< partial attr-li "dimen">}}
{{< partial attr-li "K">}}
{{< partial attr-li "label_scheme">}}
{{< partial attr-li "levels">}}
{{< partial attr-li "normalize">}}
{{< partial attr-li "overlap_scaling">}}
{{< partial attr-li "overlap_shrink">}}
{{< partial attr-li "quadtree">}}
{{< partial attr-li "repulsiveforce">}}
{{< partial attr-li "rotation">}}
{{< partial attr-li "smoothing">}}
{{< partial attr-li "start">}}
{{< partial attr-li "voro_margin">}}
</ul>
<br/>

[^1]: [Hu, Yifan. (2005). Efficient and High Quality Force-Directed Graph Drawing. Mathematica Journal. 10. 37-71.](http://yifanhu.net/PUB/graph_draw_small.pdf)
