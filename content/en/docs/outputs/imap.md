---
title: 'Image Map: Server-side and client-side'
params:
- imap
- cmapx
---
Produces map files for server-side and client-side image maps.
These can be used in a web page with
a graphical form of the output, e.g. in JPEG, GIF or PNG format, to attach
links to nodes and edges. 
Graphviz generates an object's map information only if the object has a non-trival 
[URL](attrs.html#d:URL) or [href](attrs.html#d:href)
attribute, or if it has an explicit [tooltip](attrs.html#d:tooltip) attribute.

For example, to create a server-side map
given the dot file

{{< dot_card >}}
/* x.gv */
digraph mainmap {
  URL="http://www.research.att.com/base.html";
  command [URL="http://www.research.att.com/command.html"];
  command -> output [URL="colors.html"];
}
{{< /dot_card >}}

one would process the graph and generate two output files:

```bash
dot -Timap -ox.map -Tgif -ox.gif x.gv
```

and then refer to it in a web page:

```html
<A HREF="x.map"><IMG SRC="x.gif" ismap="ismap" /></A>
```

For client-side maps, one again generates two output files:

```bash
dot -Tcmapx -ox.map -Tgif -ox.gif x.gv
```

and uses the HTML

```html
<IMG SRC="x.gif" USEMAP="#mainmap" />
... [content of x.map] ...
```

Note that the name given in the USEMAP attribute must be the same
as the ID attribute of the MAP element. The Graphviz renderer
uses the name of the graph as the ID. Thus, in the example above,
where the graph's name is `mainmap`, we have `USEMAP="#mainmap"`
in the IMG attribute, and x.map will look like

```html
<map id="mainmap" name="mainmap">
... 
</map>
```

[URLs](attrs.html#d:URL) can be attached to the root
graph, nodes and edges. If a node has a URL, clicking in the node
will activate the link.
If an edge has a URL, various
points along the edge (but not necessarily the head or tail)
will link to it. In addition, if the edge has a
[label](attrs.html#d:label), that will link
to the URL.
As for the head of the edge, this is linked to the
[headURL](attrs.html#d:headURL), if set.
Otherwise, it is linked to the edge's URL if that is defined.
The analogous description holds for the tail and the
[tailURL](attrs.html#d:tailURL).
A URL associated with the graph is used as a default link.

If the URL
of a node contains the escape sequence "&#92;N", it will be replaced by
the node's name.
If the headURL is defined and contains the escape sequence "&#92;N",
it will be replaced by
the [headlabel](attrs.html#d:headlabel), if defined.
The analogous result holds for the tailURL and the
[taillabel](attrs.html#d:taillabel).

See [ID Output Note](/docs/outputs/#ID).
