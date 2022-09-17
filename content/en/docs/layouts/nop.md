---
title: nop
description: Pretty-print DOT graph file. Equivalent to `nop1`.
---
Prints input graphs in pretty-printed (canonical) form.

- [PDF Manual](/pdf/nop.1.pdf)
- [Browse code](https://gitlab.com/graphviz/graphviz/-/blob/main/cmd/tools/nop.c)

Example, indenting the input:

```shell-session
$ echo 'digraph { a -> b; c->d; }' | nop
digraph {
        a -> b;
        c -> d;
}
```

`nop` also deduplicates node specifications:

```shell-session
$ echo 'digraph { a; a [label="A"]; a [color=blue]; }' | nop
digraph {
        a       [color=blue,
                label=A];
}
```

`nop -p` produces no input, just checks the input for valid DOT language.

For example, this valid graph produces no output:

```shell-session
$ echo 'digraph {}' | nop -p
```

But this syntax error (missing `}`) exits with status code `1` and prints error
message:

```shell-session
$ echo 'digraph {' | nop -p
Error: <stdin>: syntax error in line 2
```
