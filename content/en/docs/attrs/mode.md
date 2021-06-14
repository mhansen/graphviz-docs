---
defaults:
- major
flags:
- neato
minimums: []
name: mode
types:
- string
used_by: G
---
Technique for optimizing the layout.

* For neato, if `mode="major"`, `neato` uses stress majorization.
* If `mode="KK"`, `neato` uses a version of the gradient descent method.
  `KK` is sometimes appreciably faster for small (number of nodes < 100) graphs.
  A significant disadvantage is that `KK` may cycle.
* If `mode="sgd"`, `neato` uses a version of the stochastic gradient descent method.
  `sgd`'s advantage is faster and more reliable convergence than both the previous methods,
  while `sgd`'s disadvantage is that it runs in a fixed number of iterations and
  may require larger values of [`maxiter`](#d:maxiter) in some graphs.

There are two experimental modes in `neato`:

* `mode="hier"`, which adds a top-down directionality similar to the layout used in `dot`, and
* `mode="ipsep"`, which allows the graph to specify minimum vertical and horizontal distances between nodes.
(See the [sep](#d:sep) attribute.)

For `sfdp`, the default is `mode="spring"`, which corresponds to using a
spring-electrical model. Setting `mode="maxent"` causes a similar model
to be run but one that also takes into account edge lengths specified by the
[`len`](#d:len) attribute.
