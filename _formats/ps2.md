---
name: PostScript for PDF
params:
- ps2
---
Produces PostScript output with PDF notations.

It is assumed the output
will be directly converted into PDF format. The notations include PDF
bounding box information, so that the resulting PDF file can be correctly
used with pdf tools, such as **pdflatex**.
In addition, if a node has a URL
attribute, this gets translated into PDF code such that the node,
when viewed in a PDF-viewer, e.g.,
**acroread**,
is a link to the given URL. If a URL is attached to the graph, this serves
as a base, such that relative URLs on nodes are derived from it.
