---
name: Simple text format
params:
- plain
- plain-ext
---
The plain and plain-ext formats produce output using
a simple, line-based language.
The latter format differs in that, on edges, it provides port names
on head and tail nodes when applicable.
<P>
There are four types of statements.
<PRE>
 <STRONG>graph</STRONG> <I>scale</I> <I>width</I> <I>height</I>
 <STRONG>node</STRONG> <I>name</I> <I>x</I> <I>y</I> <I>width</I> <I>height</I> <I>label</I> <I>style</I> <I>shape</I> <I>color</I> <I>fillcolor</I>
 <STRONG>edge</STRONG> <I>tail</I> <I>head</I> <I>n</I> <I>x<sub>1</sub></I> <I>y<sub>1</sub></I> .. <I>x<sub>n</sub></I> <I>y<sub>n</sub></I> [<I>label</I> <I>xl</I> <I>yl</I>] <I>style</I> <I>color</I>
 <STRONG>stop</STRONG>
</PRE>
<DL>
<DT><STRONG>graph</STRONG>
<DD>The <I>width</I> and <I>height</I> values give the width and height
of the drawing. The lower left corner of the drawing is at the origin.
The <I>scale</I> value indicates how the drawing should be scaled
if a <A HREF=attrs.html#d:size>size</A> attribute was given and the drawing
needs to be scaled to conform to that size. If no scaling is necessary,
it will be set to 1.0. Note that all graph, node and edge
coordinates and lengths are given unscaled.
<DT><STRONG>node</STRONG>
<DD>The <I>name</I> value is the name of the node, and <I>x</I> and <I>y</I>
give the node's position. The <I>width</I> and <I>height</I> are the
width and height of the node.
The <I>label</I>,
<I>style</I>, <I>shape</I>, <I>color</I> and <I>fillcolor</I> give the
node's <A HREF=attrs.html#d:label>label</A>,
<A HREF=attrs.html#d:style>style</A>, <A HREF=attrs.html#d:shape>shape</A>,
<A HREF=attrs.html#d:color>color</A> and
<A HREF=attrs.html#d:fillcolor>fillcolor</A>,
respectively, using attribute default values where necessary. If the
node does not have a style attribute, "solid" is used.
<DT><STRONG>edge</STRONG>
<DD>The <I>tail</I> and <I>head</I> values give the names of the head and
tail nodes. In plain-ext format, the head or tail name will be appended
with a colon and a portname if the edge connects to the node at a port.
<I>n</I> is the number of control points defining the
B-spline forming the edge. This is followed by 2*<I>n</I> numbers giving
the x and y coordinates of the control points in order from tail to head.
If the edge has a <A HREF=attrs.html#d:label>label</A>, this comes next
followed by the x and y coordinates of the label's position.
The edge description is completed by the edge's
<A HREF=attrs.html#d:style>style</A> and <A HREF=attrs.html#d:color>color</A>.
As with nodes, if a style is not defined, "solid" is used.
<P>
<B>Note:</B> The control points given in an edge statement define the
body of the edge. In particular, if the edge has an arrowhead to the
head or tail node,
there will be a gap between the last or first control points and the
boundary of the associated node. There are at least 3 possible ways
of handling this gap:
<UL>
<LI> Arrange that the input graph uses <code>dir=none</code>,
<code>arrowhead=none</code>, or <code>arrowtail=none</code> for all edges.
In this case, the terminating control points will always touch the node.
<LI> Consider the line segment joining the control point and the center
of the node, and determine the point where the segment intersects the
node's boundary. Then use the control point and the intersection point
as the main axis of an arrowhead. The problem with this approach is
that, if the edge has a port, the edge will not be pointing to the
center of the node. In this case, rather than use the control point
and center point, one can use the control point and its tangent.
<LI> Arrange that the input graph uses <code>headclip=false</code> or
<code>tailclip=false</code>. In this case, the edge will terminate at
the node's center rather than its boundary. If arrowheads are used,
there will still be a gap, but normally this will occur within the
node. The application will still need to clip the spline to the node
boundary. Also, as with the previous item, if the edge points to
a node port, this technique will fail.
</UL>
</DL>
The output consists of one <STRONG>graph</STRONG> line, a sequence of
<STRONG>node</STRONG> lines, one per node, a sequence of
<STRONG>edge</STRONG> lines, one per edge, and a final <STRONG>stop</STRONG>
line. All units are in inches, represented by a floating point number.
<P>
Note that the plain formats provide minimal information, really giving not
much more than node positions and sizes, and edge spline control points.
These formats are usually most useful to applications wanting just this
geometric information, and willing to fill in all of the graphical details.
The only real advantages to these formats is their terseness and their
ease of parsing. In general, the <A HREF=#d:dot>dot</A> and
<A HREF=#d:xdot>xdot</A> are preferable in terms of the quantity of
information provided.
