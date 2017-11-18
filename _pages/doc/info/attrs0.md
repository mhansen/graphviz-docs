---
layout: null
permalink: /doc/attrs0.html
---
{::nomarkdown}
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML//EN">
<!--
    This is a generated document.  Do not edit.
-->
<HTML VERSION="2.0">
<HEAD>
<TITLE>Testing - Node, Edge and Graph Attributes</TITLE>
</HEAD>
<BODY BGCOLOR=white>
<A NAME="top"></A>
<H1 align=CENTER>Node, Edge and Graph Attributes</H1>
<HR>
The table below describes the attributes used by various Graphviz tools.
The table gives the name of the attribute, the graph components (node,
edge, etc.) which use the attribute and the type of the attribute
(strings representing legal values of that type). Where applicable, the table
also gives a default value for the attribute, a minimum allowed setting
for numeric attributes, and certain restrictions on the use of the attribute.
<P>
Note that attribute names are case-sensitive. 
This is usually true for attribute values as well, unless noted.
<P>
All Graphviz attributes are specified by name-value pairs. Thus, to
set the fillcolor of a node <TT>abc</TT>, one would use
<TABLE>
<TR><TD><TT>abc [fillcolor = red]</TT></TR>
</TABLE>
Similarly, to set the arrowhead style of an edge <TT>abc -> def</TT>,
one would use
<TABLE>
<TR><TD><TT>abc -> def [arrowhead = diamond]</TT></TR>
</TABLE>
Further details concerning the setting of attributes can be found
in the description of the
<A HREF=lang.html>DOT language.</A>
<P>
At present, most device-independent units are either inches or
<A NAME="points"></A>
<A HREF="http://en.wikipedia.org/wiki/Point_(typography)">points</A>,
which we take as 72 points per inch.
<P>
<A NAME=h:undir_note><STRONG>Note:</STRONG></A> Some attributes, such as
<A HREF=#d:dir>dir</A> or <A HREF=#d:arrowtail>arrowtail</A>, are
ambiguous when used in
<A HREF=lang.html>DOT</A>
with an undirected graph since the head and tail of an edge are meaningless.
As a convention, the first time an undirected edge appears, the
<A HREF=lang.html>DOT</A>
parser will assign the left node as the tail node and the right node as
the head. For example, the edge <TT>A -- B</TT> will have tail <TT>A</TT>
and head <TT>B</TT>. It is the user's responsibility to handle such
edges consistently. If the edge appears later, in the format
<TABLE>
<TR><TD><TT>B -- A [taillabel = "tail"]</TT></TR>
</TABLE>
the drawing will attach the tail label to node <TT>A</TT>.
To avoid possible confusion when such attributes are required, the user
is encouraged to use a directed graph.
If it is important to make the graph appear undirected, this can be
done using the <A HREF=#d:dir>dir</A>, <A HREF=#d:arrowtail>arrowtail</A>
or <A HREF=#d:arrowhead>arrowhead</A> attributes.
<P>
The tools accept standard C representations for <EM>int</EM> and
<EM>double</EM> types.
For the <A NAME=k:bool><EM>bool</EM></A> type, TRUE values are
represented by "true" or "yes" (case-insensitive)
and any non-zero integer, and FALSE values by "false" or "no" (case-insensitive)
and zero.
In addition, there are a variety of specialized types such as
<EM>arrowType</EM>, <EM>color</EM>,
<EM>point</EM> and <EM>rankdir</EM>. Legal values for these types are given
at the end.
<P>
In the <A NAME=h:uses><STRONG>Used By</STRONG></A> field, the
characters E, N, G, S and C
represent edges, nodes, the root graph, subgraphs
and cluster subgraphs, respectively.
This field indicates which graph component uses the attribute.
<P>
In the <STRONG>Notes</STRONG> field, an annotation of <em>write only</em> 
indicates that the attribute is used for output, and is not used or read by any
of the layout programs.
<HR ALIGN=CENTER WIDTH="70%" SIZE=3>

<TABLE ALIGN=CENTER>
<TR><TH>Name</TH><TH><A HREF=#h:uses>Used By</A></TH><TH>Type</TH><TH ALIGN=CENTER>Default</TH><TH>Minimum</TH><TH>Notes</TH></TR>
 <TR><TD><A NAME=a:Damping HREF=#d:Damping>Damping</A>
</TD><TD>G</TD><TD>double</TD><TD ALIGN="CENTER">0.99</TD><TD>0.0</TD><TD>neato only</TD> </TR>
 <TR><TD><A NAME=a:K HREF=#d:K>K</A>
</TD><TD>GC</TD><TD>double</TD><TD ALIGN="CENTER">0.3</TD><TD>0</TD><TD>sfdp, fdp only</TD> </TR>
 <TR><TD><A NAME=a:URL HREF=#d:URL>URL</A>
</TD><TD>ENGC</TD><TD><A HREF=#k:escString>escString</A>
</TD><TD ALIGN="CENTER">&#60;none&#62;</TD><TD></TD><TD>svg, postscript, map only</TD> </TR>
 <TR><TD><A NAME=a:_background HREF=#d:_background>_background</A>
</TD><TD>G</TD><TD>string</TD><TD ALIGN="CENTER">&#60;none&#62;</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:area HREF=#d:area>area</A>
</TD><TD>NC</TD><TD>double</TD><TD ALIGN="CENTER">1.0</TD><TD>&#62;0</TD><TD>patchwork only</TD> </TR>
 <TR><TD><A NAME=a:arrowhead HREF=#d:arrowhead>arrowhead</A>
</TD><TD>E</TD><TD><A HREF=#k:arrowType>arrowType</A>
</TD><TD ALIGN="CENTER">normal</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:arrowsize HREF=#d:arrowsize>arrowsize</A>
</TD><TD>E</TD><TD>double</TD><TD ALIGN="CENTER">1.0</TD><TD>0.0</TD><TD></TD> </TR>
 <TR><TD><A NAME=a:arrowtail HREF=#d:arrowtail>arrowtail</A>
</TD><TD>E</TD><TD><A HREF=#k:arrowType>arrowType</A>
</TD><TD ALIGN="CENTER">normal</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:bb HREF=#d:bb>bb</A>
</TD><TD>G</TD><TD><A HREF=#k:rect>rect</A>
</TD><TD ALIGN="CENTER"></TD><TD></TD><TD>write only</TD> </TR>
 <TR><TD><A NAME=a:bgcolor HREF=#d:bgcolor>bgcolor</A>
</TD><TD>GC</TD><TD><A HREF=#k:color>color</A>
<BR><A HREF=#k:colorList>colorList</A>
</TD><TD ALIGN="CENTER">&#60;none&#62;</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:center HREF=#d:center>center</A>
</TD><TD>G</TD><TD><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">false</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:charset HREF=#d:charset>charset</A>
</TD><TD>G</TD><TD>string</TD><TD ALIGN="CENTER">"UTF-8"</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:clusterrank HREF=#d:clusterrank>clusterrank</A>
</TD><TD>G</TD><TD><A HREF=#k:clusterMode>clusterMode</A>
</TD><TD ALIGN="CENTER">local</TD><TD></TD><TD>dot only</TD> </TR>
 <TR><TD><A NAME=a:color HREF=#d:color>color</A>
</TD><TD>ENC</TD><TD><A HREF=#k:color>color</A>
<BR><A HREF=#k:colorList>colorList</A>
</TD><TD ALIGN="CENTER">black</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:colorscheme HREF=#d:colorscheme>colorscheme</A>
</TD><TD>ENCG</TD><TD>string</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:comment HREF=#d:comment>comment</A>
</TD><TD>ENG</TD><TD>string</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:compound HREF=#d:compound>compound</A>
</TD><TD>G</TD><TD><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">false</TD><TD></TD><TD>dot only</TD> </TR>
 <TR><TD><A NAME=a:concentrate HREF=#d:concentrate>concentrate</A>
</TD><TD>G</TD><TD><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">false</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:constraint HREF=#d:constraint>constraint</A>
</TD><TD>E</TD><TD><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">true</TD><TD></TD><TD>dot only</TD> </TR>
 <TR><TD><A NAME=a:decorate HREF=#d:decorate>decorate</A>
</TD><TD>E</TD><TD><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">false</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:defaultdist HREF=#d:defaultdist>defaultdist</A>
</TD><TD>G</TD><TD>double</TD><TD ALIGN="CENTER">1+(avg. len)*sqrt(|V|)</TD><TD>epsilon</TD><TD>neato only</TD> </TR>
 <TR><TD><A NAME=a:dim HREF=#d:dim>dim</A>
</TD><TD>G</TD><TD>int</TD><TD ALIGN="CENTER">2</TD><TD>2</TD><TD>sfdp, fdp, neato only</TD> </TR>
 <TR><TD><A NAME=a:dimen HREF=#d:dimen>dimen</A>
</TD><TD>G</TD><TD>int</TD><TD ALIGN="CENTER">2</TD><TD>2</TD><TD>sfdp, fdp, neato only</TD> </TR>
 <TR><TD><A NAME=a:dir HREF=#d:dir>dir</A>
</TD><TD>E</TD><TD><A HREF=#k:dirType>dirType</A>
</TD><TD ALIGN="CENTER">forward(directed)<BR>none(undirected)</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:diredgeconstraints HREF=#d:diredgeconstraints>diredgeconstraints</A>
</TD><TD>G</TD><TD>string<BR><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">false</TD><TD></TD><TD>neato only</TD> </TR>
 <TR><TD><A NAME=a:distortion HREF=#d:distortion>distortion</A>
</TD><TD>N</TD><TD>double</TD><TD ALIGN="CENTER">0.0</TD><TD>-100.0</TD><TD></TD> </TR>
 <TR><TD><A NAME=a:dpi HREF=#d:dpi>dpi</A>
</TD><TD>G</TD><TD>double</TD><TD ALIGN="CENTER">96.0<BR>0.0</TD><TD></TD><TD>svg, bitmap output only</TD> </TR>
 <TR><TD><A NAME=a:edgeURL HREF=#d:edgeURL>edgeURL</A>
</TD><TD>E</TD><TD><A HREF=#k:escString>escString</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>svg, map only</TD> </TR>
 <TR><TD><A NAME=a:edgehref HREF=#d:edgehref>edgehref</A>
</TD><TD>E</TD><TD><A HREF=#k:escString>escString</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>svg, map only</TD> </TR>
 <TR><TD><A NAME=a:edgetarget HREF=#d:edgetarget>edgetarget</A>
</TD><TD>E</TD><TD><A HREF=#k:escString>escString</A>
</TD><TD ALIGN="CENTER">&#60;none&#62;</TD><TD></TD><TD>svg, map only</TD> </TR>
 <TR><TD><A NAME=a:edgetooltip HREF=#d:edgetooltip>edgetooltip</A>
</TD><TD>E</TD><TD><A HREF=#k:escString>escString</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>svg, cmap only</TD> </TR>
 <TR><TD><A NAME=a:epsilon HREF=#d:epsilon>epsilon</A>
</TD><TD>G</TD><TD>double</TD><TD ALIGN="CENTER">.0001 * # nodes(mode == KK)<BR>.0001(mode == major)</TD><TD></TD><TD>neato only</TD> </TR>
 <TR><TD><A NAME=a:esep HREF=#d:esep>esep</A>
</TD><TD>G</TD><TD><A HREF=#k:addDouble>addDouble</A>
<BR><A HREF=#k:addPoint>addPoint</A>
</TD><TD ALIGN="CENTER">+3</TD><TD></TD><TD>not dot</TD> </TR>
 <TR><TD><A NAME=a:fillcolor HREF=#d:fillcolor>fillcolor</A>
</TD><TD>NEC</TD><TD><A HREF=#k:color>color</A>
<BR><A HREF=#k:colorList>colorList</A>
</TD><TD ALIGN="CENTER">lightgrey(nodes)<BR>black(clusters)</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:fixedsize HREF=#d:fixedsize>fixedsize</A>
</TD><TD>N</TD><TD><A HREF=#k:bool>bool</A>
<BR>string</TD><TD ALIGN="CENTER">false</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:fontcolor HREF=#d:fontcolor>fontcolor</A>
</TD><TD>ENGC</TD><TD><A HREF=#k:color>color</A>
</TD><TD ALIGN="CENTER">black</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:fontname HREF=#d:fontname>fontname</A>
</TD><TD>ENGC</TD><TD>string</TD><TD ALIGN="CENTER">"Times-Roman"</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:fontnames HREF=#d:fontnames>fontnames</A>
</TD><TD>G</TD><TD>string</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>svg only</TD> </TR>
 <TR><TD><A NAME=a:fontpath HREF=#d:fontpath>fontpath</A>
</TD><TD>G</TD><TD>string</TD><TD ALIGN="CENTER">system-dependent</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:fontsize HREF=#d:fontsize>fontsize</A>
</TD><TD>ENGC</TD><TD>double</TD><TD ALIGN="CENTER">14.0</TD><TD>1.0</TD><TD></TD> </TR>
 <TR><TD><A NAME=a:forcelabels HREF=#d:forcelabels>forcelabels</A>
</TD><TD>G</TD><TD><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">true</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:gradientangle HREF=#d:gradientangle>gradientangle</A>
</TD><TD>NCG</TD><TD>int</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:group HREF=#d:group>group</A>
</TD><TD>N</TD><TD>string</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>dot only</TD> </TR>
 <TR><TD><A NAME=a:headURL HREF=#d:headURL>headURL</A>
</TD><TD>E</TD><TD><A HREF=#k:escString>escString</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>svg, map only</TD> </TR>
 <TR><TD><A NAME=a:head_lp HREF=#d:head_lp>head_lp</A>
</TD><TD>E</TD><TD><A HREF=#k:point>point</A>
</TD><TD ALIGN="CENTER"></TD><TD></TD><TD>write only</TD> </TR>
 <TR><TD><A NAME=a:headclip HREF=#d:headclip>headclip</A>
</TD><TD>E</TD><TD><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">true</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:headhref HREF=#d:headhref>headhref</A>
</TD><TD>E</TD><TD><A HREF=#k:escString>escString</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>svg, map only</TD> </TR>
 <TR><TD><A NAME=a:headlabel HREF=#d:headlabel>headlabel</A>
</TD><TD>E</TD><TD><A HREF=#k:lblString>lblString</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:headport HREF=#d:headport>headport</A>
</TD><TD>E</TD><TD><A HREF=#k:portPos>portPos</A>
</TD><TD ALIGN="CENTER">center</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:headtarget HREF=#d:headtarget>headtarget</A>
</TD><TD>E</TD><TD><A HREF=#k:escString>escString</A>
</TD><TD ALIGN="CENTER">&#60;none&#62;</TD><TD></TD><TD>svg, map only</TD> </TR>
 <TR><TD><A NAME=a:headtooltip HREF=#d:headtooltip>headtooltip</A>
</TD><TD>E</TD><TD><A HREF=#k:escString>escString</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>svg, cmap only</TD> </TR>
 <TR><TD><A NAME=a:height HREF=#d:height>height</A>
</TD><TD>N</TD><TD>double</TD><TD ALIGN="CENTER">0.5</TD><TD>0.02</TD><TD></TD> </TR>
 <TR><TD><A NAME=a:href HREF=#d:href>href</A>
</TD><TD>GCNE</TD><TD><A HREF=#k:escString>escString</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>svg, postscript, map only</TD> </TR>
 <TR><TD><A NAME=a:id HREF=#d:id>id</A>
</TD><TD>GCNE</TD><TD><A HREF=#k:escString>escString</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>svg, postscript, map only</TD> </TR>
 <TR><TD><A NAME=a:image HREF=#d:image>image</A>
</TD><TD>N</TD><TD>string</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:imagepath HREF=#d:imagepath>imagepath</A>
</TD><TD>G</TD><TD>string</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:imagepos HREF=#d:imagepos>imagepos</A>
</TD><TD>N</TD><TD>string</TD><TD ALIGN="CENTER">"mc"</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:imagescale HREF=#d:imagescale>imagescale</A>
</TD><TD>N</TD><TD><A HREF=#k:bool>bool</A>
<BR>string</TD><TD ALIGN="CENTER">false</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:inputscale HREF=#d:inputscale>inputscale</A>
</TD><TD>G</TD><TD>double</TD><TD ALIGN="CENTER">&#60;none&#62;</TD><TD></TD><TD>fdp, neato only</TD> </TR>
 <TR><TD><A NAME=a:label HREF=#d:label>label</A>
</TD><TD>ENGC</TD><TD><A HREF=#k:lblString>lblString</A>
</TD><TD ALIGN="CENTER">"&#92;N" (nodes)<BR>"" (otherwise)</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:labelURL HREF=#d:labelURL>labelURL</A>
</TD><TD>E</TD><TD><A HREF=#k:escString>escString</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>svg, map only</TD> </TR>
 <TR><TD><A NAME=a:label_scheme HREF=#d:label_scheme>label_scheme</A>
</TD><TD>G</TD><TD>int</TD><TD ALIGN="CENTER">0</TD><TD>0</TD><TD>sfdp only</TD> </TR>
 <TR><TD><A NAME=a:labelangle HREF=#d:labelangle>labelangle</A>
</TD><TD>E</TD><TD>double</TD><TD ALIGN="CENTER">-25.0</TD><TD>-180.0</TD><TD></TD> </TR>
 <TR><TD><A NAME=a:labeldistance HREF=#d:labeldistance>labeldistance</A>
</TD><TD>E</TD><TD>double</TD><TD ALIGN="CENTER">1.0</TD><TD>0.0</TD><TD></TD> </TR>
 <TR><TD><A NAME=a:labelfloat HREF=#d:labelfloat>labelfloat</A>
</TD><TD>E</TD><TD><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">false</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:labelfontcolor HREF=#d:labelfontcolor>labelfontcolor</A>
</TD><TD>E</TD><TD><A HREF=#k:color>color</A>
</TD><TD ALIGN="CENTER">black</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:labelfontname HREF=#d:labelfontname>labelfontname</A>
</TD><TD>E</TD><TD>string</TD><TD ALIGN="CENTER">"Times-Roman"</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:labelfontsize HREF=#d:labelfontsize>labelfontsize</A>
</TD><TD>E</TD><TD>double</TD><TD ALIGN="CENTER">14.0</TD><TD>1.0</TD><TD></TD> </TR>
 <TR><TD><A NAME=a:labelhref HREF=#d:labelhref>labelhref</A>
</TD><TD>E</TD><TD><A HREF=#k:escString>escString</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>svg, map only</TD> </TR>
 <TR><TD><A NAME=a:labeljust HREF=#d:labeljust>labeljust</A>
</TD><TD>GC</TD><TD>string</TD><TD ALIGN="CENTER">"c"</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:labelloc HREF=#d:labelloc>labelloc</A>
</TD><TD>NGC</TD><TD>string</TD><TD ALIGN="CENTER">"t"(clusters)<BR>"b"(root graphs)<BR>"c"(nodes)</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:labeltarget HREF=#d:labeltarget>labeltarget</A>
</TD><TD>E</TD><TD><A HREF=#k:escString>escString</A>
</TD><TD ALIGN="CENTER">&#60;none&#62;</TD><TD></TD><TD>svg, map only</TD> </TR>
 <TR><TD><A NAME=a:labeltooltip HREF=#d:labeltooltip>labeltooltip</A>
</TD><TD>E</TD><TD><A HREF=#k:escString>escString</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>svg, cmap only</TD> </TR>
 <TR><TD><A NAME=a:landscape HREF=#d:landscape>landscape</A>
</TD><TD>G</TD><TD><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">false</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:layer HREF=#d:layer>layer</A>
</TD><TD>ENC</TD><TD><A HREF=#k:layerRange>layerRange</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:layerlistsep HREF=#d:layerlistsep>layerlistsep</A>
</TD><TD>G</TD><TD>string</TD><TD ALIGN="CENTER">","</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:layers HREF=#d:layers>layers</A>
</TD><TD>G</TD><TD><A HREF=#k:layerList>layerList</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:layerselect HREF=#d:layerselect>layerselect</A>
</TD><TD>G</TD><TD><A HREF=#k:layerRange>layerRange</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:layersep HREF=#d:layersep>layersep</A>
</TD><TD>G</TD><TD>string</TD><TD ALIGN="CENTER">" :&#92;t"</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:layout HREF=#d:layout>layout</A>
</TD><TD>G</TD><TD>string</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:len HREF=#d:len>len</A>
</TD><TD>E</TD><TD>double</TD><TD ALIGN="CENTER">1.0(neato)<BR>0.3(fdp)</TD><TD></TD><TD>fdp, neato only</TD> </TR>
 <TR><TD><A NAME=a:levels HREF=#d:levels>levels</A>
</TD><TD>G</TD><TD>int</TD><TD ALIGN="CENTER">MAXINT</TD><TD>0.0</TD><TD>sfdp only</TD> </TR>
 <TR><TD><A NAME=a:levelsgap HREF=#d:levelsgap>levelsgap</A>
</TD><TD>G</TD><TD>double</TD><TD ALIGN="CENTER">0.0</TD><TD></TD><TD>neato only</TD> </TR>
 <TR><TD><A NAME=a:lhead HREF=#d:lhead>lhead</A>
</TD><TD>E</TD><TD>string</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>dot only</TD> </TR>
 <TR><TD><A NAME=a:lheight HREF=#d:lheight>lheight</A>
</TD><TD>GC</TD><TD>double</TD><TD ALIGN="CENTER"></TD><TD></TD><TD>write only</TD> </TR>
 <TR><TD><A NAME=a:lp HREF=#d:lp>lp</A>
</TD><TD>EGC</TD><TD><A HREF=#k:point>point</A>
</TD><TD ALIGN="CENTER"></TD><TD></TD><TD>write only</TD> </TR>
 <TR><TD><A NAME=a:ltail HREF=#d:ltail>ltail</A>
</TD><TD>E</TD><TD>string</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>dot only</TD> </TR>
 <TR><TD><A NAME=a:lwidth HREF=#d:lwidth>lwidth</A>
</TD><TD>GC</TD><TD>double</TD><TD ALIGN="CENTER"></TD><TD></TD><TD>write only</TD> </TR>
 <TR><TD><A NAME=a:margin HREF=#d:margin>margin</A>
</TD><TD>NCG</TD><TD>double<BR><A HREF=#k:point>point</A>
</TD><TD ALIGN="CENTER">&#60;device-dependent&#62;</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:maxiter HREF=#d:maxiter>maxiter</A>
</TD><TD>G</TD><TD>int</TD><TD ALIGN="CENTER">100 &#42; # nodes(mode == KK)<BR>200(mode == major)<BR>600(fdp)</TD><TD></TD><TD>fdp, neato only</TD> </TR>
 <TR><TD><A NAME=a:mclimit HREF=#d:mclimit>mclimit</A>
</TD><TD>G</TD><TD>double</TD><TD ALIGN="CENTER">1.0</TD><TD></TD><TD>dot only</TD> </TR>
 <TR><TD><A NAME=a:mindist HREF=#d:mindist>mindist</A>
</TD><TD>G</TD><TD>double</TD><TD ALIGN="CENTER">1.0</TD><TD>0.0</TD><TD>circo only</TD> </TR>
 <TR><TD><A NAME=a:minlen HREF=#d:minlen>minlen</A>
</TD><TD>E</TD><TD>int</TD><TD ALIGN="CENTER">1</TD><TD>0</TD><TD>dot only</TD> </TR>
 <TR><TD><A NAME=a:mode HREF=#d:mode>mode</A>
</TD><TD>G</TD><TD>string</TD><TD ALIGN="CENTER">major</TD><TD></TD><TD>neato only</TD> </TR>
 <TR><TD><A NAME=a:model HREF=#d:model>model</A>
</TD><TD>G</TD><TD>string</TD><TD ALIGN="CENTER">shortpath</TD><TD></TD><TD>neato only</TD> </TR>
 <TR><TD><A NAME=a:mosek HREF=#d:mosek>mosek</A>
</TD><TD>G</TD><TD><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">false</TD><TD></TD><TD>neato only</TD> </TR>
 <TR><TD><A NAME=a:newrank HREF=#d:newrank>newrank</A>
</TD><TD>G</TD><TD><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">false</TD><TD></TD><TD>dot only</TD> </TR>
 <TR><TD><A NAME=a:nodesep HREF=#d:nodesep>nodesep</A>
</TD><TD>G</TD><TD>double</TD><TD ALIGN="CENTER">0.25</TD><TD>0.02</TD><TD></TD> </TR>
 <TR><TD><A NAME=a:nojustify HREF=#d:nojustify>nojustify</A>
</TD><TD>GCNE</TD><TD><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">false</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:normalize HREF=#d:normalize>normalize</A>
</TD><TD>G</TD><TD>double<BR><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">false</TD><TD></TD><TD>not dot</TD> </TR>
 <TR><TD><A NAME=a:notranslate HREF=#d:notranslate>notranslate</A>
</TD><TD>G</TD><TD><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">false</TD><TD></TD><TD>neato only</TD> </TR>
 <TR><TD><A NAME=a:nslimit HREF=#d:nslimit>nslimit</A>
<BR><A NAME=a:nslimit1 HREF=#d:nslimit1>nslimit1</A>
</TD><TD>G</TD><TD>double</TD><TD ALIGN="CENTER"></TD><TD></TD><TD>dot only</TD> </TR>
 <TR><TD><A NAME=a:ordering HREF=#d:ordering>ordering</A>
</TD><TD>GN</TD><TD>string</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>dot only</TD> </TR>
 <TR><TD><A NAME=a:orientation HREF=#d:orientation>orientation</A>
</TD><TD>N</TD><TD>double</TD><TD ALIGN="CENTER">0.0</TD><TD>360.0</TD><TD></TD> </TR>
 <TR><TD><A NAME=aa:orientation HREF=#dd:orientation>orientation</A>
</TD><TD>G</TD><TD>string</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:outputorder HREF=#d:outputorder>outputorder</A>
</TD><TD>G</TD><TD><A HREF=#k:outputMode>outputMode</A>
</TD><TD ALIGN="CENTER">breadthfirst</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:overlap HREF=#d:overlap>overlap</A>
</TD><TD>G</TD><TD>string<BR><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">true</TD><TD></TD><TD>not dot</TD> </TR>
 <TR><TD><A NAME=a:overlap_scaling HREF=#d:overlap_scaling>overlap_scaling</A>
</TD><TD>G</TD><TD>double</TD><TD ALIGN="CENTER">-4</TD><TD>-1.0e10</TD><TD>prism only</TD> </TR>
 <TR><TD><A NAME=a:overlap_shrink HREF=#d:overlap_shrink>overlap_shrink</A>
</TD><TD>G</TD><TD><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">true</TD><TD></TD><TD>prism only</TD> </TR>
 <TR><TD><A NAME=a:pack HREF=#d:pack>pack</A>
</TD><TD>G</TD><TD><A HREF=#k:bool>bool</A>
<BR>int</TD><TD ALIGN="CENTER">false</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:packmode HREF=#d:packmode>packmode</A>
</TD><TD>G</TD><TD><A HREF=#k:packMode>packMode</A>
</TD><TD ALIGN="CENTER">node</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:pad HREF=#d:pad>pad</A>
</TD><TD>G</TD><TD>double<BR><A HREF=#k:point>point</A>
</TD><TD ALIGN="CENTER">0.0555 (4 points)</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:page HREF=#d:page>page</A>
</TD><TD>G</TD><TD>double<BR><A HREF=#k:point>point</A>
</TD><TD ALIGN="CENTER"></TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:pagedir HREF=#d:pagedir>pagedir</A>
</TD><TD>G</TD><TD><A HREF=#k:pagedir>pagedir</A>
</TD><TD ALIGN="CENTER">BL</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:pencolor HREF=#d:pencolor>pencolor</A>
</TD><TD>C</TD><TD><A HREF=#k:color>color</A>
</TD><TD ALIGN="CENTER">black</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:penwidth HREF=#d:penwidth>penwidth</A>
</TD><TD>CNE</TD><TD>double</TD><TD ALIGN="CENTER">1.0</TD><TD>0.0</TD><TD></TD> </TR>
 <TR><TD><A NAME=a:peripheries HREF=#d:peripheries>peripheries</A>
</TD><TD>NC</TD><TD>int</TD><TD ALIGN="CENTER">shape default(nodes)<BR>1(clusters)</TD><TD>0</TD><TD></TD> </TR>
 <TR><TD><A NAME=a:pin HREF=#d:pin>pin</A>
</TD><TD>N</TD><TD><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">false</TD><TD></TD><TD>fdp, neato only</TD> </TR>
 <TR><TD><A NAME=a:pos HREF=#d:pos>pos</A>
</TD><TD>EN</TD><TD><A HREF=#k:point>point</A>
<BR><A HREF=#k:splineType>splineType</A>
</TD><TD ALIGN="CENTER"></TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:quadtree HREF=#d:quadtree>quadtree</A>
</TD><TD>G</TD><TD><A HREF=#k:quadType>quadType</A>
<BR><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">normal</TD><TD></TD><TD>sfdp only</TD> </TR>
 <TR><TD><A NAME=a:quantum HREF=#d:quantum>quantum</A>
</TD><TD>G</TD><TD>double</TD><TD ALIGN="CENTER">0.0</TD><TD>0.0</TD><TD></TD> </TR>
 <TR><TD><A NAME=a:rank HREF=#d:rank>rank</A>
</TD><TD>S</TD><TD><A HREF=#k:rankType>rankType</A>
</TD><TD ALIGN="CENTER"></TD><TD></TD><TD>dot only</TD> </TR>
 <TR><TD><A NAME=a:rankdir HREF=#d:rankdir>rankdir</A>
</TD><TD>G</TD><TD><A HREF=#k:rankdir>rankdir</A>
</TD><TD ALIGN="CENTER">TB</TD><TD></TD><TD>dot only</TD> </TR>
 <TR><TD><A NAME=a:ranksep HREF=#d:ranksep>ranksep</A>
</TD><TD>G</TD><TD>double<BR><A HREF=#k:doubleList>doubleList</A>
</TD><TD ALIGN="CENTER">0.5(dot)<BR>1.0(twopi)</TD><TD>0.02</TD><TD>twopi, dot only</TD> </TR>
 <TR><TD><A NAME=a:ratio HREF=#d:ratio>ratio</A>
</TD><TD>G</TD><TD>double<BR>string</TD><TD ALIGN="CENTER"></TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:rects HREF=#d:rects>rects</A>
</TD><TD>N</TD><TD><A HREF=#k:rect>rect</A>
</TD><TD ALIGN="CENTER"></TD><TD></TD><TD>write only</TD> </TR>
 <TR><TD><A NAME=a:regular HREF=#d:regular>regular</A>
</TD><TD>N</TD><TD><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">false</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:remincross HREF=#d:remincross>remincross</A>
</TD><TD>G</TD><TD><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">true</TD><TD></TD><TD>dot only</TD> </TR>
 <TR><TD><A NAME=a:repulsiveforce HREF=#d:repulsiveforce>repulsiveforce</A>
</TD><TD>G</TD><TD>double</TD><TD ALIGN="CENTER">1.0</TD><TD>0.0</TD><TD>sfdp only</TD> </TR>
 <TR><TD><A NAME=a:resolution HREF=#d:resolution>resolution</A>
</TD><TD>G</TD><TD>double</TD><TD ALIGN="CENTER">96.0<BR>0.0</TD><TD></TD><TD>svg, bitmap output only</TD> </TR>
 <TR><TD><A NAME=a:root HREF=#d:root>root</A>
</TD><TD>GN</TD><TD>string<BR><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">&#60;none&#62;(graphs)<BR>false(nodes)</TD><TD></TD><TD>circo, twopi only</TD> </TR>
 <TR><TD><A NAME=a:rotate HREF=#d:rotate>rotate</A>
</TD><TD>G</TD><TD>int</TD><TD ALIGN="CENTER">0</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:rotation HREF=#d:rotation>rotation</A>
</TD><TD>G</TD><TD>double</TD><TD ALIGN="CENTER">0</TD><TD></TD><TD>sfdp only</TD> </TR>
 <TR><TD><A NAME=a:samehead HREF=#d:samehead>samehead</A>
</TD><TD>E</TD><TD>string</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>dot only</TD> </TR>
 <TR><TD><A NAME=a:sametail HREF=#d:sametail>sametail</A>
</TD><TD>E</TD><TD>string</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>dot only</TD> </TR>
 <TR><TD><A NAME=a:samplepoints HREF=#d:samplepoints>samplepoints</A>
</TD><TD>N</TD><TD>int</TD><TD ALIGN="CENTER">8(output)<BR>20(overlap and image maps)</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:scale HREF=#d:scale>scale</A>
</TD><TD>G</TD><TD>double<BR><A HREF=#k:point>point</A>
</TD><TD ALIGN="CENTER"></TD><TD></TD><TD>not dot</TD> </TR>
 <TR><TD><A NAME=a:searchsize HREF=#d:searchsize>searchsize</A>
</TD><TD>G</TD><TD>int</TD><TD ALIGN="CENTER">30</TD><TD></TD><TD>dot only</TD> </TR>
 <TR><TD><A NAME=a:sep HREF=#d:sep>sep</A>
</TD><TD>G</TD><TD><A HREF=#k:addDouble>addDouble</A>
<BR><A HREF=#k:addPoint>addPoint</A>
</TD><TD ALIGN="CENTER">+4</TD><TD></TD><TD>not dot</TD> </TR>
 <TR><TD><A NAME=a:shape HREF=#d:shape>shape</A>
</TD><TD>N</TD><TD><A HREF=#k:shape>shape</A>
</TD><TD ALIGN="CENTER">ellipse</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:shapefile HREF=#d:shapefile>shapefile</A>
</TD><TD>N</TD><TD>string</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:showboxes HREF=#d:showboxes>showboxes</A>
</TD><TD>ENG</TD><TD>int</TD><TD ALIGN="CENTER">0</TD><TD>0</TD><TD>dot only</TD> </TR>
 <TR><TD><A NAME=a:sides HREF=#d:sides>sides</A>
</TD><TD>N</TD><TD>int</TD><TD ALIGN="CENTER">4</TD><TD>0</TD><TD></TD> </TR>
 <TR><TD><A NAME=a:size HREF=#d:size>size</A>
</TD><TD>G</TD><TD>double<BR><A HREF=#k:point>point</A>
</TD><TD ALIGN="CENTER"></TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:skew HREF=#d:skew>skew</A>
</TD><TD>N</TD><TD>double</TD><TD ALIGN="CENTER">0.0</TD><TD>-100.0</TD><TD></TD> </TR>
 <TR><TD><A NAME=a:smoothing HREF=#d:smoothing>smoothing</A>
</TD><TD>G</TD><TD><A HREF=#k:smoothType>smoothType</A>
</TD><TD ALIGN="CENTER">"none"</TD><TD></TD><TD>sfdp only</TD> </TR>
 <TR><TD><A NAME=a:sortv HREF=#d:sortv>sortv</A>
</TD><TD>GCN</TD><TD>int</TD><TD ALIGN="CENTER">0</TD><TD>0</TD><TD></TD> </TR>
 <TR><TD><A NAME=a:splines HREF=#d:splines>splines</A>
</TD><TD>G</TD><TD><A HREF=#k:bool>bool</A>
<BR>string</TD><TD ALIGN="CENTER"></TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:start HREF=#d:start>start</A>
</TD><TD>G</TD><TD><A HREF=#k:startType>startType</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>fdp, neato only</TD> </TR>
 <TR><TD><A NAME=a:style HREF=#d:style>style</A>
</TD><TD>ENCG</TD><TD><A HREF=#k:style>style</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:stylesheet HREF=#d:stylesheet>stylesheet</A>
</TD><TD>G</TD><TD>string</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>svg only</TD> </TR>
 <TR><TD><A NAME=a:tailURL HREF=#d:tailURL>tailURL</A>
</TD><TD>E</TD><TD><A HREF=#k:escString>escString</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>svg, map only</TD> </TR>
 <TR><TD><A NAME=a:tail_lp HREF=#d:tail_lp>tail_lp</A>
</TD><TD>E</TD><TD><A HREF=#k:point>point</A>
</TD><TD ALIGN="CENTER"></TD><TD></TD><TD>write only</TD> </TR>
 <TR><TD><A NAME=a:tailclip HREF=#d:tailclip>tailclip</A>
</TD><TD>E</TD><TD><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER">true</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:tailhref HREF=#d:tailhref>tailhref</A>
</TD><TD>E</TD><TD><A HREF=#k:escString>escString</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>svg, map only</TD> </TR>
 <TR><TD><A NAME=a:taillabel HREF=#d:taillabel>taillabel</A>
</TD><TD>E</TD><TD><A HREF=#k:lblString>lblString</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:tailport HREF=#d:tailport>tailport</A>
</TD><TD>E</TD><TD><A HREF=#k:portPos>portPos</A>
</TD><TD ALIGN="CENTER">center</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:tailtarget HREF=#d:tailtarget>tailtarget</A>
</TD><TD>E</TD><TD><A HREF=#k:escString>escString</A>
</TD><TD ALIGN="CENTER">&#60;none&#62;</TD><TD></TD><TD>svg, map only</TD> </TR>
 <TR><TD><A NAME=a:tailtooltip HREF=#d:tailtooltip>tailtooltip</A>
</TD><TD>E</TD><TD><A HREF=#k:escString>escString</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>svg, cmap only</TD> </TR>
 <TR><TD><A NAME=a:target HREF=#d:target>target</A>
</TD><TD>ENGC</TD><TD><A HREF=#k:escString>escString</A>
<BR>string</TD><TD ALIGN="CENTER">&#60;none&#62;</TD><TD></TD><TD>svg, map only</TD> </TR>
 <TR><TD><A NAME=a:tooltip HREF=#d:tooltip>tooltip</A>
</TD><TD>NEC</TD><TD><A HREF=#k:escString>escString</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD>svg, cmap only</TD> </TR>
 <TR><TD><A NAME=a:truecolor HREF=#d:truecolor>truecolor</A>
</TD><TD>G</TD><TD><A HREF=#k:bool>bool</A>
</TD><TD ALIGN="CENTER"></TD><TD></TD><TD>bitmap output only</TD> </TR>
 <TR><TD><A NAME=a:vertices HREF=#d:vertices>vertices</A>
</TD><TD>N</TD><TD><A HREF=#k:pointList>pointList</A>
</TD><TD ALIGN="CENTER"></TD><TD></TD><TD>write only</TD> </TR>
 <TR><TD><A NAME=a:viewport HREF=#d:viewport>viewport</A>
</TD><TD>G</TD><TD><A HREF=#k:viewPort>viewPort</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:voro_margin HREF=#d:voro_margin>voro_margin</A>
</TD><TD>G</TD><TD>double</TD><TD ALIGN="CENTER">0.05</TD><TD>0.0</TD><TD>not dot</TD> </TR>
 <TR><TD><A NAME=a:weight HREF=#d:weight>weight</A>
</TD><TD>E</TD><TD>int<BR>double</TD><TD ALIGN="CENTER">1</TD><TD>0(dot,twopi)<BR>1(neato,fdp)</TD><TD></TD> </TR>
 <TR><TD><A NAME=a:width HREF=#d:width>width</A>
</TD><TD>N</TD><TD>double</TD><TD ALIGN="CENTER">0.75</TD><TD>0.01</TD><TD></TD> </TR>
 <TR><TD><A NAME=a:xdotversion HREF=#d:xdotversion>xdotversion</A>
</TD><TD>G</TD><TD>string</TD><TD ALIGN="CENTER"></TD><TD></TD><TD>xdot only</TD> </TR>
 <TR><TD><A NAME=a:xlabel HREF=#d:xlabel>xlabel</A>
</TD><TD>EN</TD><TD><A HREF=#k:lblString>lblString</A>
</TD><TD ALIGN="CENTER">""</TD><TD></TD><TD></TD> </TR>
 <TR><TD><A NAME=a:xlp HREF=#d:xlp>xlp</A>
</TD><TD>NE</TD><TD><A HREF=#k:point>point</A>
</TD><TD ALIGN="CENTER"></TD><TD></TD><TD>write only</TD> </TR>
 <TR><TD><A NAME=a:z HREF=#d:z>z</A>
</TD><TD>N</TD><TD>double</TD><TD ALIGN="CENTER">0.0</TD><TD>-MAXFLOAT<BR>-1000</TD><TD></TD> </TR>
</TABLE>
</BODY>
</HTML>
{:/nomarkdown}
