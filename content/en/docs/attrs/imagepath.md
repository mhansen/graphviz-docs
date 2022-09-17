---
defaults:
- '""'
flags: []
minimums: []
title: imagepath
types:
- string
used_by: G
description: A list of directories in which to look for image files
---
When specified
by the [`image`]({{< ref "image.md" >}}) attribute or using the `IMG` element in [HTML-like
labels]({{< ref "../shapes.md#html" >}}).

`imagepath` should be a list of (absolute or
relative) pathnames, each separated by a semicolon `;` (for Windows) or a colon `:`
(all other OS).

The first directory in which a file of the given name is
found will be used to load the image.

If `imagepath` is not set, relative pathnames for the image file will be
interpreted with respect to the current working directory.
