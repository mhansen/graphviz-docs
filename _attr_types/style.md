---
name: style
---
`styleItem ( ',' styleItem )*`

<TABLE>
<TR>
  <TD style="text-align: right;">where styleItem</TD>
  <TD>=</TD>
  <TD>name or name'('args')'</TD>
</TR>
<TR>
  <TD style="text-align: right">and args</TD>
  <TD>=</TD>
  <TD>name ( ',' name )*</TD>
</TR>
</TABLE>

and name can be any string of characters not containing a space, a left or
right parenthesis, or a comma. Whitespace characters are ignored.

**NOTE:** _The styles `tapered, striped` and `wedged` are only available in release 2.30 and later._

The recognized style names are,

For nodes and edges:

* `"dashed"`
* `"dotted"`
* `"solid"`
* `"invis"`
* `"bold"`

For edges only:

* `"tapered"`

For nodes only:

* `"filled"`
* `"striped"`
* `"wedged"`
* `"diagonals"`
* `"rounded"`

For clusters:

* `"filled"`
* `"striped"`
* `"rounded"`

The style `"radial"` is recognized for nodes, clusters and graphs, and indicates a
radial-style gradient fill if applicable.

The style `"striped"` causes the fill to be done as a set of vertical stripes.
The colors are specified via a [`colorList`](#k:colorList), the colors drawn
from left to right in list order. Optional color weights can be specified to
indicate the proportional widths of the bars. If the sum of the weights is
less than 1, the remainder is divided evenly among the colors with no weight.
**Note**: The style `"striped"` is only supported with clusters and
rectangularly-shaped nodes.

The style `"wedged"` causes the fill to be done as a set of wedges. The colors
are specified via a [`colorList`](#k:colorList), with the colors drawn
counter-clockwise starting at angle 0. Optional color weights are interpreted
analogously to the striped case described above. **Note**: The style `"wedged"`
is allowed only for elliptically-shaped nodes.

The following tables illustrate some of the effects of the style settings.
Examples of tapered line styles are given below. Examples of linear and
radial gradient fill can be seen under [`colorList`](#k:colorList).

<TABLE border=1>
  <CAPTION>Basic style settings for nodes</CAPTION>
  <TR>
    <TD style="text-align: center;"><code>solid</code></TD>
    <TD><IMG SRC="n_solid.png"></TD>
    <TD style="text-align: center;"><code>dashed</code></TD>
    <TD><IMG SRC="n_dashed.png"></TD>
    <TD style="text-align: center;"><code>dotted</code></TD>
    <TD><IMG SRC="n_dotted.png"></TD>
  </TR>
  <TR>
    <TD style="text-align: center;"><code>bold</code> </TD>
    <TD><IMG SRC="n_bold.png"></TD>
    <TD style="text-align: center;"><code>rounded</code> </TD>
    <TD><IMG SRC="n_rounded.png"></TD>
    <TD style="text-align: center;"><code>diagonals</code> </TD>
    <TD><IMG SRC="n_diagonals.png"></TD>
  </TR>
  <TR>
    <TD style="text-align: center;"><code>filled</code> </TD>
    <TD><IMG SRC="n_filled.png"></TD>
    <TD style="text-align: center;"><code>striped</code> </TD>
    <TD><IMG SRC="n_striped.png"></TD>
    <TD style="text-align: center;"><code>wedged</code> </TD>
    <TD><IMG SRC="n_wedged.png"></TD>
  </TR>
</TABLE>

<TABLE border=1>
  <CAPTION>Basic style settings for edges</CAPTION>
  <TR>
    <TD style="text-align: center;"><code>solid</code> </TD>
    <TD><IMG SRC="e_solid.png"> </TD>
    <TD style="text-align: center;"><code>dashed</code> </TD>
    <TD><IMG SRC="e_dashed.png"></TD>
  </TR>
  <TR>
    <TD style="text-align: center;"><code>dotted</code></TD>
    <TD><IMG SRC="e_dotted.png"></TD>
    <TD style="text-align: center;"><code>bold</code> </TD>
    <TD><IMG SRC="e_bold.png"></TD>
  </TR>
</TABLE>

<TABLE border=1>
  <CAPTION>Basic style settings for clusters</CAPTION>
  <TR>
    <TD style="text-align: center;"><code>solid</code> </TD>
    <TD><IMG SRC="c_solid.png"> </TD>
    <TD style="text-align: center;"><code>dashed</code> </TD>
    <TD><IMG SRC="c_dashed.png"></TD>
    <TD style="text-align: center;"><code>dotted</code> </TD>
    <TD><IMG SRC="c_dotted.png"></TD>
    <TD style="text-align: center;"><code>bold</code> </TD>
    <TD><IMG SRC="c_bold.png"></TD>
  </TR>
  <TR>
    <TD style="text-align: center;"><code>rounded</code> </TD>
    <TD><IMG SRC="c_rounded.png"></TD>
    <TD style="text-align: center;"><code>filled</code> </TD>
    <TD><IMG SRC="c_filled.png"></TD>
    <TD style="text-align: center;"><code>striped</code> </TD>
    <TD><IMG SRC="c_striped.png"></TD>
  </TR>
</TABLE>

The effect of `style=tapered` depends on the [`penwidth`](#d:penwidth),
[`dir`](#d:dir), [`arrowhead`](#d:arrowhead) and [`arrowtail`](#d:arrowtail)
attributes. The edge starts with width `penwidth` and tapers to width 1, in
points. The `dir` attribute determines whether the tapering goes from tail to
head (`dir=forward`), from head to tail (`dir=forward`), from the middle to
both the head and tail (`dir=both`), or no tapering at all (`dir=none`). If
the `dir` is not explicitly set, the default for the graph type is used (see
[`dir`](#a:dir)). Arrowheads and arrowtails are also drawn, based on the value
of `dir`; to avoid this, set `arrowhead` and/or `arrowtail` to `"none"`.

**Note:** At present, the tapered style only allows a simple filled polygon.
Additional styles such as `dotted` or `dashed`, or multiple colors supplied
via a [colorList](#k:colorList) are ignored.

The following table illustrates the `style=tapered` with `penwidth=7` and `arrowtail=none`.

<TABLE border=1>
  <TR>
    <TD><code>dir</code> \ <code>arrowhead</code></TD>
    <TD style="text-align: center;"><code>normal</code></TD>
    <TD style="text-align: center;"><code>none</code></TD>
  </TR>
  <TR>
    <TD style="text-align: center;"><code>forward</code></TD>
    <TD><IMG SRC="normal_forward.png"></TD>
    <TD><IMG SRC="none_forward.png"></TD>
  </TR>
  <TR>
    <TD style="text-align: center;"><code>back</code></TD>
    <TD><IMG SRC="normal_back.png"></TD>
    <TD><IMG SRC="none_back.png"></TD>
  </TR>
  <TR>
    <TD style="text-align: center;"><code>both</code></TD>
    <TD><IMG SRC="normal_both.png"></TD>
    <TD><IMG SRC="none_both.png"></TD>
  </TR>
  <TR>
    <TD style="text-align: center;"><code>none</code></TD>
    <TD><IMG SRC="normal_none.png"></TD>
    <TD><IMG SRC="none_none.png"></TD>
  </TR>
</TABLE>

Additional styles are available in
device-dependent form. Style lists are passed to device drivers, which
can use this to generate appropriate output.

The style attribute affects the basic appearance of nodes, edges and graphs,
but has no effect on any text used in labels. For this, use the
[`fontname`](#d:fontname), [`fontsize`](#d:fontsize) and
[`fontcolor`](#d:fontcolor) attributes, or the `<FONT>`, `<B>`, `<I>`, etc.
elements in [HTML-like labels](shapes.html#html).

The `setlinewidth` style value can be used for more control over the width of
node borders and edges than is allowed by `bold`. This style value takes an
argument, specifying the width of the line in [points](#points). For example,
`style="bold"` is equivalent to `style="setlinewidth(2)"`. **The use of
`setlinewidth` is deprecated; one should use the [`penwidth`](#d:penwidth)
attribute instead.**
