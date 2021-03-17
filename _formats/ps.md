---
name: PostScript
params:
- ps
---
Produces PostScript output.

Note: The default PostScript renderer can only handle the Latin-1
character set. To get non-Latin-1 characters into PostScript output,
use `-Tps:cairo`, assuming your version was built with the
Cairo renderer.
