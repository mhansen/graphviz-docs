---
title: arrowType
---
<TABLE>
  <TR>
    <TD><code>normal</code></TD>
    <TD><IMG SRC="/doc/info/a_normal.gif"></TD>
    <TD><code>inv</code></TD>
    <TD><IMG SRC="/doc/info/a_inv.gif"></TD>
  </TR>
  <TR>
    <TD><code>dot</code></TD>
    <TD><IMG SRC="/doc/info/a_dot.gif"></TD>
    <TD><code>invdot</code></TD>
    <TD><IMG SRC="/doc/info/a_invdot.gif"></TD>
  </TR>
  <TR>
    <TD><code>odot</code></TD>
    <TD><IMG SRC="/doc/info/a_odot.gif"></TD>
    <TD><code>invodot</code></TD>
    <TD><IMG SRC="/doc/info/a_invodot.gif"></TD>
  </TR>
  <TR>
    <TD><code>none</code></TD>
    <TD><IMG SRC="/doc/info/a_none.gif"></TD>
    <TD><code>tee</code></TD>
    <TD><IMG SRC="/doc/info/a_tee.gif"></TD>
  </TR>
  <TR>
    <TD><code>empty</code></TD>
    <TD><IMG SRC="/doc/info/a_empty.gif"></TD>
    <TD><code>invempty</code></TD>
    <TD><IMG SRC="/doc/info/a_invempty.gif"></TD>
  </TR>
  <TR>
    <TD><code>diamond</code></TD>
    <TD><IMG SRC="/doc/info/a_diamond.gif"></TD>
    <TD><code>odiamond</code></TD>
    <TD><IMG SRC="/doc/info/a_odiamond.gif"></TD>
  </TR>
  <TR>
    <TD><code>ediamond</code></TD>
    <TD><IMG SRC="/doc/info/a_ediamond.gif"></TD>
    <TD><code>crow</code></TD>
    <TD><IMG SRC="/doc/info/a_crow.gif"></TD>
  </TR>
  <TR>
    <TD><code>box</code></TD>
    <TD><IMG SRC="/doc/info/a_box.gif"></TD>
    <TD><code>obox</code></TD>
    <TD><IMG SRC="/doc/info/a_obox.gif"></TD>
  </TR>
  <TR>
    <TD><code>open</code></TD>
    <TD><IMG SRC="/doc/info/a_open.gif"></TD>
    <TD><code>halfopen</code></TD>
    <TD><IMG SRC="/doc/info/a_halfopen.gif"></TD>
  </TR>
  <TR>
    <TD><code>vee</code></TD>
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
