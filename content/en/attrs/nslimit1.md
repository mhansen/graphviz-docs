---
defaults: []
flags:
- dot
minimums: []
name: nslimit1
types:
- double
used_by: G
---
Sets number of iterations in network simplex applications.

`nslimit1` is used for ranking nodes.

If defined, `# iterations = nslimit * # nodes`; otherwise, `# iterations = MAXINT`.
