---
title: dirType
---
For an edge `T -> H;`

`"forward"`

<IMG SRC="/doc/info/forward.gif">

`"back"`

<IMG SRC="/doc/info/back.gif">

`"both"`

<IMG SRC="/doc/info/both.gif">

`"none"`

<IMG SRC="/doc/info/nohead.gif">

That is, a glyph is drawn at the head end of an edge if and only
if dirType is `"forward"` or `"both"`;
a glyph is drawn at the tail end of an edge if and only
if dirType is `"back"` or `"both"`;

For undirected edges `T -- H;`, one of the nodes, usually
the righthand one, is treated as the head for the purpose of
interpreting `"forward"` and `"back"`.
