---
defaults:
- '"UTF-8"'
flags: []
minimums: []
title: charset
types:
- string
used_by: G
description: Character encoding used when interpreting string input as a text label.
---
The default value is `"UTF-8"`. The other legal values are:

- `"utf-8"` / `"utf8"` (default value)
- `"iso-8859-1"` / `"ISO_8859-1"` / `"ISO8859-1"` / `"ISO-IR-100"` / `"Latin1"` / `"l1"` / `"latin-1"`
- `"big-5"` / `"big5"`: the [Big-5 Chinese encoding](https://en.wikipedia.org/wiki/Big5)

The `charset` attribute is case-insensitive.

Note that if the character encoding used in the input does not match the
`charset` value, the resulting output may be very strange.

{{< dot_card header="Example" >}}
digraph G {
  charset="UTF-8"
  "🍔" -> "💩"
}
{{< /dot_card >}}
