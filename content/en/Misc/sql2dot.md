---
type: docs
title: Sql2Dot
---
Sql2Dot is a tiny parser written in java to transform sql into dot for visualizing data structures.  It parses
some very basic sql which we use in <a href="http://www.postgresql.org">PostgreSQL</a>.
<a href="http://cvs.sourceforge.net/cgi-bin/viewcvs.cgi/~checkout~/lain/lain/docs/Attic/wplug.psql?rev=1.1.1.1&content-type=text/plain">Here is an example of sql</a>
(borrowed from <a href="http://lain.sourceforge.net">lain</a>) that Sql2Dot likes to parse.

Source and class files can be found <a href="/Misc/sql2dot/sql2dot.jar">in this sql2dot.jar file</a>

Usage: `java -jar sql2dot.jar <files>`

`<files>` - list of sql files

Sql2Dot sends its output to the same location and name as the specified file with a '.dot' on the end.

Example:

Let's say we have a file with sql commands for creating tables called 'foo.sql'

We parse it like this: `java -jar sql2dot.jar foo.sql`

That will create `foo.sql.dot`

We can then run this file through dot to create a <a href="http://www.libpng.org/pub/png/libpng.html">PNG</a>
`dot -Tpng foo.sql.dot -o foo.png`

It would be nice if someone would throw a real sql parser on it ;)

The source is public domain.  Do with it as you see fit.  It would be nice
to see improvements make their way back here :)

DISCLAIMER: I'm not resposbile for the software's or your actions.

Enjoy!

Robert Dale &lt;rdale@digital-mission.com&gt;
