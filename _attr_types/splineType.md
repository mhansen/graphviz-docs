---
name: splineType
---
`spline ( ';' spline )*`

* where `spline` = `(endp)? (startp)? point (triple)+`
* and `triple` = `point point point`
* and `endp` = `"e,%f,%f"`
* and `startp` = `"s,%f,%f"`

If a spline has points p<SUB>1</SUB> p<SUB>2</SUB> p<SUB>3</SUB> ... p<SUB>n</SUB>, (n = 1 (mod 3)), the points
correspond to the control points of a cubic B-spline from p<SUB>1</SUB> to p<SUB>n</SUB>. If startp
is given, it touches one node of the edge, and the arrowhead
goes from p<SUB>1</SUB> to startp. If startp is not given, p<SUB>1</SUB> touches a node.
Similarly for p<SUB>n</SUB> and endp.
