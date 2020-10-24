---
name: layerRange
---
specifies a list of layers defined by the [layers](#a:layers) attribute.

It consists of a list of layer intervals separated by any collection of
characters from the [layerlistsep](#a:layerlistsep) attribute. Each layer
interval is specified as either a layerId or a layerId**s**layerId, where
layerId = `"all"`, a decimal integer or a [`layer`](#a:layer) name. (An integer i
corresponds to layer i, layers being numbered from 1.)

The string **s** consists of 1 or more separator characters specified by the
[`layersep`](#a:layersep) attribute.

Thus, assuming the default values for [layersep](#a:layersep) and
[layerlistsep](#a:layerlistsep), if `layers="a:b:c:d:e:f:g:h"`, the
layerRange string `layers="a:b,d,f:all"` would denote the layers `a b d f g
h`.
