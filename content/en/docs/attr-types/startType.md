---
title: startType
---
has the syntax `(style)?(seed)?`.

If _style_ is present, it must be one of the strings `"regular"`, `"self"`,
or `"random"`. In the first case, the nodes are placed regularly about a
circle. In the second case, an abbreviated version of neato is run to obtain
the initial layout. In the last case, the nodes are placed randomly in a unit
square.

If _seed_ is present, it specifies a seed for the random number generator. If
_seed_ is a positive number, this is used as the seed. If it is anything
else, the current time, and possibly the process id, is used to pick a seed,
thereby making the choice more random. In this case, the seed value is stored
in the graph.

If the value is just `"random"`, a time-based seed is chosen.

Note that input positions, specified by a node's [pos](#d:pos) attribute, are
only used when the style is `"random"`.
