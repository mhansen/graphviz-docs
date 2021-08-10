---
title: neato
weight: 2
---
"spring model" layouts.

`neato` is the default tool to use if the graph is not too large (about 100 nodes)
and you don't know anything else about it.

`neato` attempts to minimize a global energy function, which is equivalent to
statistical multi-dimensional scaling.

The solution is achieved using stress majorization, though the older
Kamada-Kawai algorithm, using steepest descent, is also available.

<p style="text-align: center;">
  <a href="/Gallery/undirected/ER.html">
    <img src="/Gallery/undirected/ER.svg">
  </a>
</p>
