---
name: Dot graph represented in JSON format
params:
- json
- json0
- dot_json
- xdot_json
---
These formats produce a JSON output encoding the DOT language.
Using **json0** produces output in JSON format that contains the
same information produced by [-Tdot](#d:dot).
Using **json** produces output in JSON format that contains the
same information produced by [-Txdot](#d:xdot).
Both of these assume the graph has been processed by one of the layout
algorithms.
The **dot_json** and **xdot_json** also produce JSON output similar to
to **json0** and **json**, respectively, except they only use the
content of the graph on input. In particular, they do not assume that the
graph has been processed by any layout algorithm, and the only xdot information
appearing in the output was in the original input file.

The output produced by these follows the json schema shown below.
Note that the **objects** array has all of the subgraphs first,
followed by all of the nodes. The **_gvid** value is the index of
the subgraph or node in the **objects** array. This also holds
true for the edges in the **objects** array. Note that this format
allows clustered graphs, where edges can connect clusters as well as nodes.

<style>
.jsontable {
    border: 1px solid black;
    background-color: beige;
}
</style>

{{< schema >}}

