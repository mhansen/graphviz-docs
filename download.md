---
layout: page
title: Download
permalink: /download/
redirect_from:
  # We need ".php.html" else the redirect page is downloaded to ~/Downloads/
  # rather than shown in browser. See:
  # https://github.com/jekyll/jekyll-redirect-from/issues/145#issuecomment-392277818
  - /Download.php.html
  - /Download..php.html
  - /Download_macos.php.html
  # We want to redirect from /Download_windows.php. We need ".php.html" else the
  # redirect page is downloaded to ~/Downloads/ rather than shown in browser. See:
  # https://github.com/jekyll/jekyll-redirect-from/issues/145#issuecomment-392277818
  - /Download_windows.php.html
  - /_pages/Download/Download_windows.html
order: 2
---

* Table of Contents
{:toc}

## Source Code

[Source code packages](/download/source/) for the latest stable and
development versions of Graphviz are available, along with instructions for anonymous
access to the sources using [Git](http://git-scm.com/).

## Executable Packages

Packages marked with an asterisk(*) are provided by outside parties.
We list them for convenience, but disclaim responsibility for the contents of these packages.

### Linux

We do not provide precompiled packages any more.
You may find it useful to try one of the following third-party sites.

* [Ubuntu packages](https://packages.ubuntu.com/search?keywords=graphviz&searchon=names)*
  
  ```bash
  $ sudo apt install graphviz
  ```

* [Fedora project](https://apps.fedoraproject.org/packages/graphviz)*
  
  ```bash
  $ sudo yum install graphviz
  ```

* [Debian packages](http://packages.debian.org/search?suite=all&amp;searchon=names&amp;keywords=graphviz)*
  
  ```bash
  $ sudo apt install graphviz
  ```

* [Stable and development rpms for Redhat Enterprise, or CentOS systems](http://rpmfind.net/linux/rpm2html/search.php?query=graphviz)* available but are out of date.

  ```bash
  $ sudo yum install graphviz
  ```

<!---  The problem is that this probably just points back to graphviz.org * [Fedora](http://fedoraproject.org/)* On a working Fedora system, use `yum list "graphviz*"` to see all available Graphviz packages.  --->

### Windows

* Stable Windows install packages:
  * 2.47.0 EXE installer for Windows 10 (64-bit):
    [stable_windows_10_cmake_Release_x64_graphviz-install-2.47.0-win64.exe](https://gitlab.com/graphviz/graphviz/-/package_files/8184046/download)
    (not all tools and libraries are included)
  * 2.47.0 EXE installer for Windows 10 (32-bit):
    [stable_windows_10_cmake_Release_Win32_graphviz-install-2.47.0-win32.exe](https://gitlab.com/graphviz/graphviz/-/package_files/8184049/download)
    (not all tools and libraries are included)
  * 2.47.0 ZIP archive for Windows 10 (32-bit):
    [stable_windows_10_msbuild_Release_Win32_graphviz-2.47.0-win32.zip](https://gitlab.com/graphviz/graphviz/-/package_files/8184040/download)
  * checksums:
    [stable_windows_10_cmake_Release_x64_graphviz-install-2.47.0-win64.exe.sha256](https://gitlab.com/graphviz/graphviz/-/package_files/8184048/download)
    |
    [stable_windows_10_cmake_Release_Win32_graphviz-install-2.47.0-win32.exe.sha256](https://gitlab.com/graphviz/graphviz/-/package_files/8184051/download)
    |
    [stable_windows_10_msbuild_Release_Win32_graphviz-2.47.0-win32.zip.sha256](https://gitlab.com/graphviz/graphviz/-/package_files/8184042/download)
  * Further 2.47.0 variants available on
    [Gitlab](https://gitlab.com/graphviz/graphviz/-/packages/1365772)
  * [Prior to 2.46 series](https://www2.graphviz.org/Packages/stable/windows)
* Development Windows install packages
  * [2.46.0 as newer](https://gitlab.com/graphviz/graphviz/-/packages)
  * [Prior to 2.46.0](https://www2.graphviz.org/Packages/development/windows)
* [Cygwin Ports](http://sourceware.org/cygwinports/)* provides a port of Graphviz to Cygwin.
* [WinGraphviz](http://wingraphviz.sourceforge.net/wingraphviz/)* Win32/COM object (dot/neato library for Visual Basic and ASP).
* [Chocolatey packages Graphviz for Windows](https://chocolatey.org/packages/Graphviz).
  
  ```powershell
  > choco install graphviz
  ```

* [Windows Package Manager](https://docs.microsoft.com/en-gb/windows/package-manager/) provides
  [Graphviz Windows packages](https://github.com/microsoft/winget-pkgs/tree/master/manifests/Graphviz/Graphviz).

  ```powershell
  > winget install graphviz
  ```

Mostly correct notes for building Graphviz on Windows can be found
[here](/doc/winbuild.html). 

### Mac

* [MacPorts](https://www.macports.org/)* provides both stable and development versions of
  Graphviz and the Mac GUI Graphviz.app. These can be obtained via the ports
  [graphviz](https://www.macports.org/ports.php?by=library&substr=graphviz),
  [graphviz-devel](https://www.macports.org/ports.php?by=name&substr=graphviz-devel),
  [graphviz-gui](https://www.macports.org/ports.php?by=name&substr=graphviz-gui)
  and [graphviz-gui-devel](https://www.macports.org/ports.php?by=name&substr=graphviz-gui-devel).

  ```bash
  $ sudo port install graphviz
  ```

* [Homebrew](https://brew.sh/)* [has a Graphviz port](https://formulae.brew.sh/formula/graphviz).

  ```bash
  $ brew install graphviz
  ```

We need help with OSX, if you would like to volunteer.

We would appreciate if someone donates a script to
run pkgbuild or productbuild to automatically generate OSX installers.
[Packaging for Apple Administrators](https://itunes.apple.com/us/book/packaging-for-apple-administrators/id1173928620?mt=11&ign-mpt=uo%3D4)
could be a good reference. Note graphviz needs postinstall actions, at least `dot -c`; also `fc-cache` if Graphviz has freetype/cairopango drivers. 

### Solaris

For Solaris, please use the graphviz stable releases [here](http://www.opencsw.org/packages/). These are
maintained by Laurent Blume / John Ellson. Currently available packages are:

<table>
     <tr>
       <td><a href="https://www.opencsw.org/packages/CSWgraphviz/">graphviz</a></td>
       <td>Graph Visualization Tools</td></tr>
     <tr>
       <td><a href="https://www.opencsw.org/packages/CSWgraphviz-dev/">graphviz_dev</a></td>
       <td>Graphviz headers etc. for development</td>
     </tr>
     <tr>
       <td><a href="https://www.opencsw.org/packages/CSWgraphvizdoc/">graphvizdoc</a></td>
       <td>Graphviz documentation</td>
     </tr>
     <tr><td>graphvizgd</td><td>Graphviz renderers using gd</td></tr>
     <tr><td>graphvizgraphs</td><td>Graphviz example graphs</td></tr>
     <tr><td>graphvizguile</td><td>Graphviz language binding for guile</td></tr>
     <tr><td>graphvizperl</td><td>Graphviz language binding for perl</td></tr>
     <tr><td>graphvizpython</td><td>Graphviz language binding for python</td></tr>
     <tr><td>graphvizruby</td><td>Graphviz language binding for ruby</td></tr>
     <tr><td>graphvizsharp</td><td>Graphviz language binding for C#</td></tr>
     <tr><td>graphviztcl</td><td>Graphviz language binding for tcl</td></tr>
</table>

Minimally, graphviz and graphvizgd should be installed.

### Other Unix

* [FreeBSD](http://www.freshports.org/graphics/graphviz/)*






