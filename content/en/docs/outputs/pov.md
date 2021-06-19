---
title: POV-Ray
description: Persistence of Vision Raytracer (prototype)
params:
- pov
---
Scene-description language for 3D modelling for the 
[Persistence of Vision Raytracer](http://www.povray.org/).

{{< card header="Example: simple graph, rendered with `-Tpov`">}}
```
$ echo 'digraph { a->b }' | dot -Tpov
```
```
#version 3.6;
global_settings { assumed_gamma 1.0 }
#default { finish { ambient 0.1 diffuse 0.9 } }
#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"
#declare black = Black;
#declare white = White;
//*** begin_graph %3
camera { location <31.000 , 58.000 , -500.000>
         look_at  <31.000 , 58.000 , 0.000>
         right x * image_width / image_height
         angle 15.880
}
//sky
plane { <0, 1, 0>, 1 hollow
    texture {
        pigment { bozo turbulence 0.95
            color_map {
                [0.00 rgb <0.05, 0.20, 0.50>]
                [0.50 rgb <0.05, 0.20, 0.50>]
                [0.75 rgb <1.00, 1.00, 1.00>]
                [0.75 rgb <0.25, 0.25, 0.25>]
                [1.00 rgb <0.50, 0.50, 0.50>]
            }
            scale <1.00, 1.00, 1.50> * 2.50
            translate <0.00, 0.00, 0.00>
        }
        finish { ambient 1 diffuse 0 }
    }
    scale 10000
}
//mist
fog { fog_type 2
    distance 50
    color rgb <1.00, 1.00, 1.00> * 0.75
    fog_offset 0.10
    fog_alt 1.50
    turbulence 1.75
}
//gnd
plane { <0.00, 1.00, 0.00>, 0
    texture {
        pigment{ color rgb <0.25, 0.45, 0.00> }
        normal { bumps 0.75 scale 0.01 }
        finish { phong 0.10 }
    }
}
light_source { <1500,3000,-2500> color White }
//*** begin_page
//*** comment: a
//*** begin_node: a
//*** ellipse
torus { 1.000, 0.056
    scale    <   27.000,    11.250,    18.000>
    rotate   <   90.000,     0.000,     0.000>
    translate<   31.000,    94.000,    -6.000>
    pigment { color black transmit 0.000 }
}
//*** textspan: a, fontsize = 14.000, fontname = Times-Roman
text {
    ttf "Times-Roman",
    "a", 0.250, 0.000
        no_shadow
    scale 14.000
    rotate   <    0.000,     0.000,     0.000>
    translate<   27.500,    87.500,    -9.000>
    pigment { color black transmit 0.000 }
}
//*** end_node
//*** comment: b
//*** begin_node: b
//*** ellipse
torus { 1.000, 0.056
    scale    <   27.000,    11.250,    18.000>
    rotate   <   90.000,     0.000,     0.000>
    translate<   31.000,    22.000,    -6.000>
    pigment { color black transmit 0.000 }
}
//*** textspan: b, fontsize = 14.000, fontname = Times-Roman
text {
    ttf "Times-Roman",
    "b", 0.250, 0.000
        no_shadow
    scale 14.000
    rotate   <    0.000,     0.000,     0.000>
    translate<   27.500,    15.500,    -9.000>
    pigment { color black transmit 0.000 }
}
//*** end_node
//*** comment: a->b
//*** begin_edge
//*** bezier
sphere_sweep {
    b_spline
    6,
    <   31.000,    75.697,     0.000>, 1.000
    <   31.000,    75.697,     0.000>, 1.000
    <   31.000,    67.983,     0.000>, 1.000
    <   31.000,    58.712,     0.000>, 1.000
    <   31.000,    50.112,     0.000>, 1.000
    <   31.000,    50.112,     0.000>, 1.000
        tolerance 0.01
    scale    <    1.000,     1.000,     1.000>
    rotate   <    0.000,     0.000,     0.000>
    translate<    0.000,     0.000,   -11.000>
    pigment { color black transmit 0.000 }
}
//*** polygon
sphere_sweep {
    linear_spline
    4,
    <   34.500,    50.104,     0.000>, 1.000
    <   31.000,    40.104,     0.000>, 1.000
    <   27.500,    50.104,     0.000>, 1.000
    <   34.500,    50.104,     0.000>, 1.000
    tolerance 0.1
    scale    <    1.000,     1.000,     1.000>
    rotate   <    0.000,     0.000,     0.000>
    translate<    0.000,     0.000,    -9.000>
    pigment { color black transmit 0.000 }
}
polygon { 3,

    <   34.500,    50.104,     0.000>
    <   31.000,    40.104,     0.000>
    <   27.500,    50.104,     0.000>
    scale    <    1.000,     1.000,     1.000>
    rotate   <    0.000,     0.000,     0.000>
    translate<    0.000,     0.000,    -9.000>
    pigment { color black transmit 0.250 }
}
//*** end_edge
//*** end_page
//*** end_graph
```
{{</ card >}}
