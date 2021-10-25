---
defaults:
- '"Times-Roman"'
flags: []
minimums: []
title: fontname
types:
- string
used_by: ENGC
---
Font used for text. This very much depends on the output format and, for
non-bitmap output such as PostScript or SVG, the availability of the font
when the graph is displayed or printed. As such, it is best to rely on font
faces that are generally available, such as Times-Roman, Helvetica or
Courier.

How font names are resolved also depends on the underlying library that
handles font name resolution. If Graphviz was built using the [fontconfig
library](https://www.freedesktop.org/wiki/Software/fontconfig/), the
latter library will be used to search for the font. See the commands
`fc-list`, `fc-match` and the other fontconfig commands for how names are
resolved and which fonts are available. Other systems may provide their own
font package, such as Quartz for OS X.

Note that various font attributes, such as weight and slant, can be built
into the font name. Unfortunately, the syntax varies depending on which font
system is dominant. Thus, using `fontname="times bold italic"` will produce a
bold, slanted Times font using Pango, the usual main font library.
Alternatively, `fontname="times:italic"` will produce a slanted Times font from
fontconfig, while `fontname="times-bold"` will resolve to a bold Times using
Quartz. You will need to ascertain which package is used by your Graphviz
system and refer to the relevant documentation.

If Graphviz is not built with a high-level font library, fontname will be
considered the name of a Type 1 or True Type font file. If you specify
`fontname=schlbk`, the tool will look for a file named `schlbk.ttf` or `schlbk.pfa`
or `schlbk.pfb` in one of the directories specified by the
[`fontpath`]({{< ref "fontpath.md" >}}) attribute. The lookup does support various aliases
for the common fonts.

{{< dot_card >}}
digraph {
    label="Comic Sans MS"
    fontname="Comic Sans MS"
    subgraph cluster_a {
      label="Courier New"
      fontname="Courier New"
      Arial [fontname="Arial"];
      Arial -> Arial [label="Impact" fontname="Impact"]
    }
}
{{< /dot_card >}}
