---
title: Edge Attributes
type: attr-targets
weight: 6
description: Attributes you can set on graph edges
---

Examples of edge statements:

`edge [name0=val0]</code>`
sets default edge attribute name0 to val0.
Any edge appearing after this inherits the new default attributes.

`n1 -> n2 [name1=val1]` or `n1 \-\- n2 [name1=val1]`
creates directed or undirected edge between nodes n1 and n2 and sets its attributes according to the optional list and default attributes for edges.
