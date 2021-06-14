---
defaults:
- '0.0'
- '""'
flags: []
minimums:
- '360.0'
name: orientation
types:
- double
- string
used_by: NG
---
When used on nodes: Angle, in degrees, to rotate polygon node shapes. For any number of polygon sides, 0 degrees rotation results in a flat base.

When used on graphs: If `"[lL]*"`, sets graph orientation to landscape.

Used only if [`rotate`](#d:rotate) is not defined.
