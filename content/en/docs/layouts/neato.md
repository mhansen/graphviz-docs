---
title: neato
weight: 2
---
"spring model" layouts.

`neato` is a reasonable default tool to use for undirected graphs that aren't
too large (about 100 nodes), when you don't know anything else about the graph.

`neato` attempts to minimize a global energy function, which is equivalent to
statistical multi-dimensional scaling.

The solution is achieved using stress majorization, though the older
Kamada-Kawai algorithm[^1], using steepest descent, is also available.

<p style="text-align: center;">
  <a href="/Gallery/undirected/ER.html">
    <img src="/Gallery/undirected/ER.svg">
  </a>
</p>

[PDF Manual](/pdf/dot.1.pdf)

[^1]: [Tomihisa Kamada, Satoru Kawai, An algorithm for drawing general undirected graphs, Information Processing Letters, Volume 31, Issue 1, 1989, Pages 7-15.](https://doi.org/10.1016%2F0020-0190%2889%2990102-6)
