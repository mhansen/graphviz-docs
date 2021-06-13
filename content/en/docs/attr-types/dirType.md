---
title: dirType
---
For an edge `T -> H;`

`"forward"`

<IMG SRC="forward.gif">

`"back"`

<IMG SRC="back.gif">

`"both"`

<IMG SRC="both.gif">

`"none"`

<IMG SRC="nohead.gif">

That is, a glyph is drawn at the head end of an edge if and only
if dirType is `"forward"` or `"both"`;
a glyph is drawn at the tail end of an edge if and only
if dirType is `"back"` or `"both"`;

For undirected edges `T -- H;`, one of the nodes, usually
the righthand one, is treated as the head for the purpose of
interpreting `"forward"` and `"back"`.
