---
defaults:
- '128'
flags: []
minimums:
- '60'
title: linelength
types:
- int
used_by: G
description: How long strings should get before overflowing to next line, for text output.
---
Example, where an 80-character long string (`"a " * 40`) is broken up onto two
lines, when printed as [canonical output](/docs/outputs/canon/):

```
$ echo 'digraph G { linelength=60; N0 [label="a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a "]; }' | dot -Tcanon
digraph G {
        graph [linelength=60];
        node [label="\N"];
        N0      [label="a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a \
a a a a a a a a a a "];
}
```

The text overflows when the *label* reaches the given size.

Despite the `linelength` name, this is the length of the attribute string, *not* the length of the overall line (which includes the node ID and attribute key).
