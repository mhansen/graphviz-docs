---
name: PostScript
params:
- ps
---
Produces PostScript output.
<P>
Note: The default PostScript renderer can only handle the Latin-1
character set. To get non-Latin-1 characters into PostScript output,
use <code>-Tps:cairo</code>, assuming your version was built with the
Cairo renderer.
