---
layout: page
title: Sources
---

## Source Packages
	
For most cases where you want or need to build from source, you should grab one
of the source packages linked below.
They contain all of required generated files. You just need to run `configure`
to tailor the build to your machine and its libraries. The typical installation
process is:

```bash
	./configure
	make
	make install
```

The `configure` script has many options for further tailoring the build
process. Run

```bash
	./configure --help
```

to see these.



<table frame="void" rules="groups" border="1" width="100%">
<colgroup><col></colgroup>
<colgroup><col></colgroup>
<colgroup><col></colgroup>
<tbody>
<tr>
<th align="left"><font size="+1">graphviz</font></th>
<th><font size="-1">current stable release</font></th>
<th><font size="-1">development snapshots</font></th>
</tr>
</tbody>
<tbody>
<tr><th align="right"><font size="-1">Sources</font></th>
<td align="left" nowrap=""><font size="-1">
<a href="https://www2.graphviz.org/Packages/stable/portable_source/graphviz-2.44.0.tar.gz">graphviz-2.44.0.tar.gz</a><br>
<a href="https://www2.graphviz.org/Packages/stable/portable_source/graphviz-2.44.0.tar.gz.md5">graphviz-2.40.1.tar.gz.md5</a><br>
</font></td>
<td align="left" nowrap=""><font size="-1">
<a href="https://www2.graphviz.org/Packages/development/portable_source">all</a><br>
</font></td>
</tr>
</tbody>
<tbody>
<tr><td colspan="3">&nbsp;</td></tr>
</tbody>
<tbody>
<tr>
<th align="left"><font size="+1">webdot</font></th>
<th><font size="-1">current stable release</font></th>
<th><font size="-1">development snapshot</font></th>
</tr>
</tbody>
<tbody>
<tr><th align="right"><font size="-1">Sources</font></th>
<td align="left" nowrap=""><font size="-1">
<a href="{{ site.url }}/pub/graphviz/stable/SOURCES/webdot.tar.gz">webdot-2.30.tar.gz</a><br>
<a href="{{ site.url }}/pub/graphviz/stable/SOURCES/webdot.tar.gz.md5">webdot-2.30.tar.gz.md5</a><br>
</font></td>
<td align="left" nowrap=""><font size="-1">
<a href="{{ site.url }}/pub/graphviz/development/SOURCES/webdot-working.tar.gz">webdot-2.39.20170725.2013.tar.gz</a><br>
<a href="{{ site.url }}/pub/graphviz/development/SOURCES/webdot-working.tar.gz.md5">webdot-2.39.20170725.2013.tar.gz.md5</a><br>
</font></td>
</tr>
</tbody>
<tbody>
<tr><td colspan="3">&nbsp;</td></tr>
</tbody>
</table>




## Master GIT Repos

If you wish to build from the
master repos for graphviz and webdot, these can be found at:

* [http://gitlab.com/graphviz/graphviz/](http://gitlab.com/graphviz/graphviz/)
* [http://gitlab.com/graphviz/webdot/](http://gitlab.com/graphviz/webdot/)

You can either download the zip file or clone the repository. Instructions
for the latter can be found [here](https://help.github.com/articles/which-remote-url-should-i-use/).

If you are taking this approach, then you must have recent versions of
"libtool", "automake", and "autoconf". The build process is basically the same
as above with the addition of one more step:

```bash
	./autogen.sh
	./configure
	make
	make install
```

## Requirements

### Dependencies

Consider these versions as the minimum suitable for Graphviz, but please always use the
latest available version of these packages. If there is any problem with building Graphviz
against a latest version, please generate a bug report as we would very much like to
know about it.

*HINT*: If you are using an rpm-based system, by far the easiest way to determine all the
build dependencies is to download the graphviz-xxx.src.rpm, run:  `rpmbuild --rebuild graphviz-xxx.src.rpm 2>t` , then edit `t` into a yum install command.


cairo-1.1.10.tar.gz [optional (required for libpangocairo), recommended]
: [http://cairographics.org/](http://cairographics.org/)

expat-2.0.0.tar.gz [optional (required for HTML-like labels), recommended]
: [http://expat.sourceforge.net/](http://expat.sourceforge.net/)

freetype-2.1.10.tar.gz [optional (required for libpangocairo and for gd), recommended]
: [http://www.freetype.org/](http://www.freetype.org/)

gd-2.0.34.tar.gz [optional, deprecated but needed for GIF output]
: [http://www.boutell.com/gd/](http://www.boutell.com/gd/)

fontconfig-2.3.95.tar.gz [optional (required for libpangocairo and for gd), recommended]
: [http://www.fontconfig.org/wiki/](http://www.fontconfig.org/wiki/)

urw-fonts.tar.gz [optional, required if fontconfig is unable to find any fonts]
: [ftp://ftp.gimp.org/pub/gimp/fonts](ftp://ftp.gimp.org/pub/gimp/fonts/)

glib-2.11.1.tar.gz [optional (required for libpangocairo), recommended]
: [http://www.gtk.org/](http://www.gtk.org/)

libpng-1.2.10.tar.gz [optional (required for cairo, optional for gd), recommended]
: [http://www.libpng.org/pub/png/](http://www.libpng.org/pub/png/)

pango-1.12.4.tar.gz provides libpangocairo [optional, recommended]
: [http://www.pango.org/](http://www.pango.org/)

zlib-1.2.3.tar.gz [optional (required for libpng), recommended]
: [http://www.zlib.net/](http://www.zlib.net/)

GTS [optional (required for sfdp, prism, smyrna), recommended]
: [http://gts.sourceforge.net/](http://gts.sourceforge.net/)

GTK+ [optional (required for smyrna)]
: [http://www.gtk.org/](http://www.gtk.org/)

GtkGLExt [optional (required for smyrna)]
: [http://projects.gnome.org/gtkglext/](http://projects.gnome.org/gtkglext/)

Glade [optional (required for smyrna)]
: [http://glade.gnome.org/](http://glade.gnome.org/)

Glut [optional (required for smyrna)]
: [http://www.opengl.org/resources/libraries/glut/](http://www.opengl.org/resources/libraries/glut/)

### Tools

autoconf-2.59.tar.gz [if building from git]
: [http://ftp.gnu.org/gnu/autoconf/](http://ftp.gnu.org/gnu/autoconf/)

automake-1.9.6.tar.gz [if building from git]
: [http://ftp.gnu.org/gnu/automake/](http://ftp.gnu.org/gnu/automake/)

bison-2.3.tar.gz [if building from git]
: [http://ftp.gnu.org/gnu/bison/](http://ftp.gnu.org/gnu/bison/)

flex-2.5.4a.tar.gz [if building from git]
: [http://ftp.gnu.org/non-gnu/flex/](http://ftp.gnu.org/non-gnu/flex/)

gcc-4.1.1.tar.bz2
: [http://ftp.gnu.org/gnu/gcc/](http://ftp.gnu.org/gnu/gcc/)

gcc-g++-4.1.1.tar.bz2
: [http://ftp.gnu.org/gnu/gcc/](http://ftp.gnu.org/gnu/gcc/)

ghostscript-8.54-gpl.tar.gz
: [http://pages.cs.wisc.edu/~ghost/](http://pages.cs.wisc.edu/~ghost/)

libtool-1.5.22.tar.gz [if building from git]
: [http://ftp.gnu.org/gnu/libtool/](http://ftp.gnu.org/gnu/libtool/)

pkg-config-0.20.tar.gz
: [http://www.freedesktop.org/wiki/Software/pkg-config/](http://www.freedesktop.org/wiki/Software/pkg-config/)

swig-1.3.29.tar.gz
: [http://www.swig.org/](http://www.swig.org/)

