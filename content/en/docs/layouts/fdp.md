---
title: fdp
weight: 3
description: >
  stands for Force Directed Placement.
---

"spring model" layouts similar to those of [neato]({{< ref "neato.md" >}}), but
does this by reducing forces rather than working with energy.

`fdp` implements the Fruchterman-Reingold heuristic[^1] including a multigrid solver
that handles larger graphs and clustered undirected graphs.

<p style="text-align: center;">
  <a href="/Gallery/undirected/fdpclust.html">
    <img src="/Gallery/undirected/fdpclust.svg">
  </a>
</p>

[PDF Manual](/pdf/dot.1.pdf)

[^1]: [Fruchterman, T.M.J. and Reingold, E.M. (1991), Graph drawing by force-directed placement. Softw: Pract. Exper., 21: 1129-1164.](https://doi.org/10.1002/spe.4380211102)
