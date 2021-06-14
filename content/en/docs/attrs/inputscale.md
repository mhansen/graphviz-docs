---
defaults:
- <none>
flags:
- neato
- fdp
minimums: []
title: inputscale
types:
- double
used_by: G
---
For layout algorithms that support initial input positions (specified by the [`pos`]({{< ref "pos.md" >}}) attribute),
this attribute can be used to appropriately scale the values.

By default, `fdp` and `neato` interpret
the x and y values of pos as being in inches. (**NOTE:** `neato -n(2)` treats the coordinates as
being in points, being the unit used by the layout algorithms for the pos attribute.) Thus, if
the graph has pos attributes in points, one should set `inputscale=72`.
This can also be set on the command line using the [`-s` flag]({{< ref "../command.md#-s" >}}).

If unset, no scaling is done and the units on input are treated as inches.

`inputscale=0` is equivalent to `inputscale=72`.
