---
title: shape
---
A string specifying the [shape]({{< ref "../shapes.md" >}}) of a node. There are three main
types of shapes:

* [polygon-based]({{< ref "../shapes.md#polygon" >}}),
* [record-based]({{< ref "../shapes.md#record" >}}) and
* [user-defined]({{< ref "../shapes.md#epsf" >}}).

The record-based shape has largely been superseded and greatly generalized by
[HTML-like labels]({{< ref "../shapes.md#html" >}}). That is, instead of using `shape=record`,
consider using `shape=none` and an HTML-like label.
