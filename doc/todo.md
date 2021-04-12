---
layout: page
title: Graphviz Wish List
redirect_from:
- /_pages/doc/todo.html
---
We list below various projects for the improvement of Graphviz. Some are simple feature additions.
Others require significant coding and understanding of Graphviz internals, while others are open
research problems. Consideration needs to be given to how a new feature interacts or combines with
current features. Please [contact us](mailto:gviz_rqst@graphviz.org) for more details.

---

*   Improve the routing of loops and, for dot, flat edges. Complete or replace the handling of flat edges between adjacent nodes.
*   Improve the flexibility and placement of exterior labels. For example, allow the user to specify the preferred label placement.
*   Add stack frames/local variables to gvpr.
*   Provide a collection of simple tree layouts.
*   Add new graph packing strategies.
*   Allow ranksep to be an array of values in dot.
*   Allow mixed edge types within the same graph.
*   Allow varied rankdir values within clusters.
*   Allow varied layouts within clusters.
*   Improve the spline router, e.g., fewer inflection points.
*   Add an option of fast hierarchical layouts to dot.
*   Provide orthogonal layouts.
*   Add a new parallelogram shape where the angle is fixed for varying text.
*   Support rank=min/max within the context of a cluster.
*   Adjust graph to remove edge-node overlaps with line segment edges.
*   Re-implement tred (transitive reduction) to use a more efficient algorithm.
*   Write a replacement for smyrna/gvedit/dotty that provides a GUI interface for Graphviz. In addition
    to the usual functions for viewing, the program should provide widgets for the easy altering of graph
    attributes. There could also be an interface to the gvpr library, to create multiple views and modify a graph. Ideally,
    the system could allow the user to easily tailor the interactions.
