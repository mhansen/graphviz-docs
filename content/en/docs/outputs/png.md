---
title: PNG
description: Portable Network Graphics
params:
- png
---
Produces output in the [PNG (Portable Network Graphics) format](https://en.wikipedia.org/wiki/Portable_Network_Graphics).

(25 November 2014) A standard Graphviz installation will render using both
the Cairo and GD library. 
By [mixing the rendering and formatting]({{< ref "/docs/cli/_index.md#-T" >}}) of these
libraries, one can achieve different variations in the output.

`-Tpng:gd` (or `-Tpng:gd:gd`)
: Indexed color, no antialiasing

`-Tpng:cairo:gd`
: Indexed color, with antialiasing

`-Tpng` (or `-Tpng:cairo`)
: True color, with antialiasing

These options are listed in increasing order of image quality and output size.
