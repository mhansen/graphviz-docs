---
name: DOT
params:
- canon
- dot
- gv
- xdot
- xdot1.2
- xdot1.4
---
These formats produce output in the
<A HREF=lang.html>dot language</A>.
Using <B>canon</B> produces a prettyprinted version of the input,
with no layout performed.
<P>
The <B>dot</B> option corresponds to attributed dot output,
and is the default output format.
It reproduces the input, along with layout information for the graph.
In particular, a <A HREF=attrs.html#d:bb>bb</A> attribute is
attached to the graph, specifying the bounding box of the drawing.
If the graph has a label, its position is specified by the
<A HREF=attrs.html#d:lp>lp</A> attribute.
<P>
Each node gets <A HREF=attrs.html#d:pos>pos</A>,
<A HREF=attrs.html#d:width>width</A> and
<A HREF=attrs.html#d:height>height</A> attributes. If the node is a record,
the record rectangles are given in the
<A HREF=attrs.html#d:rects>rects</A> attribute.
If the node is a polygon and the
<A HREF=attrs.html#d:vertices>vertices</A> attribute is defined, this
attribute contains the vertices of the node.
<P>
Every edge is
assigned a <A HREF=attrs.html#d:pos>pos</A> attribute,
and if the edge has a label, the label position
is given in <A HREF=attrs.html#d:lp>lp</A>.
<P>
The <B>xdot</B> format extends the
<B>dot</B> format by providing much more detailed information about
how graph components are drawn. It relies on additional attributes
for nodes, edges and graphs.
<P>
The format is fluid; comments and
suggestions for better representations are welcome.
To allow for changes in the format, Graphviz attaches the attribute
<code>xdotversion</code> to the graph.
If the <code>xdotversion</code> attribute is set in the input graph, the renderer
will only output features supported by that version. Note that the formats <code>xdot1.2</code>
and <code>xdot1.4</code> are equivalent to setting <code>xdotversion=1.2</code> and <code>xdotversion=1.4</code>,
respectively.
<P>
Additional drawing attributes can appear on nodes, edges, clusters and 
on the graph itself. There are six new attributes: 
<TABLE  border bgcolor=beige>
<TR><TD>_draw_<TD colspan=2>General drawing without labels
<TR><TD>_ldraw_<TD colspan=2>Label drawing
<TR><TD>_hdraw_<TD>Head arrowhead<TD>Edge only
<TR><TD>_tdraw_<TD>Tail arrowhead<TD>Edge only
<TR><TD>_hldraw_<TD>Head label<TD>Edge only
<TR><TD>_tldraw_<TD>Tail label<TD>Edge only
</TABLE>
<P>
For a given graph object, one will typically a draw directive before the
label directive. For example, for a node, one would first use the commands
in <B>_draw_</B> followed by the commands in <B>_ldraw_</B>.
<P>
The value of these attributes consists of the concatenation of some
(multi-)set of the following 13 rendering or attribute operations.
(The number is parentheses gives the xdot version when the operation
was added to the format. If no version number is given, the operation
was in the original specification.)
<TABLE border bgcolor=beige>
<TR><TD>E x<sub>0</sub> y<sub>0</sub> w h
<TD>Filled ellipse ((x-x<sub>0</sub>)/w)<sup>2</sup> + ((y-y<sub>0</sub>)/h)<sup>2</sup> = 1
<TR><TD>e x<sub>0</sub> y<sub>0</sub> w h
<TD>Unfilled ellipse ((x-x<sub>0</sub>)/w)<sup>2</sup> + ((y-y<sub>0</sub>)/h)<sup>2</sup> = 1
<TR><TD>P n x<sub>1</sub> y<sub>1</sub> ... x<sub>n</sub> y<sub>n</sub>
<TD>Filled polygon using the given n points
<TR><TD>p n x<sub>1</sub> y<sub>1</sub> ... x<sub>n</sub> y<sub>n</sub>
<TD>Unfilled polygon using the given n points
<TR><TD>L n x<sub>1</sub> y<sub>1</sub> ... x<sub>n</sub> y<sub>n</sub>
<TD>Polyline using the given n points
<TR><TD>B n x<sub>1</sub> y<sub>1</sub> ... x<sub>n</sub> y<sub>n</sub>
<TD>B-spline using the given n control points
<TR><TD>b n x<sub>1</sub> y<sub>1</sub> ... x<sub>n</sub> y<sub>n</sub>
<TD>Filled B-spline using the given n control points (1.1)
<TR><TD>T x y j w n -<I>b<sub>1</sub>b<sub>2</sub>...b<sub>n</sub></I>
<TD>Text drawn using the baseline point (x,y). The text consists of the
n bytes following '-'. The text should be left-aligned (centered,
right-aligned) on the point if j is -1 (0, 1), respectively. The value
w gives the width of the text as computed by the library.
<TR><TD>t f
<TD>Set font characteristics. The integer f is the OR of BOLD=1, ITALIC=2, UNDERLINE=4, SUPERSCRIPT=8, SUBSCRIPT=16, (1.5) STRIKE-THROUGH=32 (1.6),
and OVERLINE=64 (1.7).
<TR><TD>C n -<I>b<sub>1</sub>b<sub>2</sub>...b<sub>n</sub></I>
<TD>Set fill color. The color value consists of the
n bytes following '-'. (1.1)
<TR><TD>c n -<I>b<sub>1</sub>b<sub>2</sub>...b<sub>n</sub></I>
<TD>Set pen color. The color value consists of the
n bytes following '-'. (1.1)
<TR><TD>F s n -<I>b<sub>1</sub>b<sub>2</sub>...b<sub>n</sub></I>
<TD>Set font. The font size is s points. The font name consists of the
n bytes following '-'. (1.1)
<TR><TD>S n -<I>b<sub>1</sub>b<sub>2</sub>...b<sub>n</sub></I>
<TD>Set style attribute. The style value consists of the
n bytes following '-'. The syntax of the value is the same as
specified for a <B>styleItem</B> in <A HREF=attrs.html#k:style>style</A>. (1.1)
<TR><TD>I x y w h n -<I>b<sub>1</sub>b<sub>2</sub>...b<sub>n</sub></I>
<TD>Externally-specified image drawn in the box with lower left
corner (x,y) and upper right corner (x+w,y+h). The name of the image
consists of the n bytes following '-'. This is usually a bitmap
image. Note that the image size, even when converted from pixels to
points, might be different from the required size (w,h). It is
assumed the renderer will perform the necessary scaling. (1.2)
</TABLE>
<P>
Note that the filled figures (ellipses, polygons and B-Splines)
imply two operations: first, drawing the filled figure with the
current fill color; second, drawing an unfilled figure with the
current pen color, pen width and pen style.
<P>
Within the context of a single drawing attribute, e.g., <code>_draw_</code>, there is
an implicit state for the graphical attributes. That is, once a color, style, font, or
font characteristic is set, it remains valid for all relevant drawing operations
until the value is reset by another xdot cmd.
<P>
Style values which can be incorporated in the graphics model do not
appear in xdot output. In particular, the style values
<code>filled</code>, <code>rounded</code>, <code>diagonals</code>, and <code>invis</code>
will not appear. Indeed, if style contains <code>invis</code>, 
there will not be any xdot output at all.
<P>
With version 1.4 of xdot, color strings may now encode linear and radial gradients. Linear
gradients have the form <br>
&nbsp;&nbsp;&nbsp;&nbsp;'[' x<sub>0</sub> y<sub>0</sub> x<sub>1</sub> y<sub>1</sub> n [<I>color-stop</I>]<sup>+</sup> ']'<br>
where (x<sub>0</sub>,y<sub>0</sub>) and (x<sub>1</sub>,y<sub>1</sub>) define the starting and
ending points of the gradient line segment, and n gives the number of <I>color-stops</I>. Each
<I>color-stop</I> has the form<br>
&nbsp;&nbsp;&nbsp;&nbsp;v m -<I>b<sub>1</sub>b<sub>2</sub>...b<sub>m</sub></I><br>
where v is a number in the range [0,1] defining a position on the gradient line segment, with
color specified by the m byte string <I>b<sub>1</sub>b<sub>2</sub>...b<sub>m</sub></I>, 
the same format as used for colors in the 'c' and 'C' operations.
<P>
Radial gradients have the form<br>
&nbsp;&nbsp;&nbsp;&nbsp;'(' x<sub>0</sub> y<sub>0</sub> r<sub>0</sub> x<sub>1</sub> y<sub>1</sub> r<sub>1</sub> n [<I>color-stop</I>]<sup>+</sup> ')' <br>
where x<sub><i>j</i></sub> y<sub><i>j</i></sub> r<sub><i>j</i></sub>, for <i>j</i>=0,1, specify
the center and radius of the start and ending circle, and n gives the number of <I>color-stops</I>.
A <I>color-stop</I> has the same format as defined for linear gradients, again given the fractional
offset and its associated color. 
<P>
In handling text alignment, the application may want to recompute the
string width using its own rendering primitives.
<P>
The text operation is only used in the label attributes. Normally,
the non-text operations are only used in the non-label attributes.
If, however, the <A HREF=attrs.html#d:decorate>decorate</A>
attribute is set on an edge, its label
attribute will also contain a polyline operation.
In addition, if a label is a complex, HTML-like label, it will also
contain non-text operations.
<P>
All coordinates and sizes are in points.
Note though that if
an edge or node is invisible, no drawing operations are attached to it.
<P>
Version info:
<TABLE  border="1" >
<TR><TH>Xdot version</TH><TH>Graphviz version</TH><TH>Modification</TH></TR>
<TR><TD>1.0</TD> <TD>1.9</TD><TD> </TD></TR>
<TR><TD>1.1</TD> <TD>2.8</TD><TD>First plug-in version</TD></TR>
<TR><TD>1.2</TD><TD>2.13</TD><TD>Support image operator <b>I</b></TD></TR>
<TR><TD>1.3</TD><TD>2.31</TD><TD>Add numerical precision</TD></TR>
<TR><TD>1.4</TD><TD>2.32</TD><TD>Add gradient colors</TD></TR>
<TR><TD>1.5</TD><TD>2.34</TD><TD>Fix text layout problem; fix inverted vector in gradient; support version-specific output; new <B>t</B> op for text characteristics</TD></TR>
<TR><TD>1.6</TD><TD>2.35</TD><TD>Add STRIKE-THROUGH bit for <code>t</code></TD></TR>
<TR><TD>1.7</TD><TD>2.37</TD><TD>Add OVERLINE for <code>t</code></TD></TR>
</TABLE>
