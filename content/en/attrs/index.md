---
headless: true
---
# Graphviz attributes

`used_by` is a string consisting of `G`,`C`,`N`,`E`, indicating that the attribute
  applies to graphs, clusters, nodes and edges, respectively.

`types` is a list: Types can be `int`, `bool`, `string`, `double`, or a
special type. We assume there is an entry for the type in the `_attr_types/`
collection.

`defaults` is a list: gives a description of the default values of the
attribute.

`minimums` is a list: gives a description of the minimum values of the
attribute. It can contain arbitrary text.

`flags`, if present, is a list of:
  
- `bitmap` `cmap` `map` `postscript` `svg` - attribute limited to specified output formats
- `dot` `neato` `twopi` `circo` `fdp` `sfdp` - attribute limited to specified layouts
- `notdot` - attribute use in all layouts but dot
- `write` - attribute is write-only

In the summary table, attributes are anchored with `#a:<name>`.
In the description list, attributes are anchored with `#d:<name>`.
The attributes are alphabetized on output.
