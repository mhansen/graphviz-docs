---
title: neato
weight: 2
description: >
  "spring model" layouts.
---

`neato` is a reasonable default tool to use for undirected graphs that aren't
too large (about 100 nodes), when you don't know anything else about the graph.

`neato` attempts to minimize a global energy function, which is equivalent to
statistical multi-dimensional scaling.

The solution is achieved using stress majorization[^1], though the older
Kamada-Kawai algorithm[^2], using steepest descent, is also available,
by switching [`mode`](/docs/attrs/mode/).

- [PDF Manual](/pdf/dot.1.pdf)
- [User Guide](/pdf/neatoguide.pdf) (caveat: not current with latest features of Graphviz)
- [Browse code](https://gitlab.com/graphviz/graphviz/-/tree/main/lib/neatogen)

<p style="text-align: center;">
  <a href="/Gallery/undirected/ER.html">
    <img src="/Gallery/undirected/ER.svg">
  </a>
</p>


[^1]: [Gansner, E.R., Koren, Y., North, S. (2005). Graph Drawing by Stress Majorization. In: Pach, J. (eds) Graph Drawing. GD 2004. Lecture Notes in Computer Science, vol 3383. Springer, Berlin, Heidelberg.](/documentation/GKN04.pdf)
[^2]: [Tomihisa Kamada, Satoru Kawai, An algorithm for drawing general undirected graphs, Information Processing Letters, Volume 31, Issue 1, 1989, Pages 7-15.](https://doi.org/10.1016%2F0020-0190%2889%2990102-6)
