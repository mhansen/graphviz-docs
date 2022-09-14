---
title: Edge Attributes
type: attr-targets
weight: 6
description: Attributes you can set on graph edges
---

Examples of edge statements:

<code>edge [name0=val0]</code>
&mdash;
sets default edge attribute name0 to val0.
Any edge appearing after this inherits the new default attributes.

<code>n1 -> n2 [name1=val1]</code>

or

<code>n1 \-\- n2 [name1=val1]</code>

&mdash;
creates directed or undirected edge between nodes n1 and n2 and sets its attributes according to the optional list and default attributes for edges.
