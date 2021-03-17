---
name: Server-side and client-side imagemaps
params:
- imap
- cmapx
---
Produces map files for server-side and client-side image maps.
These can be used in a web page with
a graphical form of the output, e.g. in JPEG, GIF or PNG format, to attach
links to nodes and edges. 
Graphviz generates an object's map information only if the object has a non-trival 
<A HREF=attrs.html#d:URL>URL</A> or <A HREF=attrs.html#d:href>href</A>
attribute, or if it has an explicit <A HREF=attrs.html#d:tooltip>tooltip</A> attribute.
<P>
For example, to create a server-side map
given the dot file
<PRE>
/* x.gv */
digraph mainmap {
  URL="http://www.research.att.com/base.html";
  command [URL="http://www.research.att.com/command.html"];
  command -> output [URL="colors.html"];
}
</PRE>
one would process the graph and generate two output files:
<PRE>
dot -Timap -ox.map -Tgif -ox.gif x.gv
</PRE>
and then refer to it in a web page:
<XMP>
<A HREF="x.map"><IMG SRC="x.gif" ismap="ismap" /></A>
</XMP>
For client-side maps, one again generates two output files:
<PRE>
dot -Tcmapx -ox.map -Tgif -ox.gif x.gv
</PRE>
and uses the HTML
<XMP>
<IMG SRC="x.gif" USEMAP="#mainmap" />
... [content of x.map] ...
</XMP>
Note that the name given in the USEMAP attribute must be the same
as the ID attribute of the MAP element. The Graphviz renderer
uses the name of the graph as the ID. Thus, in the example above,
where the graph's name is <CODE>mainmap</CODE>, we have <CODE>USEMAP="#mainmap"</CODE>
in the IMG attribute, and x.map will look like
<XMP>
<map id="mainmap" name="mainmap">
... 
</map>
</XMP>
<P>
<A HREF=attrs.html#d:URL>URLs</A> can be attached to the root
graph, nodes and edges. If a node has a URL, clicking in the node
will activate the link.
If an edge has a URL, various
points along the edge (but not necessarily the head or tail)
will link to it. In addition, if the edge has a
<A HREF=attrs.html#d:label>label</A>, that will link
to the URL.
As for the head of the edge, this is linked to the
<A HREF=attrs.html#d:headURL>headURL</A>, if set.
Otherwise, it is linked to the edge's URL if that is defined.
The analogous description holds for the tail and the
<A HREF=attrs.html#d:tailURL>tailURL</A>.
A URL associated with the graph is used as a default link.
<P>
If the URL
of a node contains the escape sequence "&#92;N", it will be replaced by
the node's name.
If the headURL is defined and contains the escape sequence "&#92;N",
it will be replaced by
the <A HREF=attrs.html#d:headlabel>headlabel</A>, if defined.
The analogous result holds for the tailURL and the
<A HREF=attrs.html#d:taillabel>taillabel</A>.
<P>
See <A HREF=#ID>Note</A>.
