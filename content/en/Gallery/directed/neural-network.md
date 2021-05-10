---
title: Neural Network (Keras)
svg: neural-network.svg
gv_file: neural-network.gv.txt
img_src: neural-network.png
url: /Gallery/directed/neural-network.html
---
Keras, the high-level interface to the TensorFlow machine learning library,
uses Graphviz to visualize how the neural networks connect. This is
particularly useful for non-linear neural networks, with merges and forks in
the directed graph.

This is a simple neural network (from [Keras Functional
API](https://keras.io/guides/functional_api/)) for ranking customer issue
tickets by priority and routing to which department can handle the ticket.
Generated using [Keras' `model_to_dot`
function](https://keras.io/api/utils/model_plotting_utils/).

This model has three inputs:

- issue title text
- issue body test
- issue tags

and two outputs:

- predicted priority
- predicted department

Each node is labelled with the shape (length, width) of its input and output
matrices. `None` is shown where the shape is undecided yet, where the shape
depends on the final data you train this model against.
