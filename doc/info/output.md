---
layout: page
title: Output Formats
---
<style>
.jsontable {
    border: 1px solid black;
    background-color: beige;
}
</style>

The output format is specified with the **-T**_lang_
flag on the [command line](command.html), where _lang_
is one of the parameters listed below.

The formats actually available in a given Graphviz system depend on
how the system was built and the presence of additional libraries.
To see what formats **dot** supports, run `dot -T?`.
See the [description of the -T](command.html#d:T)
flag for additional information.

Note that the internal coordinate system has the origin
in the lower left corner.
Thus, positions in the
[canon](#d:canon),
[dot](#d:dot),
[xdot](#d:xdot),
[plain](#d:plain), and
[plain-ext](#d:plain-ext)
formats need to be interpreted in this manner.

<TABLE ALIGN="CENTER">
<TR>
  <TH>Command-line<BR>parameter</TH>
  <TH>Format</TH>
</TR>
{%- assign sorted_formats = site.formats | sort_natural: "params" -%}
{% for f in sorted_formats %}
<TR>
  <TD ALIGN="CENTER">
  {%- for p in f.params -%}
    <A NAME="a:{{p}}" HREF="#d:{{p}}">{{p}}</A>
    {%- unless forloop.last %}
      <BR>
    {%- endunless %}
  {%- endfor %}
  </TD>
  <TD>{{ f.name }}</TD>
</TR>
{%- endfor %}
</TABLE>

---

## Format Descriptions

<DL>
{% for f in sorted_formats -%}
  {%- for p in f.params -%}
    <DT>
      <A NAME="d:{{p}}" HREF="#a:{{p}}"><STRONG>{{p}}</STRONG></A>
      {%- unless forloop.last -%},{%- endunless -%}
    </DT>
  {%- endfor -%}
  <DD>
  {{- f.content }}
  </DD>
{% endfor %}
</DL>

* * *

## Image Formats {#d:image_fmts}

The [image](attrs.html#a:image) and [shapefile](attrs.html#a:shapefile) attributes specify an image file to be included
as part of the final diagram. Not all image formats can be read. In addition,
even if read, not all image formats can necessarily be used in a given
output format.

The graph below shows what image formats can be used in which output formats,
and the required plugins. On the left are the supported image formats. 
On the right are the supported output formats.
In the middle are the plugins: image loaders, renderers, drivers, arranged by 
plugin library.
This presents the most general case. A given installation may not provide
one of the plugins, in which case, that transformation is not possible.

<IMG style="width: 100%;" SRC="plugins.png">

---

## Notes

1.  In the formats: `-Tcmap`, `-Tcmapx`, `-Tsvg`, `-Tvml`, the output generates
    `id="node#"` properties for nodes, `id="edge#"` properties for edges, and `id="cluster#"` properties for clusters, with the `#` replaced by an internally assigned integer. These strings can be provided instead by an externally provided `id=xxx` attribute on the object.
    Normal `\N` `\E` `\G` substitutions are applied.
    Externally provided id values are not used internally, and it is the use's reponsibilty to ensure
    that they are sufficiently unique for their intended downstream use.
    Note, in particular, that `\E` is not a unique id for multiedges.
