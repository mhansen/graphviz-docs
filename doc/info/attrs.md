---
title: Node, Edge and Graph Attributes
layout: page
redirect_from:
  - /doc/info/attrs1.html
  - /doc/info/attrs2.html
---
The table below describes the attributes used by various Graphviz tools.
The table gives the name of the attribute, the graph components (node,
edge, etc.) which use the attribute and the type of the attribute
(strings representing legal values of that type). Where applicable, the table
also gives a default value for the attribute, a minimum allowed setting
for numeric attributes, and certain restrictions on the use of the attribute.

Note that attribute names are case-sensitive. 
This is usually true for attribute values as well, unless noted.

All Graphviz attributes are specified by name-value pairs. Thus, to
set the fillcolor of a node `abc`, one would use

```dot
abc [fillcolor = red]
```
Similarly, to set the arrowhead style of an edge `abc -> def`,
one would use:

```dot
abc -> def [arrowhead = diamond]
```

Further details concerning the setting of attributes can be found
in the description of the [DOT language.](lang.html)

At present, most device-independent units are either inches or
<A ID="points" HREF="http://en.wikipedia.org/wiki/Point_(typography)">points</A>,
which we take as 72 points per inch.

<P ID="h:undir_note"></P>

**Note:** Some attributes, such as
[`dir`](#d:dir) or [`arrowtail`](#d:arrowtail), are ambiguous when used in
[DOT](lang.html) with an undirected graph since the head and tail of an edge
are meaningless. As a convention, the first time an undirected edge appears,
the [DOT](lang.html)
parser will assign the left node as the tail node and the right node as
the head. For example, the edge `A -- B` will have tail `A`
and head `B`. It is the user's responsibility to handle such
edges consistently. If the edge appears later, in the format

```dot
B -- A [taillabel = "tail"]
```

the drawing will attach the tail label to node `A`.
To avoid possible confusion when such attributes are required, the user
is encouraged to use a directed graph.
If it is important to make the graph appear undirected, this can be
done using the [`dir`](#d:dir), [`arrowtail`](#d:arrowtail) or
[`arrowhead`](#d:arrowhead) attributes.
<P ID="k:bool"></P>
The tools accept standard C representations for `int` and
`double` types.
For the `bool` type, TRUE values are
represented by `true` or `yes` (case-insensitive)
and any non-zero integer, and FALSE values by `false` or `no` (case-insensitive)
and zero.
In addition, there are a variety of specialized types such as
`arrowType`, `color`,
`point` and `rankdir`. Legal values for these types are given
at the end.
<P ID="h:uses"></P>

In the **Used By** field, the
characters `E`, `N`, `G`, `S` and `C`
represent edges, nodes, the root graph, subgraphs
and cluster subgraphs, respectively.
This field indicates which graph component uses the attribute.

In the **Notes** field, an annotation of *write only*
indicates that the attribute is used for output, and is not used or read by any
of the layout programs.

---

<TABLE ALIGN=CENTER>
<TR>
  <TH>Name</TH>
  <TH><A HREF="#h:uses">Used By</A></TH>
  <TH>Type</TH>
  <TH STYLE="text-align: center;">Default</TH>
  <TH>Minimum</TH>
  <TH>Notes</TH>
</TR>
{% assign sorted_attrs = site.attrs | sort_natural: "name" %}
{%- for attr in sorted_attrs %}
<TR>
  <TD><A ID="a:{{ attr.name }}" HREF="#d:{{ attr.name }}">{{ attr.name }}</A></TD>
  <TD>{{ attr.used_by | xml_escape }}</TD>
  <TD>
  {%- for type in attr.types -%}
    {%- unless forloop.first -%}
    <BR>
    {%- endunless -%}
    <A HREF="#k:{{type}}">{{type}}</A>
  {%- endfor -%}
  </TD>
  <TD STYLE="text-align: center;">
  {%- for default in attr.defaults -%}
    {%- unless forloop.first -%}
    <BR>
    {%- endunless -%}
    {{ default | xml_escape }}
  {%- endfor -%}
  </TD>
  <TD>
  {%- for minimum in attr.minimums -%}
    {%- unless forloop.first -%}
    <BR>
    {%- endunless -%}
    {{- minimum | xml_escape -}}
  {%- endfor -%}
  </TD>
  <TD>
  {%- if attr.flags.size == 0 -%}
  {%- elsif attr.flags[0] == 'notdot' -%}
    not dot
  {%- else -%}
    {%- for flag in attr.flags reversed -%}
      {{ flag }}
      {%- unless forloop.last %}, {% endunless -%}
    {%- endfor %} only
  {%- endif -%}
  </TD>
</TR>
{%- endfor %}
</TABLE>

---

## Attribute Descriptions

<DL>
{%- for attr in sorted_attrs %}
<DT>
  <A ID="d:{{attr.name}}" HREF="#a:{{attr.name}}"><STRONG>{{ attr.name }}</STRONG></A> :
  <I>
  {%- for t in attr.types -%}
  <A HREF="#k:{{t}}">{{t}}</A>
  {%- unless forloop.last %}|{% endunless -%}
  {% endfor -%}
  {%- for d in attr.defaults %}
    {%- if forloop.first %}, default: {% endif %}
    {{ d | xml_escape }}
    {%- unless forloop.last %}, {% endunless -%}
  {%- endfor -%}
  {%- for minimum in attr.minimums -%}
    {%- if forloop.first %}, minimum: {% endif %}
    {{- minimum | xml_escape -}}
    {%- unless forloop.last %}, {% endunless -%}
  {%- endfor -%}
  </I>
</DT>
<DD>
  {{- attr.content -}}

<P>
<I>Valid for:
{% assign used_by_characters = attr.used_by | split: "" | sort_natural %}
{%- for c in used_by_characters %}
  {%- if c contains 'N' %} Nodes{% endif -%}
  {%- if c contains 'E' %} Edges{% endif -%}
  {%- if c contains 'G' %} Graphs{% endif -%}
  {%- if c contains 'C' %} Clusters{% endif -%}
  {%- if c contains 'S' %} Subgraphs{% endif -%}
  {% unless forloop.last %},{% endunless -%}
{% endfor %}.</I>
<I>
{%- if attr.flags.size > 0 -%}
  Note:
  {% if attr.flags[0] == 'notdot' -%}
    not dot
  {% else -%}
    {% for flag in attr.flags reversed -%}
      {{ flag }}
      {%- unless forloop.last %}, {% endunless -%}
    {%- endfor %} only
  {%- endif -%}
{%- endif -%}
</I>
</P>
</DD>
{% endfor %}
</DL>

---

## Attribute Type Descriptions

The following list gives the legal strings corresponding to values of
the given types.
The syntax for describing legal type strings is a mixture of literal strings,
stdio encodings (e.g., `%f` for a double), and regular expressions.
For regular expressions, `(...)*` indicates 0 or more copies of the expression
enclosed in the parentheses,  `(...)+` indicates 1 or more, and
`(...)?` denotes 0 or 1 copy.

{% assign sorted_attr_types = site.attr_types | sort_natural: "name" %}
{% for t in sorted_attr_types -%}
<H3 ID="k:{{t.name}}"><A HREF="#k:{{t.name}}">{{t.name}}</A></H3>
{{t.content}}
<I>Attributes:
{% assign attrs_for_type = sorted_attrs | where_exp: "attr", "attr.types contains t.name" %}
{%- for attr in attrs_for_type -%}
  <A HREF="#d:{{ attr.name }}"><CODE>{{ attr.name }}</CODE></A>
  {%- unless forloop.last %}, {% endunless -%}
{% endfor -%}
</I>
{% endfor %}

