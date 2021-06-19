---
title: Plain Text
description: Simple, line-based language
params:
- plain
- plain-ext
---
The plain and plain-ext formats produce output using
a simple, line-based language.
The latter format differs in that, on edges, it provides port names
on head and tail nodes when applicable.

Example outputs of a simple graph with two nodes connected with an edge:

{{< card header="`-Tplain`">}}
```
$ echo 'digraph { a->b }' | dot -Tplain
```
```
graph 1 0.75 1.5
node a 0.375 1.25 0.75 0.5 a solid ellipse black lightgrey
node b 0.375 0.25 0.75 0.5 b solid ellipse black lightgrey
edge a b 4 0.375 0.99579 0.375 0.88865 0.375 0.7599 0.375 0.64045 solid black
stop
```
{{</ card >}}

{{< card header="`-Tplain-ext`">}}
```
$ echo 'digraph { a->b }' | dot -Tplain-ext
```
```
graph 1 0.75 1.5
node a 0.375 1.25 0.75 0.5 a solid ellipse black lightgrey
node b 0.375 0.25 0.75 0.5 b solid ellipse black lightgrey
edge a b 4 0.375 0.99579 0.375 0.88865 0.375 0.7599 0.375 0.64045 solid black
stop
```
{{</ card >}}

There are four types of statements.
<PRE>
 <STRONG>graph</STRONG> <I>scale</I> <I>width</I> <I>height</I>
 <STRONG>node</STRONG> <I>name</I> <I>x</I> <I>y</I> <I>width</I> <I>height</I> <I>label</I> <I>style</I> <I>shape</I> <I>color</I> <I>fillcolor</I>
 <STRONG>edge</STRONG> <I>tail</I> <I>head</I> <I>n</I> <I>x₁</I> <I>y₁</I> .. <I>xₙ</I> <I>yₙ</I> [<I>label</I> <I>xl</I> <I>yl</I>] <I>style</I> <I>color</I>
 <STRONG>stop</STRONG>
</PRE>

**graph**
: The _width_ and _height_ values give the width and height
of the drawing. The lower left corner of the drawing is at the origin.
The _scale_ value indicates how the drawing should be scaled
if a [size](attrs.html#d:size) attribute was given and the drawing
needs to be scaled to conform to that size. If no scaling is necessary,
it will be set to 1.0. Note that all graph, node and edge
coordinates and lengths are given unscaled.

**node**
: The _name_ value is the name of the node, and _x_ and _y_
give the node's position. The _width_ and _height_ are the
width and height of the node.
The _label_,
_style_, _shape_, _color_ and _fillcolor_ give the
node's [label](attrs.html#d:label),
[style](attrs.html#d:style), [shape](attrs.html#d:shape),
[color](attrs.html#d:color) and
[fillcolor](attrs.html#d:fillcolor),
respectively, using attribute default values where necessary. If the
node does not have a style attribute, "solid" is used.

**edge**
: The _tail_ and _head_ values give the names of the head and
  tail nodes. In plain-ext format, the head or tail name will be appended
  with a colon and a portname if the edge connects to the node at a port.
  _n_ is the number of control points defining the
  B-spline forming the edge. This is followed by 2*_n_ numbers giving
  the x and y coordinates of the control points in order from tail to head.
  If the edge has a [label](attrs.html#d:label), this comes next
  followed by the x and y coordinates of the label's position.
  The edge description is completed by the edge's
  [style](attrs.html#d:style) and [color](attrs.html#d:color).
  As with nodes, if a style is not defined, "solid" is used.

  **Note:** The control points given in an edge statement define the
  body of the edge. In particular, if the edge has an arrowhead to the
  head or tail node,
  there will be a gap between the last or first control points and the
  boundary of the associated node. There are at least 3 possible ways
  of handling this gap:

  - Arrange that the input graph uses `dir=none`,
    `arrowhead=none`, or `arrowtail=none` for all edges.
    In this case, the terminating control points will always touch the node.
  - Consider the line segment joining the control point and the center
    of the node, and determine the point where the segment intersects the
    node's boundary. Then use the control point and the intersection point
    as the main axis of an arrowhead. The problem with this approach is
    that, if the edge has a port, the edge will not be pointing to the
    center of the node. In this case, rather than use the control point
    and center point, one can use the control point and its tangent.
  - Arrange that the input graph uses `headclip=false` or
    `tailclip=false`. In this case, the edge will terminate at
    the node's center rather than its boundary. If arrowheads are used,
    there will still be a gap, but normally this will occur within the
    node. The application will still need to clip the spline to the node
    boundary. Also, as with the previous item, if the edge points to
    a node port, this technique will fail.

The output consists of one **graph** line, a sequence of
**node** lines, one per node, a sequence of
**edge** lines, one per edge, and a final **stop**
line. All units are in inches, represented by a floating point number.

Note that the plain formats provide minimal information, really giving not
much more than node positions and sizes, and edge spline control points.
These formats are usually most useful to applications wanting just this
geometric information, and willing to fill in all of the graphical details.
The only real advantages to these formats is their terseness and their
ease of parsing. In general, the [dot](#d:dot) and
[xdot](#d:xdot) are preferable in terms of the quantity of
information provided.
