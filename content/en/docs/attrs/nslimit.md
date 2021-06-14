---
defaults: []
flags:
- dot
minimums: []
title: nslimit
types:
- double
used_by: G
---
Sets number of iterations in network simplex applications.

`nslimit` is used in computing `node x coordinates`.

If defined, `# iterations = nslimit * # nodes`; otherwise, `# iterations = MAXINT`.
