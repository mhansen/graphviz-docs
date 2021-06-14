---
defaults:
- 'false'
flags: []
minimums: []
title: concentrate
types:
- bool
used_by: G
---
If true, use edge concentrators.

This merges multiedges into a single edge and causes partially parallel
edges to share part of their paths. The latter feature is not yet available
outside of `dot`.
