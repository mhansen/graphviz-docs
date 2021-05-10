---
name: color
---
Colors can be specified using one of four formats:

<TABLE>
  <TR>
    <TD><CODE>"#%2x%2x%2x"</CODE></TD>
    <TD>Red-Green-Blue (RGB)</TD>
  </TR>
  <TR>
    <TD><CODE>"#%2x%2x%2x%2x"</CODE></TD>
    <TD>Red-Green-Blue-Alpha (RGBA)</TD>
  </TR>
  <TR>
    <TD><CODE>"H[,&#160;]+S[,&#160;]+V"</CODE></TD>
    <TD>Hue-Saturation-Value (HSV) 0.0 &lt;= H,S,V &lt;= 1.0</TD>
  </TR>
  <TR>
    <TD>string</TD>
    <TD><A HREF="colors.html">color name</A></TD>
  </TR>
</TABLE>

The specification for the RGB and RGBA formats are the format strings used by
`sscanf` to scan the color value. Thus, these values have the form "#RGB" or
"#RGBA", where R, G, B, and A each consist of 2 hexadecimal digits, and can
be separated by whitespace. HSV colors have the form of 3 numbers between 0
and 1, separated by whitespace or commas.

String-valued color specifications are case-insensitive and interpreted in
the context of the current color scheme, as specified by the
[colorscheme](#d:colorscheme) attribute. If this is undefined, the X11 naming
scheme will be used. An initial `"/"` character can be used to override the
use of the `colorscheme` attribute. In particular, a single initial `"/"`
will cause the string to be evaluated using the default X11 naming. If the
color value has the form `"/ssss/yyyy"`, the name `yyyy` is interpreted using
the schema `ssss`. If the color scheme name is empty, i.e., the color has the
form `"//yyyy"`, the `colorscheme` attribute is used. Thus, the forms
`"yyyy"` and `"//yyyy"` are equivalent.

At present, Graphviz recognizes the default color scheme `X11`, and the
[Brewer color schemes](colors.html#brewer) (cf.
[ColorBrewer](http://www.personal.psu.edu/faculty/c/a/cab38/ColorBrewer/ColorBrewer_intro.html)).
Please note that Brewer color schemes are covered by this
[license](colors.html#brewer_license).

Examples:

<TABLE>
  <TR>
    <TH>Color</TH>
    <TH>RGB</TH>
    <TH>HSV</TH>
    <TH>String</TH>
  </TR>
  <TR>
    <TD style="background-color: #ffffff; text-align: center;">White</TD>
    <TD>"#ffffff"</TD>
    <TD>"0.000 0.000 1.000"</TD>
    <TD>"white"</TD>
  </TR>
  <TR>
    <TD style="background-color: #000000; color: white; text-align: center;">Black</TD>
    <TD>"#000000"</TD>
    <TD>"0.000 0.000 0.000"</TD>
    <TD>"black"</TD>
  </TR>
  <TR>
    <TD style="background-color: #ff0000; text-align: center;">Red</TD>
    <TD>"#ff0000"</TD>
    <TD>"0.000 1.000 1.000"</TD>
    <TD>"red"</TD>
  </TR>
  <TR>
    <TD style="background-color: #40e0d0; text-align: center;">Turquoise</TD>
    <TD>"#40e0d0"</TD>
    <TD>"0.482 0.714 0.878"</TD>
    <TD>"turquoise"</TD>
  </TR>
  <TR>
    <TD style="background-color: #a0522d; text-align: center;">Sienna</TD>
    <TD>"#a0522d"</TD>
    <TD>"0.051 0.718 0.627"</TD>
    <TD>"sienna"</TD>
  </TR>
</TABLE>

The string value `transparent` can be used to indicate no color. This is only
available in the output formats ps, svg, fig, vmrl, and the bitmap formats.
It can be used whenever a color is needed but is most useful with the
[`bgcolor`](#d:bgcolor) attribute. Usually, the same effect can be achieved by
setting [`style`](#d:style) to `invis`.
