---
layout: page
title: Graphviz Build Instructions for Windows
redirect_from:
- /_pages/doc/winbuild.html
---
For building on Windows:

**(Graphviz versions ≥ 2.41)**

First, in the root of the repository, perform `git submodule update --init`. This will download all submodules, which are mostly the dependencies for the Windows build.
Next, add the windows\dependencies\graphviz-build-utilities directory to your PATH (and restart Visual Studio or the prompt with which you execute msbuild after that). This folder contains the tools Bison, Flex and SED (and future additions) with versions that are tested.
If all went right, the dependencies are now set up and you can build Graphviz.

**(Graphviz versions ≥ 2.30)**

The current build process for Windows using Visual Studio is fairly 
simple **assuming all of the necessary files are available and have
been put in the correct place**. The build assumes you have installed
binary versions of [GTK 2.0](http://www.gtk.org) or later,
[Qt](http://www.qt.io/),
and [ltdl](http://gnuwin32.sourceforge.net/packages/libtool.htm),
and source versions of [GTS](http://gts.sourceforge.net/)
and [ann](http://www.cs.umd.edu/~mount/ANN/).
Further instructions can be found in the
[Graphviz gitlab repository](https://gitlab.com/graphviz/graphviz/issues/36).

This whole process could and should be simplified. In particular, the
3rd-party software should not be stored in two places, and the Graphviz
files that are made part of the release should come from the source package,
and not be stored separately.
In addition, the GTS and ANN build should be separate from the Graphviz 
build. As 3rd-party libraries, these should only be built when the source
is updated.

**(Graphviz versions ≥ 2.22)**

We now build both Visual Studio and MinGW versions of Graphviz.
In addition, the source package comes with project files for Visual Studio,
so building from source should be fairly simple in either case.

* The first step is to add the third-party libraries. These are listed
  [here](https://www.graphviz.org/download/source/).
  This is most easily done by installing
  a Windows binary version of [GTK 2.0](http://www.gtk.org) or later.
* Next, download and unwrap the 
  [Graphviz source package](https://www.graphviz.org/download/source/),
  and copy over either the stable release
  or the development source package.

Let $ROOT be the root directory (folder) 
in which you stored the Graphviz source.

### Building with Visual Studio

1. Copy the file $ROOT/windows/config.h into $ROOT.
2. Copy the folder $ROOT/windows/FEATURE into $ROOT.
3. Start Visual Studio and read in $ROOT/graphviz.sln.
   There are project files for all of the parts of Graphviz.
4. Modify the various settings for include file and library directories to find
   the third-party software.
5. Modify the settings as to where you want the software installed.
6. Build Graphviz.

### Building with MinGW

1.  Install MinGW and Msys.  This gives a mini GNU-like compile environment 
2.  Set environment variables based on your machine, giving values to the
    first six below:

    ```bash
    export INSTALLROOT           # Root install directory
    export GTKDIR                # Root of GTK tree
    export FONTCONFIGINCLUDEDIR  # Path of fontconfig include dir
    export FONTCONFIGLIBDIR      # Path of fontconfig lib dir
    export FREETYPEINCLUDEDIR    # Path of freetype2 include dir
    export FREETYPELIBDIR        # Path of freetype2 lib dir

    export CFLAGS="-DGVDLL=1"
    export CPPFLAGS="-I$GTKDIR/include -I$GTKDIR/include/freetype2 "
    export LDFLAGS="-L$GTKDIR/lib -no-undefined"
    export FONTCONFIG_CFLAGS=-I$GTKDIR/include/
    export FONTCONFIG_LIBS="-L$FONTCONFIGLIBDIR -lfontconfig"
    export FREETYPE2_CFLAGS=-I$FREETYPEINCLUDEDIR
    export FREETYPE2_LIBS=-L$FREETYPELIBDIR
    export PKG_CONFIG=$GTKDIR/bin/pkg-config
    export PKG_CONFIG_PATH=$GTKDIR/lib/pkgconfig

    export PANGOFLAGS="--with-fontconfig --with-fontconfiglibdir=$FONTCONFIGLIBDIR --with-fontconfigincludedir=$FONTCONFIGINCLUDEDIR --with-pangocairo"
    ```

3.  Change directory to $ROOT and run configure:

    ```
    ./configure -C --prefix=$INSTALLROOT --without-gdk-pixbuf --with-mylibgd --disable-swig --without-x  --disable-tcl --without-ipsepcola --enable-shared --disable-static --with-freetype=$GTKDIR/lib --enable-ltdl $PANGOFLAGS --without-gtk --without-gtkgl
    ```

    When configure finishes, it lists all of the Graphviz features that have been
    enabled. If there are problems, you can check for errors in `config.log`.
    You may have to add or modify
    other flags and environment variables for `configure` to give you the
    settings you want. Run `configure --help`
    to see the allowed options and environment variables.
4.  Run `make`
5.  Run `make install`

These builds create a feature-full version of Graphviz. You can tailor
them to your wants. This is fairly simple for MinGW: just remove or reset
the flag of the option you don't want. For Visual Studio, you will probably
need to reset some of the values in `config.h` and some of the
compile-time options.

---

**(2.21 >= Graphviz versions > 2.14)**

To simplify our build process, especially as most Windows users only
want a binary version of the software, the Graphviz build for Windows
now uses [**uwin**](http://www.research.att.com/sw/tools/uwin/),
an open-source Unix layer on top of Windows. In this
environment, we can use essentially the same tools and process
used on Unix. In particular, we do not have to maintain multiple build
files. 

To build Graphviz:
*   Install the third-party libraries. This is most easily done by installing
    a Windows binary verion of [GTK 2.0](http://www.gtk.org) or later.
*   Download the [Graphviz source package](https://www.graphviz.org/download/source/),
    and copy over either the stable release `graphviz-`_VERSION_`.tar.gz`
    or the development source package `graphviz-working.tar.gz`.
*   Unwrap the package:

    You can use, for example,

    ```bash
    gunzip < graphviz-working.tar.gz | tar xf -
    ```

    Let `$ROOT` be the directory in which you stored the Graphviz source.

*   Configure the package for your system:

    ```bash
    cd $ROOT
    configure --disable-shared --enable-static --with-mylibgd --disable-swig --without-x --without-tclsh --with-codegens --disable-ltdl
    ```

    You will probably want to provide additional arguments to 
    `configure` to indicate where you have installed GTK, where
    you want the results installed (`--prefix`) and which
    additional optional packages you want built. Run `configure --help`
    to see the available set of arguments.
*   Build Graphviz:

    ```bash
    make install
    ```

Presumably, a similar approach would work with Cygwin or MinGW. 
The following are some notes by
[Steve Roush](https://mailman.research.att.com/pipermail/graphviz-devel/2007/000444.html)
describing how he
made a static build of the libraries on MinGW.

*   Install MinGW and Msys. This gives a mini GNU-like compile environment
    that produces Windows-compatible results.
*   You may need to configure and build in Windows "Safe mode". Try
    `./configure` in normal mode; if it dies with "fork" problems, use Safe mode.
*   Edit the "configure" file.
    after this line:

    ```
    DEFS=-DHAVE_CONFIG_H
    ```

    add these lines:

    ```bash
        case "$host_os" in
        mingw*)
        DEFS="$DEFS -DMSWIN32"
        ;;
        esac
    ```

*   run configure:

    ```bash
    ./configure  --enable-static=yes --enable-shared=no 
    --prefix=/usr/local/ --with-libgd=no --enable-ltdl=no --disable-swig  
    --disable-sharp --disable-guile --disable-io --disable-java 
    --disable-lua --disable-ocaml --disable-perl --disable-php 
    --disable-python --disable-ruby --disable-tcl
    ```

*   edit lib/Makefile

    replace these lines:

    ```make
    SUBDIRS = cdt graph agraph gd pathplan agutil sfio vmalloc ast vpsc \
        circogen dotgen fdpgen neatogen twopigen common pack gvc \
        ingraphs expr
    ```

    with these lines:

    ```make
    SUBDIRS = cdt graph agraph gd pathplan  vpsc \
        circogen dotgen fdpgen neatogen twopigen common pack gvc \
        ingraphs
    ```

    ```bash
    make  # builds most of "lib" (see Makefile changes), cmd/dot and cmd/tools - stops on cmd/gvpr
    make install
    ```

here is the command line I used to build "simple.c" (dot.demo/simple.c), 
after adding a few lines based on 
https://mailman.research.att.com/pipermail/graphviz-interest/2006q2/003586.html 


```bash
X=simple;gcc -v -I'/usr/local/include/graphviz' -I'/usr/local/include' 
-o $X -O $X.c  -L/usr/local/lib -L/usr/local/lib/graphviz -lgvc  -lgraph 
-lpathplan -lcdt -lgvplugin_core -lgvplugin_dot_layout 
-lgvplugin_neao_layout -lgvplugin_gd -lgvplugin_pango -lgvc -lpathplan
```

If you
desire to build directly using Visual Studio or other non-Unix-based
environment, you will need to derive the necessary information from the
supplied Makefiles.

---

**(2.14 >= Graphviz versions >= 2.3)**

We build Graphviz on Windows using the MS Visual C++ 6.0 compiler 
only. The simplest way to build the software from source on Windows is as 
follows:
1.  [Download the Windows source package.](https://www.graphviz.org/download/)

2.  Unwrap the package:
    
    If you have Unix tools available, you can use

    ```bash
    gunzip < graphviz-win.tgz | tar xf -
    ```

    If not, double click on the file and WinZip should start up and let you
    store all of the files into a directory.

    Let `$ROOT` be the directory in which you stored the Graphviz source.

3.  Add the third-party libraries:  
    1. zlib 1.1.3 [http://www.gzip.org/zlib/](http://www.gzip.org/zlib/)
    1. libpng 1.0.6 [http://www.libpng.org/pub/png](http://www.libpng.org/pub/png)
    1. jpeg-6b 62 [http://www.ijg.org/](http://www.ijg.org/)
    1. freetype 2.1.7 [http://freetype.sourceforge.net/](http://freetype.sourceforge.net/)
    1. expat [http://expat.sourceforge.net/](http://expat.sourceforge.net/)

    The versions should be at least the ones indicated.
    You can download the files from 
    [https://www.graphviz.org/Misc/third-party.zip](https://www.graphviz.org/Misc/third-party.zip).
    Unzip the package in the `$ROOT` directory; this will create a subdirectory called
    `third-party`.
    Or you can obtain the libraries yourself, and install 
    them in `$ROOT\third-party`
    Also note that these libraries come with the binary release.

4.  Build the software in one of the following ways:
    *   Run the script `$ROOT\build.bat` while in the `$ROOT`
        directory. You'll first want to check
        that the `vc` variable points to your local installation of visual C.
        Obviously, this should be run in a DOS command window.
    *   The file `$ROOT\ws\graphviz.dsw`
        is the main workspace for the Graphviz libraries and graph drawing programs.
        The file
        `$ROOT\ws\tools.dsw` provides the workspace for the
        additional Graphviz tools. Double-clicking on these files will open the
        workspaces using the MS Visual Studio, from which you can use the Build
        menu item to create the various libraries and programs. 

        Note that we have avoided all dependencies (i.e., there are no .dep files)
        because we found they tended to include absolute pathnames.
        If necessary, follow the order used in `build.bat` to be safe.

    *   If you have a Unix environment, with a real ksh, run the script
        `$ROOT\wmake.sh`
        after setting the PATH, LIB and INCLUDE shell variables to the paths where
        the Visual C programs are installed on your machine, and the associated
        library and include file directories.

Once built, all of the libraries and programs will be found in
either the Release or Debug subdirectory of the corresponding source
directory. If you wish to install
the software somewhere, edit the file `$ROOT\install.bat` to
set the variable `root` to be the absolute pathname of the
directory where you want
the software installed, and then run the script `$ROOT\install.bat`
from the `$ROOT` directory.

If you want to change source files, you can just do it and rebuild.
If, however, you want to add new files or projects, you will
have to redo the makefiles or scripts.

If you have problems or questions, please contact us at
[erg@research.att.com](mailto:erg@research.att.com).
