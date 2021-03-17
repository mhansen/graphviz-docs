---
layout: default
redirect_from:
  # Fixes a broken Home Page link from Gallery pages.
  - /_pages/
---

# Welcome to Graphviz

Please join the [Graphviz forum](https://forum.graphviz.org) to ask
questions and discuss Graphviz.

## What is Graphviz?

Graphviz is open source graph visualization software. Graph visualization is a way of representing structural information as diagrams of abstract graphs and networks. It has important applications in networking, bioinformatics, software engineering, database and web design, machine learning, and in visual interfaces for other technical domains.

<img alt="Cluster" src="/Gallery/directed/cluster.png" style="display:block; height:289px; margin-left:auto; margin-right:auto; width:150px" />

## Features

The Graphviz layout programs take descriptions of graphs in a simple text language, and make diagrams in useful formats, such as images and SVG for web pages; PDF or Postscript for inclusion in other documents; or display in an interactive graph browser. Graphviz has many useful features for concrete diagrams, such as options for colors, fonts, tabular node layouts, line styles, hyperlinks, and custom shapes.

## Roadmap

**dot -** "hierarchical" or layered drawings of directed graphs. This is the default tool to use if edges have directionality.

**neato -** "spring model" layouts. This is the default tool to use if the graph is not too large (about 100 nodes) and you don&#39;t know anything else about it. Neato attempts to minimize a global energy function, which is equivalent to statistical multi-dimensional scaling.

**fdp -** "spring model" layouts similar to those of neato, but does this by reducing forces rather than working with energy.

**sfdp -** multiscale version of fdp for the layout of large graphs.

**twopi -** radial layouts, after Graham Wills 97. Nodes are placed on concentric circles depending their distance from a given root node.

**circo -** circular layout, after Six and Tollis 99, Kauffman and Wiese 02. This is suitable for certain diagrams of multiple cyclic structures, such as certain telecommunications networks. 

## Download

The current release of Graphviz can be downloaded here: [Download](/download)
The code base is stored [here](https://gitlab.com/graphviz/graphviz/) on
GitLab.

## Documentation

Documentation is available in the released package and from here: [Documentation](/documentation)

## Discussions

You can post questions and comments in the [Graphviz forum](https://forum.graphviz.org).

## Bug And Issue Tracking

You can report or view Graphviz bugs and issues by visiting the Graphviz [Issues](https://gitlab.com/graphviz/graphviz/issues) page.

