---
defaults:
- '-25.0'
flags: []
minimums:
- '-180.0'
name: labelangle
types:
- double
used_by: E
---
Determines, along with [`labeldistance`](#d:labeldistance),
where the [`headlabel`](#d:headlabel) / [`taillabel`](#d:taillabel) are
placed with respect to the head / tail in polar coordinates.

The origin in the coordinate system is the point where the edge touches the
node. The ray of 0 degrees goes from the origin back along the edge, parallel
to the edge at the origin.

The angle, in degrees, specifies the rotation from the 0 degree ray,
with positive angles moving counterclockwise and negative angles
moving clockwise.
