---
defaults:
- '1.0'
flags:
- patchwork
minimums:
- '>0'
title: area
types:
- double
used_by: NC
---
Indicates the preferred area for a node or empty cluster when laid out by patchwork.

{{< dot_card header="Example: Australian Coins, area proportional to value">}}
graph {
  layout="patchwork"
  node [style=filled]
  "5c"  [area=  5 fillcolor=silver]
  "10c" [area= 10 fillcolor=silver]
  "20c" [area= 20 fillcolor=silver]
  "50c" [area= 50 fillcolor=silver]
  "$1"  [area=100 fillcolor=gold]
  "$2"  [area=200 fillcolor=gold]
}
{{< /dot_card >}}
