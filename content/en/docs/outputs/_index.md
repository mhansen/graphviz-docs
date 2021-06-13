---
title: Output Formats
aliases:
  - /doc/info/output.html
stylesheet: output.css
weight: 3
cascade:
  type: output
---
The output format is specified with the <code>**-T**_lang_</code>
flag on the [command line](command.html), where _lang_
is one of the parameters listed above.

The formats actually available in a given Graphviz system depend on
how the system was built and the presence of additional libraries.
To see what formats **dot** supports, run `dot -T?`.
See the [description of the `-T`](command.html#-T)
flag for additional information.

Note that the internal coordinate system has the origin
in the lower left corner.
Thus, positions in the
[canon](/docs/outputs/canon/),
[dot](/docs/outputs/canon/),
[xdot](/docs/outputs/canon/),
[plain](/docs/outputs/plain/), and
[plain-ext](/docs/outputs/plain/)
formats need to be interpreted in this manner.

* * *

## Image Formats

The [`image`](attrs.html#a:image) and [`shapefile`](attrs.html#a:shapefile) attributes specify an image file to be included
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

<IMG style="width: 100%;" SRC="/doc/info/plugins.png">

---

## ID Output Note {#ID}

In the formats: `-Tcmap`, `-Tcmapx`, `-Tsvg`, `-Tvml`, the output generates
`id="node#"` properties for nodes, `id="edge#"` properties for edges, and `id="cluster#"` properties for clusters, with the `#` replaced by an internally assigned integer. These strings can be provided instead by an externally provided `id=xxx` attribute on the object.
Normal `\N` `\E` `\G` substitutions are applied.
Externally provided id values are not used internally, and it is the user's reponsibilty to ensure
that they are sufficiently unique for their intended downstream use.
Note, in particular, that `\E` is not a unique id for multiedges.
