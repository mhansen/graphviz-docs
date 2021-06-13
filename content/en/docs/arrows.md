---
title: Arrow Shapes
url: /doc/info/arrows.html
weight: 6
---
Arrow shapes can be specified and named using the following simple
grammar. 
Terminals are shown in bold font and nonterminals in italics.
Literal characters are given in single quotes.
Square brackets [ and ] enclose optional items.
Vertical bars | separate alternatives.

## Grammar

<TABLE>
{{< arrow_grammar >}}
</TABLE>

## Primitive Shapes

| Shape | Image |
| ---- | ----- |
|`box`|<IMG SRC="a_box.gif">|
|`crow`|<IMG SRC="a_crow.gif">|
|`curve`|<IMG SRC="a_curve.gif">|
|`diamond`|<IMG SRC="a_diamond.gif">|
|`dot`|<IMG SRC="a_dot.gif">|
|`icurve`|<IMG SRC="a_icurve.gif">|
|`inv`|<IMG SRC="a_inv.gif">|
|`none`|<IMG SRC="a_none.gif">|
|`normal`|<IMG SRC="a_normal.gif">|
|`tee`|<IMG SRC="a_tee.gif">|
|`vee`|<IMG SRC="a_open.gif">|

## Shape Modifiers

As for the modifiers:

`'l'`
: Clip the shape, leaving only the part to the left of the edge.

`'r'`
: Clip the shape, leaving only the part to the right of the edge.

`'o'`
: Use an open (non-filled) version of the shape.

Left and right are defined as those directions determined by looking
from the edge towards the point where the arrow "touches" the node.

As an example, the arrow shape `lteeoldiamond` is parsed as
`'l' 'tee' 'o' 'l' 'diamond'` and corresponds to the shape:

<IMG SRC="a_lteeoldiamond.gif">

Note that the first arrow shape specified occurs closest to the node.
Subsequent arrow shapes, if specified, occur further from the node.
Also, a shape of `none` uses space, so, for example, the arrowhead `nonenormal`
is not the same as `normal`.

Not all syntactically legal combinations of modifiers are meaningful
or semantically valid.
For example, none of the modifiers make any sense with `none`.
The following table indicates which modifiers are allowed with which shapes.

| Modifier  | `'l'/'r'` | `o` |
|-----------|-----------|-----|
| `box`     | ✅ | ✅ |
| `crow`    | ✅ |   |
| `curve`   | ✅ |   |
| `diamond` | ✅ | ✅ |
| `dot`     |   | ✅ |
| `icurve`  | ✅ |   |
| `inv`     | ✅ | ✅ |
| `none`    |   |   |
| `normal`  | ✅ | ✅ |
| `tee`     | ✅ |   |
| `vee`     | ✅ |   |

This yields 42 different arrow shapes. The optional second, third, fourth shapes
can independently be any of the 42, except the last cannot be `none` as
this would create a redundant shape.
Thus, there are 41 × 42³ + 41 × 42² + 41 × 42 + 42 = 3,111,696 different combinations.

The following display contains the 42 combinations possible with a single
arrow shape. The node attached to the arrow is not drawn but would appear
on the right side of the edge.

<TABLE>
{{< arrow_table >}}
</TABLE>
