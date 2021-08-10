---
title: JSON
description: JavaScript Object Notation
params:
- json
- json0
- dot_json
- xdot_json
---
These formats produce a JSON output encoding the DOT language.
Using `json0` produces output in JSON format that contains the
same information produced by [`-Tdot`]({{< ref "canon.md" >}}).
Using `json` produces output in JSON format that contains the
same information produced by [`-Txdot`]({{< ref "canon.md" >}}).
Both of these assume the graph has been processed by one of the layout
algorithms.
The `dot_json` and `xdot_json` also produce JSON output similar to
to `json0` and `json`, respectively, except they only use the
content of the graph on input. In particular, they do not assume that the
graph has been processed by any layout algorithm, and the only xdot information
appearing in the output was in the original input file.

The output produced by these follows the json schema shown below.
Note that the `objects` array has all of the subgraphs first,
followed by all of the nodes. The `_gvid` value is the index of
the subgraph or node in the `objects` array. This also holds
true for the edges in the `objects` array. Note that this format
allows clustered graphs, where edges can connect clusters as well as nodes.

{{< card header="Example: simple graph rendered with `-Tdot_json`">}}
```
$ echo 'digraph { a->b }' | dot -Tdot_json
```
```json
{
  "name": "%3",
  "directed": true,
  "strict": false,
  "_subgraph_cnt": 0,
  "objects": [
    {
      "_gvid": 0,
      "name": "a",
      "label": "\\N"
    },
    {
      "_gvid": 1,
      "name": "b",
      "label": "\\N"
    }
  ],
  "edges": [
    {
      "_gvid": 0,
      "tail": 0,
      "head": 1
    }
  ]
}
```
{{< /card >}}

{{< card header="Example: simple graph rendered with `-Txdot_json`">}}
```
$ echo 'digraph { a->b }' | dot -Txdot_json
```
```dot
{
  "name": "%3",
  "directed": true,
  "strict": false,
  "_subgraph_cnt": 0,
  "objects": [
    {
      "_gvid": 0,
      "name": "a",
      "label": "\\N"
    },
    {
      "_gvid": 1,
      "name": "b",
      "label": "\\N"
    }
  ],
  "edges": [
    {
      "_gvid": 0,
      "tail": 0,
      "head": 1
    }
  ]
}
```
{{< /card >}}


{{< card header="Example: simple graph rendered with `-Tjson0`">}}
```
$ echo 'digraph { a->b }' | dot -Tjson0
```
```dot
{
  "name": "%3",
  "directed": true,
  "strict": false,
  "bb": "0,0,54,108",
  "_subgraph_cnt": 0,
  "objects": [
    {
      "_gvid": 0,
      "name": "a",
      "height": "0.5",
      "label": "\\N",
      "pos": "27,90",
      "width": "0.75"
    },
    {
      "_gvid": 1,
      "name": "b",
      "height": "0.5",
      "label": "\\N",
      "pos": "27,18",
      "width": "0.75"
    }
  ],
  "edges": [
    {
      "_gvid": 0,
      "tail": 0,
      "head": 1,
      "pos": "e,27,36.104 27,71.697 27,63.983 27,54.712 27,46.112"
    }
  ]
}
```
{{< /card >}}

{{< card header="Example: simple graph rendered with `-Tjson`">}}
```
echo 'digraph { a->b }' | dot -Tjson
```
```json
{
  "name": "%3",
  "directed": true,
  "strict": false,
  "_draw_": 
  [
    {
      "op": "c",
      "grad": "none",
      "color": "#fffffe00"
    },
    {
      "op": "C",
      "grad": "none",
      "color": "#ffffff"
    },
    {
      "op": "P",
      "points": [[0.000,0.000],[0.000,108.000],[54.000,108.000],[54.000,0.000]]
    }
  ],
  "bb": "0,0,54,108",
  "xdotversion": "1.7",
  "_subgraph_cnt": 0,
  "objects": [
    {
      "_gvid": 0,
      "name": "a",
      "_draw_": 
      [
        {
          "op": "c",
          "grad": "none",
          "color": "#000000"
        },
        {
          "op": "e",
          "rect": [27.000,90.000,27.000,18.000]
        }
      ],
      "_ldraw_": 
      [
        {
          "op": "F",
          "size": 14.000,
          "face": "Times-Roman"
        },
        {
          "op": "c",
          "grad": "none",
          "color": "#000000"
        },
        {
          "op": "T",
          "pt": [27.000,86.300],
          "align": "c",
          "width": 7.000,
          "text": "a"
        }
      ],
      "height": "0.5",
      "label": "\\N",
      "pos": "27,90",
      "width": "0.75"
    },
    {
      "_gvid": 1,
      "name": "b",
      "_draw_": 
      [
        {
          "op": "c",
          "grad": "none",
          "color": "#000000"
        },
        {
          "op": "e",
          "rect": [27.000,18.000,27.000,18.000]
        }
      ],
      "_ldraw_": 
      [
        {
          "op": "F",
          "size": 14.000,
          "face": "Times-Roman"
        },
        {
          "op": "c",
          "grad": "none",
          "color": "#000000"
        },
        {
          "op": "T",
          "pt": [27.000,14.300],
          "align": "c",
          "width": 7.000,
          "text": "b"
        }
      ],
      "height": "0.5",
      "label": "\\N",
      "pos": "27,18",
      "width": "0.75"
    }
  ],
  "edges": [
    {
      "_gvid": 0,
      "tail": 0,
      "head": 1,
      "_draw_": 
      [
        {
          "op": "c",
          "grad": "none",
          "color": "#000000"
        },
        {
          "op": "b",
          "points": [[27.000,71.700],[27.000,63.980],[27.000,54.710],[27.000,46.110]]
        }
      ],
      "_hdraw_": 
      [
        {
          "op": "S",
          "style": "solid"
        },
        {
          "op": "c",
          "grad": "none",
          "color": "#000000"
        },
        {
          "op": "C",
          "grad": "none",
          "color": "#000000"
        },
        {
          "op": "P",
          "points": [[30.500,46.100],[27.000,36.100],[23.500,46.100]]
        }
      ],
      "pos": "e,27,36.104 27,71.697 27,63.983 27,54.712 27,46.112"
    }
  ]
}
```

<style>
.jsontable {
    border: 1px solid black;
    background-color: beige;
}
</style>

{{< schema >}}
