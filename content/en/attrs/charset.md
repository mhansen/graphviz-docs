---
defaults:
- '"UTF-8"'
flags: []
minimums: []
name: charset
types:
- string
used_by: G
---
Specifies the character encoding used when interpreting string input as a
text label.

The default value is `"UTF-8"`. The other legal value is `"iso-8859-1"` or,
equivalently, `"Latin1"`.

The `charset` attribute is case-insensitive.

Note that if the character encoding used in the input does not match the
`charset` value, the resulting output may be very strange.
