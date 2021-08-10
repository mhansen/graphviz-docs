---
defaults:
- '""'
flags: []
minimums: []
title: layout
types:
- string
used_by: G
---
Specifies the name of the [layout engine]({{< ref "/docs/layouts/_index.md" >}}) to
use, such as `dot` or `neato`.

Normally, graphs should be kept independent of a type of layout. In some
cases, however, it can be convenient to embed the type of layout desired
within the graph.

For example, a graph containing position information from a layout might want
to record what the associated layout engine was.

This attribute takes precedence over the [`-K` flag]({{< ref "../command.md#-K" >}}) or
the actual command name used.
