---
title: PIC
description: Brian Kernighan's Diagram Language
params:
- pic
---
Output is given in the text-based PIC language developed for troff.
See [PIC language](https://en.wikipedia.org/wiki/Pic_language).

{{< card header="Example outputs of a simple graph with two nodes connected with an edge:">}}
```
$ echo 'digraph { a->b }' | dot -Tpic
```
```
#  Creator: graphviz version 2.47.1 (20210417.1919)
#  Title: %3
#  save point size and font
.nr .S \n(.s
.nr DF \n(.f
.PS 0.86111 1.61111
#  to change drawing size, multiply the width and height on the .PS line above and the number on the two lines below (rounded to the nearest integer) by a scale factor
.nr SF 861
scalethickness = 861
#  don't change anything below this line in this drawing
#  non-fatal run-time pic version determination, version 2
boxrad=2.0 #  will be reset to 0.0 by gpic only
scale=1.0 #  required for comparisons
#  boxrad is now 0.0 in gpic, else it remains 2.0
#  dashwid is 0.1 in 10th Edition, 0.05 in DWB 2 and in gpic
#  fillval is 0.3 in 10th Edition (fill 0 means black), 0.5 in gpic (fill 0 means white), undefined in DWB 2
#  fill has no meaning in DWB 2, gpic can use fill or filled, 10th Edition uses fill only
#  DWB 2 doesn't use fill and doesn't define fillval
#  reset works in gpic and 10th edition, but isn't defined in DWB 2
#  DWB 2 compatibility definitions
if boxrad > 1.0 && dashwid < 0.075 then X
        fillval = 1;
        define fill Y Y;
        define solid Y Y;
        define reset Y scale=1.0 Y;
X
reset #  set to known state
#  GNU pic vs. 10th Edition d\(e'tente
if fillval > 0.4 then X
        define setfillval Y fillval = 1 - Y;
        define bold Y thickness 2 Y;
        #  if you use gpic and it barfs on encountering "solid",
        #       install a more recent version of gpic or switch to DWB or 10th Edition pic;
        #       sorry, the groff folks changed gpic; send any complaint to them;
X else Z
        define setfillval Y fillval = Y;
        define bold Y Y;
        define filled Y fill Y;
Z
#  arrowhead has no meaning in DWB 2, arrowhead = 7 makes filled arrowheads in gpic and in 10th Edition
#  arrowhead is undefined in DWB 2, initially 1 in gpic, 2 in 10th Edition
arrowhead = 7 #  not used by graphviz
#  GNU pic supports a boxrad variable to draw boxes with rounded corners; DWB and 10th Ed. do not
boxrad = 0 #  no rounded corners in graphviz
#  GNU pic supports a linethick variable to set line thickness; DWB and 10th Ed. do not
linethick = 0; oldlinethick = linethick
#  .PS w/o args causes GNU pic to scale drawing to fit 8.5x11 paper; DWB does not
#  maxpsht and maxpswid have no meaning in DWB 2.0, set page boundaries in gpic and in 10th Edition
#  maxpsht and maxpswid are predefined to 11.0 and 8.5 in gpic
maxpsht = 1.611111
maxpswid = 0.861111
Dot: [
define attrs0 % %; define unfilled % %; define rounded % %; define diagonals % %
move to (0, 0); line to (0, 116); line to (62, 116); line to (62, 0); line to (0, 0)
#  a
ellipse attrs0 wid 0.75000 ht 0.50000 at (0.43056,1.30556);
.ft R 
.ps 14*\n(SFu/861u
"a" at (27.54861,87.56481);
#  b
ellipse attrs0 wid 0.75000 ht 0.50000 at (0.43056,0.30556);
"b" at (27.54861,15.56481);
#  a->b
move to (31, 76); spline to (31, 72); spline to (31, 68); spline to (31, 63); spline to (31, 59); spline to (31, 54); spline to (31, 50)
move to (35, 50); line to (31, 40); line to (28, 50); line to (35, 50)
]
.PE
#  restore point size and font
.ps \n(.S
.ft \n(DF
```
{{</ card >}}
