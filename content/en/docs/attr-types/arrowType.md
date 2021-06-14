---
title: arrowType
---
<TABLE>
  <TR>
    <TD>"normal"</TD>
    <TD><IMG SRC="/doc/info/a_normal.gif"></TD>
    <TD>"inv"</TD>
    <TD><IMG SRC="/doc/info/a_inv.gif"></TD>
  </TR>
  <TR>
    <TD>"dot"</TD>
    <TD><IMG SRC="/doc/info/a_dot.gif"></TD>
    <TD>"invdot"</TD>
    <TD><IMG SRC="/doc/info/a_invdot.gif"></TD>
  </TR>
  <TR>
    <TD>"odot"</TD>
    <TD><IMG SRC="/doc/info/a_odot.gif"></TD>
    <TD>"invodot"</TD>
    <TD><IMG SRC="/doc/info/a_invodot.gif"></TD>
  </TR>
  <TR>
    <TD>"none"</TD>
    <TD><IMG SRC="/doc/info/a_none.gif"></TD>
    <TD>"tee"</TD>
    <TD><IMG SRC="/doc/info/a_tee.gif"></TD>
  </TR>
  <TR>
    <TD>"empty"</TD>
    <TD><IMG SRC="/doc/info/a_empty.gif"></TD>
    <TD>"invempty"</TD>
    <TD><IMG SRC="/doc/info/a_invempty.gif"></TD>
  </TR>
  <TR>
    <TD>"diamond"</TD>
    <TD><IMG SRC="/doc/info/a_diamond.gif"></TD>
    <TD>"odiamond"</TD>
    <TD><IMG SRC="/doc/info/a_odiamond.gif"></TD>
  </TR>
  <TR>
    <TD>"ediamond"</TD>
    <TD><IMG SRC="/doc/info/a_ediamond.gif"></TD>
    <TD>"crow"</TD>
    <TD><IMG SRC="/doc/info/a_crow.gif"></TD>
  </TR>
  <TR>
    <TD>"box"</TD>
    <TD><IMG SRC="/doc/info/a_box.gif"></TD>
    <TD>"obox"</TD>
    <TD><IMG SRC="/doc/info/a_obox.gif"></TD>
  </TR>
  <TR>
    <TD>"open"</TD>
    <TD><IMG SRC="/doc/info/a_open.gif"></TD>
    <TD>"halfopen"</TD>
    <TD><IMG SRC="/doc/info/a_halfopen.gif"></TD>
  </TR>
  <TR>
    <TD>"vee"</TD>
    <TD><IMG SRC="/doc/info/a_open.gif"></TD>
  </TR>
</TABLE>

The examples above show a set of commonly used arrow shapes.
There is a grammar of [arrow shapes]({{< ref "../arrows.md" >}})
which can be used to describe a collection of 3,111,696 arrow combinations of the 
42 variations of the primitive set of 11 arrows.

The basic arrows shown
above contain:

* most of the primitive shapes (`box`, `crow`, `diamond`, `dot`, `inv`, `none`, `normal`, `tee`, `vee`)
* shapes that can be derived from the grammar (`odot`, `invdot`, `invodot`, `obox`, `odiamond`)
* shapes supported as special cases for backward-compatibility (`ediamond`, `open`, `halfopen`, `empty`, `invempty`).
