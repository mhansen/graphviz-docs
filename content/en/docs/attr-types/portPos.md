---
title: portPos
description: Port Position
---
modifier indicating where on a node an edge should be aimed. It has the form
`portname(:compass_point)?` or `compass_point`. If the first form is
used, the corresponding node must either have [record]({{< ref "../shapes.md#record" >}})
shape with one of its fields having the given `portname`, or have an
[HTML-like label]({{< ref "../shapes.md#html" >}}), one of whose components has a `PORT`
attribute set to `portname`.

If a compass point is used, it must have the form
`"n","ne","e","se","s","sw","w","nw","c","_"`. This modifies the edge
placement to aim for the corresponding compass point on the port or, in the
second form where no `portname` is supplied, on the node itself. The compass
point "c" specifies the center of the node or port. The compass point `"_"`
specifies that an appropriate side of the port adjacent to the exterior of
the node should be used, if such exists. Otherwise, the center is used. If no
compass point is used with a portname, the default value is `"_"`.

This attribute can be attached to an edge using the
[`headport`]({{< ref "../attrs/headport.md" >}}) and [`tailport`]({{< ref "../attrs/tailport.md" >}}) attributes, or as part of the
edge description as in

{{< dot_card >}}
digraph {
  node1:port1 -> node2:port5:nw;
}
{{< /dot_card>}}

Note that it is legal to have a portname the same as one of the compass
points. In this case, this reference will be resolved to the port. Thus, if
node `A` has a port `w`, then `headport=w` will refer to the port and not the
compass point. At present, in this case, there is no way to specify that the
compass point should be used.
