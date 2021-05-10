---
title: Bazel Build System
svg: bazel.svg
gv_file: bazel.gv.txt
img_src: bazel.png
url: /Gallery/directed/bazel.html
---
[Bazel](https://bazel.build/), an open-source build and test tool, can output graphviz dependency graphs.

This graph is generated querying the source of
[Abseil](https://github.com/abseil/abseil-cpp), a C++ library, for all the
ways Abseil's random number library depends on Abseil's string library. Using
`--output=graph` outputs a Graphviz graph.

```bash
bazel query --output=graph --notool_deps 'allpaths(//absl/random, //absl/strings)' | dot -Tsvg > /tmp/deps.svg
```

See the [Bazel query how-to](https://docs.bazel.build/versions/master/query-how-to.html) for details.
