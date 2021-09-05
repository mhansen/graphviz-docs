---
title: pprof CPU Profile
svg: pprof.svg
gv_file: pprof.gv.txt
img_src: pprof.png
url: /Gallery/directed/pprof.html
---
[pprof](https://github.com/google/pprof), a profiling tool, can output callgraphs in Graphviz format.

This is a CPU profile of the `gzip` program, limited to the top 20 stack frames, generated from a `pprof.profile` with:

```
$ go tool pprof --nodecount=20 --dot pprof.profile
```

This illustrates how to create a legend in Graphviz.

Node sizes, arrow sizes, and increasing redness all indicate the number of samples in that callstack.
