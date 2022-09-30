---
title: twopi
weight: 6
description: >
  radial layout.
---
After Graham Wills 1997[^1].
[^1]: [Graham J. Wills (1999) NicheWorks—Interactive Visualization of Very Large Graphs, Journal of Computational and Graphical Statistics, 8:2, 190-212](https://doi.org/10.1080/10618600.1999.10474810)

Nodes are placed on concentric circles depending their distance from a given
root node.

You can set the root node, or let `twopi` do it.

<p style="text-align: center;">
  <a href="/Gallery/twopi/twopi2.html">
    <img src="/Gallery/twopi/twopi2.svg">
  </a>
</p>
<h2>Attributes for twopi features</h2>
<ul>
{{< partial attr-li "ranksep" >}}
{{< partial attr-li "root" >}}
{{< partial attr-li "weight" >}}
</ul>
<br/>

- [Browse code](https://gitlab.com/graphviz/graphviz/-/tree/main/lib/twopigen)
- [PDF Manual](/pdf/dot.1.pdf)
