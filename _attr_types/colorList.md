---
name: colorList
---
A colon-separated list of weighted color values: _WC_(:_WC_)\* where each
_WC_ has the form _C(;F)?_ with C a [color](#k:color) value and the optional
_F_ a floating-point number, 0 ≤ _F_ ≤ 1\. The sum of the floating-point
numbers in a `colorList` must sum to at most 1.

**NOTE:** Gradient fills, described below, are currently only available via
*CAIRO or SVG rendering.

If the colorList value specifies multiple colors, with no weights, and a
filled style is specified, a linear gradient fill is done using the first two
colors. If weights are present, a degenerate linear gradient fill is done.
This essentially does a fill using two colors, with the weights specifying
how much of region is filled with each color. If the [`style`](#d:style)
attribute contains the value radial, then a radial gradient fill is done.
These fills work with any shape.

For certain shapes, the [`style`](#d:style) attribute can be set to do fills
using more than 2 colors. See the [`style`](#d:style) type for more
information.

The following table shows some variations of the `yellow:blue` color list
depending on the [`style`](#d:style) and [`gradientangle`](#d:gradientangle)
attributes.

<TABLE border=1>
  <TR>
    <TH>Gradient angle</TH>
    <TH><code>style=filled</code></TH>
    <TH><code>style=filled<br>fillcolor=yellow;0.3:blue</code></TH>
    <TH><code>style=radial</code></TH>
  </TR>
  <TR>
    <TD STYLE="text-align: center;">0</TD>
    <TD><IMG SRC="g_lin0.png"></TD>
    <TD STYLE="text-align: center;"><IMG SRC="g_wlin0.png"></TD>
    <TD><IMG SRC="g_rad0.png"></TD>
  </TR>
  <TR>
    <TD STYLE="text-align: center;">45</TD>
    <TD><IMG SRC="g_lin45.png"></TD>
    <TD STYLE="text-align: center;"><IMG SRC="g_wlin45.png"></TD>
    <TD><IMG SRC="g_rad45.png"></TD>
  </TR>
  <TR>
    <TD STYLE="text-align: center;">90</TD>
    <TD><IMG SRC="g_lin90.png"></TD>
    <TD STYLE="text-align: center;"><IMG SRC="g_wlin90.png"></TD>
    <TD><IMG SRC="g_rad90.png"></TD>
  </TR>
  <TR>
    <TD STYLE="text-align: center;">180</TD>
    <TD><IMG SRC="g_lin180.png"></TD>
    <TD STYLE="text-align: center;"><IMG SRC="g_wlin180.png"></TD>
    <TD><IMG SRC="g_rad180.png"></TD>
  </TR>
  <TR>
    <TD STYLE="text-align: center;">270</TD>
    <TD><IMG SRC="g_lin270.png"></TD>
    <TD STYLE="text-align: center;"><IMG SRC="g_wlin270.png"></TD>
    <TD><IMG SRC="g_rad270.png"></TD>
  </TR>
  <TR>
    <TD STYLE="text-align: center;">360</TD>
    <TD><IMG SRC="g_lin360.png"></TD>
    <TD STYLE="text-align: center;"><IMG SRC="g_wlin360.png"></TD>
    <TD><IMG SRC="g_rad360.png"></TD>
  </TR>
</TABLE>
