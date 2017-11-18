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
</BODY>
<pre>
\section{Constrained Multidimensional Scaling Algorithm} \label{algorithm}

In this section, we describe the Constrained Multi-Dimensional Scaling (CMDS)
algorithm for CorrelatedMultiples. The proposed algorithm is also applicable
to general graph visualization.

\subsection{Model Formulation}
In graph drawing, stress minimization, based on multidimensional
scaling, has been applied to achieve predefined target lengths
in high quality layouts. The full stress model assumes there
are springs between all node pairs. Given a 2-D
layout where node $i$ is placed at point $p_i$, the
energy of this spring system is
\begin{equation}    \label{equation_model1}
	\sum_{\{i,j\} \in V} w_{ij}(\|p_i-p_j\| - d_{ij})^2,
\end{equation}
where $d_{ij}$ is the ideal (typically, graph-theoretic shortest path)
distance between nodes $i$ and $j$, and $w_{ij}$ is a weighting factor,
typically $1/d_{ij}^2$. A layout that minimizes the total stress
is considered optimal. We formulate the CMDS model from this basic stress model.

Given a proximity graph $G = (V,E)$, with $V$ the set of nodes
and $E$ the set of edges, and a display region $\Gamma$,
the goal is to find coordinates $p_i$ for each node $i \in V$,
such that: (1) there is no overlap between any nodes $\{i,j\} \in V$;
(2) each edge $(i,j) \in E$ is close to its ideal length;
(3) each $p_i$ is inside $\Gamma$. The first condition, no-overlap, is
needed for readability and aesthetics; the second preserves spatial proximity
of nodes in the graph. At the same time, the graph should fit in $\Gamma$ to
utilize the available space without being scaled down so much that it reduces readability.
In small-multiples, nodes are not just points but have (the same) finite area, so
the actual display area $\Gamma$ must be shrunk by the margin of half the node's width and height, so that every node can be fully displayed
as long as its center lies within $\Gamma$.
With these conditions in mind, we propose the CMDS model
\begin{equation}	\label{equation_model2}
	\min \sum_{(i,j) \in E} w_{ij}(\|p_i-p_j\| - d_{ij})^2 + \alpha \sum_{p_i \notin \Gamma} (\|p_i-\Gamma(p_i)\|)^2,
\end{equation}
where $d_{ij}$ is the ideal distance between nodes $i$ and $j$,
$w_{ij}$ is a weighting factor, $\alpha \geq 0$ is a parameter to be determined, and
$\Gamma(p_i)$ denotes the projection of $p_i$ to the region $\Gamma$ -- if $p_i$ is outside of
$\Gamma$, the projection $\Gamma(p_i)$ gives the point on the boundary of $\Gamma$ that is closest to $p_i$;
otherwise $\Gamma(p_i) = p_i$.

The first term of (\ref{equation_model2}) encodes the stress energy
between nodes sharing an edge. The initial value of $p_i$ is
determined by a standard MDS embedding, or may be supplied by the user.
Subsequently, to maintain the proximity relation, we follow the
PRISM approach~\cite{PRISM2009}: we take a Delaunay triangulation
of the layout, set the graph $G$ to the proximity graph generated
by this triangulation (thus, $E$ is the set of triangulation edges),
and solve to preserve node distances along triangulation edges.
The rigidity of the triangulation provides sufficient scaffolding to
constrain the relative positions of the components, and helps preserve
the global structure of the original MDS layout.
Fortunately, we only need to consider pairs of nodes that share an edge,
which yields a sparse model that can be solved much faster than a full
stress energy model (as in (\ref{equation_model1})).
For each edge ($i,j$), the amount of overlap on the line $x_{i} \to x_{j}$ is denoted by
$\delta_{ij}$ ($\delta_{ij}$ is set to 0 if no collision is detected),
and the ideal distance is set as
\begin{equation}    \label{ideal_distance}
d_{ij} = l_{ij} + \delta_{ij},
\end{equation}
where $l_{ij}$ is the original distance between node $i$ and $j$.

The second term of (\ref{equation_model2}) is the stress energy
between node $i$ and $\Gamma$ if node $i$ is outside of $\Gamma$, and can
also be written as
\begin{equation}
\alpha \sum_{p_i \notin \Gamma} (\|p_i-\Gamma(p_i)\| - 0)^2,
\end{equation}
which sets the ideal distance between node $i$ and its
projected point $\Gamma(p_i)$ to 0.
By minimizing this combined stress energy,
nodes will be constrained within $\Gamma$ as $\alpha$ gets progressively larger,
provided that $\Gamma$ is large enough relative to the total node area.

Taking the gradient of (\ref{equation_model2}) with respect to
$p_i$, assuming that $\Gamma(p_i)$ is constant, and setting the gradient to zero gives
\begin{equation}    \label{equation_solver}
 \sum_{j:\ (i,j) \in E} w_{ij}(\|p_i-p_j\| - d_{ij})\frac{(p_i - p_j)}{\|p_i-p_j\|} + \alpha (p_i-\Gamma(p_i)) = 0.
\end{equation}
\noindent By algebraic manipulation of (\ref{equation_solver}), keeping linear terms involving $p_i$ to the left and moving the rest to the right of the
equation, we obtain the following iterative scheme

\begin{equation}    \label{iterative_solver}
p_i  \gets  \frac{
  \sum_{(i,j) \in E} w_{ij}\left(p_j + d_{ij}  \frac{p_i - p_j}{\|p_i-p_j\|}\right) + \alpha \Gamma(p_i)}{\sum_{(i,j) \in E} w_{ij}\ +\ \alpha}.
\end{equation}

\noindent While we could apply a stress majorization method~\cite{Gansner2004_GD_StressMajorization} to solve (\ref{equation_model2}), we chose the above iterative
process because it does not require the solution of
a linear system. This makes it easier to implement in languages like JavaScript
that do not have sophisticated numerical libraries. More importantly,
by rendering the iterative process, we can make a visually stable
animation, from an initial unconstrained configuration, to the final
constrained layout. This is shown in the video that accompanies this paper.

After $N$ iterations of (\ref{iterative_solver}), the layout
may still have overlaps and nodes outside display space. If so,
we regenerate the proximity graph using a Delaunay triangulation
augmented with additional edges for overlapping nodes, calculate ideal
edge lengths, and rerun the energy minimization step. When the total stress no longer decreases, the final layout is aligned horizontally and vertically using a rounding function:
\begin{equation}    \label{rounding_func}
\begin{cases}
x_{a} = \textit{round}((x - w/2)/w) \times w + w/2 \\ \\
y_{a} = \textit{round}((y - h/2)/h) \times h + h/2
\end{cases},
\end{equation}
where $x$ and $y$ are the coordinates of the center of a node, $w$ and $h$ are the width and height of the node, $x_a$ and $y_a$ are the aligned center of the node, and the \textit{round} function gives the integer that is closest to the input value. We refer to this as the Constrained Multi-Dimensional Scaling (CMDS) algorithm, shown in Algorithm~\ref{alg1}.

\begin{algorithm}
\caption{Constrained Multi-Dimensional Scaling (CMDS)} \label{alg1}
\begin{algorithmic}
\State Input: the coordinates $p_i$ of data items; the region $\Gamma$.
\State Construct a proximity graph $G$ by Delaunay triangulation.
\Repeat
\State Calculate the ideal distance according to (\ref{ideal_distance}) for all edges.
\While{(\text{iteration} $< N$)}
\State Update each $p_i$ according to (\ref{iterative_solver}).
\EndWhile
\State Construct a proximity graph $G$ by Delaunay triangulation.
\State Augment $G$ with edges from pairs of nodes that overlap.
\Until{(\text{All data items are inside $\Gamma$} with no overlap)}
\State Align the data items horizontally and vertically according to (\ref{rounding_func}).
\end{algorithmic}
\end{algorithm}

To avoid introducing overlaps after the alignment, input nodes are scaled so that
the total sum of their area is sufficiently less than $A_\Gamma$; otherwise, the CMDS algorithm has to be rerun to remove the overlap, which increases running time and may not generate a desirable layout. For example, if $\Gamma$ is square (with an area of $|\Gamma|$), we can set the area of each node $A_i$ to
\begin{equation}
A_i = \frac{|\Gamma|}{(\sqrt{|V|} + 1)^2}.
\end{equation}

We now discuss the complexity of the CMDS algorithm.
A Delaunay triangulation can be found in $O(|V| log |V|)$
time \cite{Fortune1986}.
A scan-line algorithm to find all the overlaps can be implemented in
$O(l |V| (\log|V|+l))$ time \cite{Dwyer_Marriott_Stuckey_2005}, where $l$ is the number of overlaps. A sweep-line algorithm has a similar time complexity ($O((l + |V|) \log|V|)$) \cite{Berg2008}. Because
we only apply the scan-line algorithm after no more node overlaps
are found along proximity graph edges, $l$ is usually a very small number,
hence this step can be considered as having complexity $O(|V|\log|V|)$.
Calculating ideal distances takes $O(|E|)$ time, and iteratively solving the proposed
model takes $O(N|E|)$ time when edges for each node are
pre-stored. Therefore, overall, Algorithm~\ref{alg1} takes
$O(c(|V|log|V| + |E| + N|E|))$ time, where $c$ is the total
number of iterations in the outer loop of Algorithm~\ref{alg1}. In our
implementation (described in the next subsection), $N = 20$ is generally
enough to achieve acceptable layouts.

\subsection{Implementation}

We implemented the CMDS algorithm in HTML5 and Javascript.
A demonstration of CorrelatedMultiples generated by CMDS
is presented in a video, at \url{http://vimeo.com/50263134}.
Because we did not find a suitable red-black tree library in Javascript for
implementing the scan-line algorithm, we substituted a na\"{\i}ve
$O(|V|^2)$ node collision detection algorithm.
This is reasonable because a typical computer display of about $1000\times 1000$ pixels
can only fit about 400 objects if we allow each object to be about $50\times 50$ pixels,
so $|V|$ is not that large. For larger $|V|$, a log-linear collision detection algorithm
such as a scan-line algorithm would still be desirable.

\begin{figure}[htb!]
\centering
 \includegraphics[width = 0.9\linewidth]{image/stress_note.pdf} \\
\caption{Stress-AL Pareto curves showing progression of
iteration applied to 100 nodes in a $1100\times1100$ pixel screen space: (top) for the number of inner iterations $N$ in Algorithm~\ref{alg1},
too large or too small values will lead to high stress or poor space utilization;
(bottom) for $\alpha$ in (\ref{iterative_solver}), large or small values will result in
high stress or poor space utilization.\label{fig_stress}}
\end{figure}

Several additional parameters need to be defined in an implementation, such as the number
of iterations $N$ in Algorithm~\ref{alg1}, and the parameter $\alpha$ in
(\ref{iterative_solver}). Our approach is to study the trade-off (Pareto curve)
between stress and display-space utilization, and choose
parameters that yield the best results. We first define the area loss measure ($AL$)

\begin{equation}   \label{AL}
AL = 1 - \frac{\sum_{i \in V} A_i}{B_V + t * \sum_{\{i,j\} \in V} A_i \cap A_j},
\end{equation}
\noindent where $A_i$ is the area that node $i$ covers, $B_V$ is the bounding
box of all nodes, and $t$ is a penalty factor for node overlaps. This penalty must be accounted for,
because otherwise a layout where every node sits on the same point would waste the least area. Since overlap removal is essential for small multiples, we set $t = 10$ after testing different values experimentally. The stress with reference to the initial structure is denoted as
\begin{equation}   \label{equation_stess}
Stress = \sum_{(i,j) \in E} w_{ij}(s\|p_i-p_j\| - l_{ij})^2,
\end{equation}
\noindent where $w_{ij}$ is a weighting factor, $l_{ij}$ is the initial length of
edge $(i,j)$, and $s$ is a scaling factor that minimizes
(\ref{equation_stess})
\begin{equation}
s = \frac{\sum_{(i,j) \in E} w_{ij}l_{ij}\|p_i-p_j\|}{\sum_{(i,j) \in E} w_{ij}\|p_i-p_j\|^2}.
\end{equation}
\noindent For each parameter, our goal is to find a value that achieves good space usage
while keeping the stress low.

Given an initial placement, we run CMDS and calculate area loss (\ref{AL}) and stress (\ref{equation_stess}) for different
settings of the number of iterations $N$ in Algorithm~\ref{alg1} and
$\alpha$ in (\ref{iterative_solver}). As shown in Figure~\ref{fig_stress}~(top),
when the number of inner iterations
$N$ is too small ($N = 1$), space utilization is poor.
This is because, without enough
iterations of (\ref{iterative_solver}), the ideal distance is updated based on a
configuration that has not yet converged. Too many inner iterations ($N \geq
40$) might result in higher stress because of doing too much work to
satisfy ideal edge length that were determined before the inner iteration starts,
and most of the overlaps are usually removed after a few iterations.
Excessive iterations without rechecking overlap generally makes layouts
that deviate too much from the initial layout, increasing the stress.
Therefore, based on Figure~\ref{fig_stress}~(top), we set $N =
20$ to balance stress reduction with area utilization.
Figure~\ref{fig_stress}~(bottom) demonstrates the effect of $\alpha$ in
(\ref{iterative_solver}) with the Pareto curve of stress and area
loss. If $\alpha$ is too small ($\alpha = 0.01$), we are
essentially solving a conventional sparse stress model without the
boundary constraint; on the other hand, if $\alpha$ is large
($\alpha \geq 0.25$), flipping may occur because of abrupt changes of
nodes close to the boundary.  Experimentally, we found that
$\alpha = 0.1$ yields good results.

We applied K-means clustering based on Euclidean distance in the
MDS initial layout. Haroz \textit{et al.}~\cite{Haroz2012} recently showed
that a compromise must be made between the number of nominal categories
and the perceptual complexity of a visualization, and user performance
is significantly limited beyond 5 categories. Based on their findings
and our experiments, we chose K to be less than 5 for differentiating groups in
CorrelatedMultiples. As an alternative, we also experimented with modularity
clustering \cite{Newman2006} on the similarity graph, which gives comparable
clustering in general, and automatically determines the number of clusters.
The downside is that with modularity clustering some clusters may become
spatially dis-contiguous, due to the uncoupling of the clustering and layout.

\subsection{Performance}    \label{sec_performance}

To investigate the performance of CMDS,
we tested our implementation in Google Chrome on an
i7-2600, 3.4 GHz CPU computer. We started
with 20 to 400 nodes at randomly generated positions.
The CPU time needed for CMDS to converge is shown in Table~\ref{time}.
As the number of nodes increases, the solver costs more time per iteration.
Its running time is dominated by the na\"{\i}ve
node collision detection algorithm mentioned earlier,
which has $O(|V|^2)$ complexity.
Fortunately, in our case $|V|$ is not expected to be large.
Moreover, we render the solution process as an animation, and
we observe that rendering time dominates the solver's running time,
so our solver's performance is satisfactory for a prototype.
For larger $|V|$, implementing a scan-line algorithm would speed
up the solution process considerably, and reduce its time
complexity to $O(c(|V|log|V| + |E| + N|E|))$. (For reference, the
PRISM algorithm~\cite{PRISM2009}, on which the CMDS solver is based,
takes a few seconds to remove overlaps in tens of thousand of nodes.)

\begin{table}
\centering
\begin{tabular}{|p{1.cm}|p{1.25cm}|p{2.00cm}|p{2cm}|}
\hline
  $|V|$ & Time & \#Iterations~(c) & Time/Iteration\\
\hline
20 & 0.05 & 32 & 0.001 \\
40 & 0.05 & 10 & 0.005 \\
80 & 0.28 & 23 & 0.012 \\
160 & 1.56 & 40 & 0.039 \\
240 & 1.78 & 41 & 0.043 \\
320 & 4.67 & 49 & 0.095 \\
400 & 6.22 & 44 & 0.141 \\
\hline
\end{tabular}
\caption{CPU time (in seconds) of CMDS algorithm.} \label{time}
\end{table}
\section{Applications} \label{application}

Next we will discuss application scenarios and describe several
interesting findings. We studied the effectiveness of CorrelatedMultiples
in two applications: stock market trend analysis,
and Madden-Julian oscillation in climate modeling.

\subsection{Stock Market Trend Analysis}

\subsubsection{Application Scenario}

The Dow Jones Industrial Average (DJIA) is one of the most widely
followed stock market indices. It has been tracked since May 26,
1896, and shows how the stocks of 30 large publicly-owned
U.S. companies are traded. Because the DJIA represents some
of the largest companies, large fluctuations can indicate
losses and potential pullbacks in the U.S. economy (shown in Figure
\ref{figure_djia} (left)), or signify real or anticipated high
levels of growth and profits (shown in Figure \ref{figure_djia}
(right)). While studying historical DJIA trends and variations can
help individuals and companies to make investment decisions, the
patterns are often too complicated to remember and compare since
trends can vary widely. Understanding similarities and
contrasts in annual trends over the lifetime of the index may
help analysts to discern overall patterns.

\subsubsection{Dataset}

We studied DJIA trends by year, from 1897 to 2011. Each year contains
about 250 time steps (all weekdays, excluding holidays). Since we
are interested in relative fluctuations in the DJIA, for each year
we placed the beginning of the year at the origin, and plot the
percentage of change at each time step. Examples of DJIA trend
charts are shown in Figure~\ref{figure_djia}.

\begin{figure}[htb!]
\centering
\includegraphics[width=0.95\linewidth]{image/djia.pdf}
\caption{The Dow Jones Industrial Average (DJIA) trends: (left) a falling trend can indicate losses and potential declines in the U.S. economy; (right) a growing trend may signify high levels of growth and profits.} \label{figure_djia}
\end{figure}

\subsubsection{Visual Analysis} \label{djia_analysis}

To measure similarity in the DJIA time series between two years,
we use the DTW-based similarity measure described in Section~\ref{sec_DTW}.
Based on the similarity relationship obtained from DTW,
we applied CMDS to render CorrelatedMultiples for DJIA
trends. Each of the yearly trends was depicted as a time-series chart,
labeled by year. Figure \ref{f_teaser} shows two different visualizations
of the DJIA over 115 years. In the sequential small multiples (left),
charts were arranged in the increasing order of year, while the
charts in CorrelatedMultiples (right) were placed in a spatially
coherent manner.

In the CorrelatedMultiples of Figure \ref{f_teaser} (right), we can see three
large clusters, which can be identified as: falling trends, stable trends,
and rising trends (from top to bottom).
In general, the closer to the top in the figure, the more the DJIA fell
over time in the corresponding year. Near the bottom of the figure,
we see increases in the index over a year. As expected, stable
trends are placed in the middle of the figure, between the rising and falling trends.
Because of the spatial proximity
that the CorrelatedMultiples preserve, trends of similar fluctuations
are placed
nearby, which helps us identify similar patterns. For example,
most of the trends at the top of the figure in the CorrelatedMultiples reflect severe economic crises,
such as in 2008, 1907 and 1931 (from left to right in the top row),
all of which saw sharp declines (around 50\% during the year).
These correspond to \textit{the Global
Financial Crisis}, \textit{the 1907 Bankers' Panic} and \textit{the Great Depression}, respectively.
Interestingly, a dramatic rising trend of the year 1933 in the bottom-left of the CorrelatedMultiples
(which is the farthest from the year 1931 in the visualization)
represents a great recovery from the Great Depression --- more
than 75\% of the nation's banks had been reopened and several acts
were passed by the U.S. Congress to revive the economy in that
year. With CorrelatedMuliples, we are able to quickly identify similar
and dissimilar trends, based on spatial locations.

\subsection{Madden-Julian Climate Modeling}

\subsubsection{Application Scenario}

Madden-Julian Oscillation (MJO) is a phenomenon manifested as
intra-annual weather fluctuation in the tropics, mainly in the Indian
and western Pacific Oceans. It is considered by some to be a key
mechanism explaining weather patterns in those regions, and involves
relationships between the atmosphere and ocean currents.
It is often characterized by an eastward progression of enhanced
and suppressed tropical rainfall. Analyzing water vapor intensity over time
and a range of longitudes allows one to gain better understanding about how
MJO behaves over time.
Figure \ref{f_mjo} shows two examples of water vapor distribution, visualized as area charts.
The middle region has higher water vapor in Figure~\ref{f_mjo} (left), while the water
vapor in Figure~\ref{f_mjo} (right) generally increases as it moves eastward. However,
as the number of time steps increases, it becomes more difficult
to examine individual distributions. Moreover, since MJO is
periodic, peak water vapor may occur in the same area at
some previous time steps. Visual comparison can be improved
if similar distributions at different time steps are placed together,
to enable better understanding of periodic patterns.

\subsubsection{Dataset}

We applied CorrelatedMultiples to an MJO simulation performed by
the Pacific Northwest National Laboratory \cite{Samson2011}. The data set made
by this simulation consists of 479 time steps, recorded at 6 hour intervals
(from October 1, 2007 to January 29, 2008).
We used the time-varying water
vapor intensity collected in the region of $[60^{\circ}E -
150^{\circ}E]$ over time as the raw
data, and sampled it every 4 time steps to obtain 119 days
of input data. For each selected time step, we
computed the distribution of water vapor by longitude in the
given region, and rendered the distribution as 
an area chart (as shown in Figure \ref{f_mjo}).

\begin{figure}[htb!]
\centering
\includegraphics[width=0.8\linewidth]{image/mjo.pdf}
\caption{Aggregated distributions of water vapor mixing ratios
in the Madden-Julian Oscillation (MJO) simulation in the region of $[60^{\circ}E - 150^{\circ}E] $ at two different time steps: (left) the middle and last region have higher water vapor; (right) the peak of the water vapor has moved eastward.} \label{f_mjo}
\end{figure}

\subsubsection{Visual Analysis}

\begin{figure}[htb!]
\centering
\includegraphics[width=\linewidth]{image/MJO_cmds119.pdf}
\caption{Correlated water vapor distributions in the Madden-Julian Oscillation (MJO) simulation visualized by CorrelatedMultiples.  Each area chart represents one day of simulation. The area charts are divided into four clusters based on their similarity measured by Earth Mover's Distance (EMD). Day 45 and 104, and day 10 and 114 are highlighted to imply periodic patterns during the MJO evolution since they are similar but with a relatively large time interval.
}  \label{f_MJO95}
\end{figure}

Since scientists are generally interested in studying time-varying patterns
of MJO, such as shifts in the peaks,
we normalized the water vapor distribution at the selected time step,
and computed Earth Mover's Distance (EMD) \cite{Rubner1998} to measure the similarity
of the distributions between each pair of the selected time
steps. EMD assigns a large dissimilarity to two time steps if their peaks
are far apart. We generated CorrelatedMultiples using this
dissimilarity measure. Each distribution was rendered using an
area chart labeled by its time step,
and the ideal distance $l_{ij}$ in (\ref{ideal_distance}) of
every pair of distributions was set to the EMD value.

Figure \ref{f_MJO95} shows CorrelatedMultiples of water vapor
distributions from the MJO simulation.
Time steps in the same cluster have similar distributions.
Since rainfall oscillation is reflected in the shape of water
vapor intensity, we can observe some interesting patterns
from the top-right to the bottom-left of Figure \ref{f_MJO95}: in
cluster \textbf{A}, peaks generally showed up on the right, which means
tropical rainfall reached its max in the east side of the given
region; while in cluster \textbf{B}, most of the peaks appeared in the
middle of the charts; in cluster \textbf{C}, more peaks appeared at
the west and east sides of the given region; and in cluster
\textbf{D}, most charts have multiple peaks, evenly distributed, which
suggests the MJO occurred more frequently in the corresponding time
steps of this cluster. Furthermore, it is apparent from the figure that
some nearby charts with a large time interval have similar
distributions, such as day 45 and 104, and day 10 and 114 (highlighted
in the figure). This seems to imply a periodic pattern as MJO progresses.

In summary, by means of CorrelatedMultiples, we were are to identify
time steps with similar distributions, and observe certain
periodic behavior, without having to compare all pairs of time steps.
The spatial proximity preserved by CorrelatedMultiples also allows
comparing and analyzing distributions at the cluster level.
\section{Conclusion and Future Work} \label{conclusion}

We described CorrelatedMultiples, a spatially coherent small multiples
visualization. CorrelatedMultiples retain the major advantages of
small multiples to allow side-by-side visual comparison, but also
exhibit spatial locality based on similarity in the data. Layouts
are made by a novel Constrained Multi-Dimensional Scaling (CMDS)
algorithm. We explored the effectiveness of CorrelatedMultiples
over sequential small multiples in a controlled user study,
and quantitatively evaluated the quality and performance of the
CMDS method compared with previous methods. We showed the benefits
of CorrelatedMultiples to applications in stock market trend analysis
and Madden-Julian oscillation climate analysis.

Although in this paper, CMDS was applied only to arrange
items in rectangular spaces, the algorithm can be applied to regions
with other shapes, such as circles or the shape of a country's
geographical boundary. In the future, we plan to adapt CMDS to
dynamic visualization of small multiples where we want to simultaneously
maintain layout stability and maximize screen space utilization.

\section{Design of CorrelatedMultiples} \label{design}

This section presents the CorrelatedMultiples design.
We outline a set of goals and potential challenges, explain
how the proposed design addresses these, and give an overview
of a prototype system.

\begin{figure*}[htb!]
\centering
\includegraphics[width=\linewidth]{image/PipelineOverview.pdf}
\caption{Overview of the CorrelatedMultiples pipeline: (a) selecting
data of interest, analyzing similarity, and finding a similarity-based
clustering; (b) placing data items based on similarity (clusters are
indicated by color); (c) computing a proximity graph by Delaunay
triangulation to constrain relative positions of items; (d) adjusting
the layout by the Constrained Multi-Dimensional Scaling (CMDS) algorithm; (e) aligning the final layout
horizontally and vertically.}\label{fig_pipeline}
\end{figure*}

%In addition, displaying
%many slices of information within the eye span can help viewers
%detect contrasts and correlations at a glance with uninterrupted
%visual reasoning \cite{Tufte1990}.

%In the rest of this section, we first discuss the challenges of designing
%effective spatially coherent small multiples, then describe our design methodology and provide
%an overview of our approach.
%\subsection{Usage Scenarios}
%
%\subsubsection{System monitoring using small multiples}
%
%John is a system administration staff in a telecommunication
%corporation. Right now, his primary job is to keep track of system
%resources for dozens of devices and report
%any undesirable state to the maintenance team. In particular, he needs
%to monitor CPU load and memory usages for each device. However, as he
%juggles increasing numbers of devices, he realized that he can hardly
%keep up-to-date with all the devices since he has to inspect charts of
%logged time series of system resources one at a time. To maintain awareness of the system
%states of multiple devices, he generates small multiples to view
%multiple charts simultaneously on screen. While they reduce the burden
%of frequent view changes, he still has a difficult time noticing which
%devices have potential problems, and how severe the problems could be
%compared with the normal state. Being able to arrange charts for
%multiple devices of similar performance states close to one another
%might have helped him to monitor groups of devices together and detect
%abnormal states more quickly and easily.
%
%\subsubsection{Visual exploration of graphs}
%{\bf this is not related to the application examples later, change??}
%
%Mary is a marketing expert in a car company. Every day, she spends
%about an hour on Twitter to analyze consumer postings to estimate the
%immediate effect of the company's marketing campaigns. What is the
%most popular car people are talking about? What are the reviews of the
%latest model? How many consumers have purchased a new car because of
%the recent promotion? Currently Mary's strategy is to extract
%discussions related to her company from Twitter, and visualize tweets
%as a graph where nodes are represented by users' profile
%pictures. Although Mary likes this visualization as tweets discussing
%similar topic are placed together with labels showing the topic
%keywords, she still has trouble exploring the tweets once the size of
%graph goes beyond the computer screen. Scaling down the graph will
%make pictures and labels hardly legible, while frequent zooming and
%panning on the graph will consume much more time and make it difficult
%to compare multiple topics. It may have benefited her a lot if she
%could see all nodes legibly within the available screen simultaneously
%while their spatial relationship could be still preserved.

\subsection{Design Methodology}

The idea behind CorrelatedMultiples is to retain the key
advantages of small multiples: (1) displaying small instances of
data with a consistent representation, allowing side-by-side
visual comparison of multiple items; (2) avoiding occlusion and
clutter, hence suffering less from over-plotting.
(3) making effective use of display space compared with
non-space-filling visualizations, such as graphs and maps.
In addition, CorrelatedMultiples enhance small multiples by
(4) exploiting similarity to determine the spatial proximity of the items.

One of the challenges addressed in this study is to allow the
plotting of spatially coherent small multiples
in a constrained space. Also, in most of the space-filling visualizations (such as Treemap
\cite{Shneiderman1992}), small multiples do not encode data similarity
in the layout  -- similar objects can be
placed far apart (such as
the charts for the year 1954 and 1995 in Figure~\ref{f_teaser}
(left)), which makes it harder to compare and track the
trend of data.

To tackle this challenge,
we first model the relationship between small multiples as a similarity graph.
The similarity between two items is measured by some appropriate
domain-specific distance function on the underlying data.
Then, we embed the items in the display area so that spatial proximity reflects similarity.
Correlated items are discovered by clustering algorithms on
the similarity graph, or on the embedding.
To lay out the correlated items within the
available display space, while maintaining spatial proximity, we
propose a constrained multidimensional
scaling model described in Section \ref{algorithm}.
Also, the locations of the items are aligned
horizontally and vertically to improve the overall appearance.

\subsection{System Overview}

Figure~\ref{fig_pipeline} shows an overview of our prototype to
compute CorrelatedMultiples. Depending on the available display space
and the size of each display item, we first select a subset of the most
important items that can fit within the display, compute their similarity,
and cluster the items (Figure~\ref{fig_pipeline}(a)). Then the items are
assigned initial coordinates by multidimensional scaling
(Figure~\ref{fig_pipeline}(b)). Next, a proximity graph is derived from a
Delaunay triangulation of the items (Figure~\ref{fig_pipeline}(c)).
Then a Constrained Multi-Dimensional Scaling (CMDS) model is applied
to remove overlaps, while preserving spatial proximity and fitting the
visualization to the available display space (Figure~\ref{fig_pipeline}(d)).
Finally, items in the layout are aligned horizontally and vertically to improve
the overall appearance (Figure~\ref{fig_pipeline}(e)).

\section{Evaluation}    \label{s_evaluation}

This section describes a controlled user study that shows the effectiveness
of CorrelatedMultiples in comparison with the conventional sequential small multiples
for searching similar items, as well as a quantitative evaluation that demonstrates how the CMDS
method outperforms competing methods in preserving spatial proximity.

\subsection{User Study}

We conducted a controlled experiment to evaluate the effectiveness of
CorrelatedMultiples for visual search of similar items, compared with
conventional sequential small multiples. We recruited 12 subjects
(10 males, 2 females) having background in computer science or software
engineering. The subjects ranged in age between 24 and 34
years, with a mean age of 27. Most of the subjects (92\%) said
they were not already familiar with the notion of small multiples.

\begin{figure*}[!htb]
\centering
\includegraphics[width=\linewidth]{image/userstudy.pdf}
\caption{Time series charts used in the
  user study system. Left: Sequential small multiples (SM). Right: CorrelatedMultiples (CM). In each task a subject was presented with either a SM or a CM and asked to choose 1 (or 2, 3) similar chart(s) to the highlighted one. The user study system is presented in a video, at \url{http://vimeo.com/50263134}.} \label{fig_userstudy}
\end{figure*}

\subsubsection{Visualizations and Datasets}  \label{sec_DTW}

We collected a data set of CPU usage from 5144 network devices, sampled at
5-minute intervals over one day. We plotted the time series of 288 data
points for each device using an area chart, and randomly selected a subset of
the charts to make visualizations with conventional small multiples
(denoted as $\textbf{SM}$) and CorrelatedMultiples (denoted as
$\textbf{CM}$). The charts in \textbf{SM} were arranged by device
ID in increasing order, while those in \textbf{CM} are based on
data similarity.

To measure similarity in CPU usage, we applied \textit{Dynamic Time Warping (DTW)},
a technique that non-linearly warps one time series to the other at a
minimum cost. Given two time series, DTW finds a warping path which
minimizes the total distance between the two series. In our scenario,
since the distance between time series should account for the
difference in time, we adapted the DTW algorithm by incorporating
a locality constraint to align each time step with only its
neighboring time steps within a predefined time window $w$ (when
$w=0$, the DTW distance is equivalent to the Euclidean distance). We set
$w=12$ in our experiments, considering two time series to be very
similar if they have approximately the same pattern within one hour
of time shift. Dynamic programming is then used to find the optimal
warping path. Based on the similarity relationship obtained from DTW,
we applied CMDS to generate CorrelatedMultiples.

\subsubsection{Tasks}

Subjects were asked to perform an adapted visual search task. Usually in
a conventional visual search task, a subject looks for a specific target
from multiple items where there is about 50\% of chance
that the target is actually present \cite{Wolfe1996}. In our experiments, subjects were
asked to identify one or multiple items that are the most similar to a
target given in the visualization. This task represents a typical
visual search task that involves visual comparison.

For both visualizations, we created 10 datasets with varying
number of charts (from 50 to 150). Figure
\ref{fig_userstudy} shows a configuration of 125 items for both
visualizations, in which the given target is highlighted by a
rectangle in a distinct color.

\subsubsection{Procedure}

The study was conducted as a within-subjects experiment with 2
experimental conditions (\textbf{SM} or \textbf{CM}) and 10
repetitions (visualization image) for each condition. For each
repetition, the subject was presented with only one condition. We
counter-balanced the selection of condition in the 10 repetitions so
that each subject performed one repetition for both conditions with the
same number of charts. For example, if a subject accomplished
one task for \textbf{SM} with 100 items, he would also be asked to
perform another task for \textbf{CM} with 100 items. The order of
tasks was random.

The study was performed on an i7-2600, 3.4 GHz CPU desktop computer
equipped with a standard 24-inch screen of resolution of 1920 $\times$ 1080
pixels. Prior to the experiment, the subjects viewed a tutorial
that provided a basic explanation of small multiples, and they
performed some training tasks to get familiar with the user
interface of the experimental system. For each task, the subject was given a randomly chosen
\textbf{SM} or  \textbf{CM} visualization, and prompted to answer the question
{\textit{Find `i' most similar area chart(s) to the highlighted one}} ($i\ =\ 1, 2\ \text{or}\ 3$ randomly).
After typing in the answer(s) and clicking on the ``next' button, the next task was loaded.
After the subjects
finished all tasks, they were asked to rate their
satisfaction with CorrelatedMultiples on a questionnaire containing 6
questions, and finally, to participate in a semi-structured interview.

\subsubsection{Hypotheses}

The major goal of the user study is to assess the effectiveness of CorrelatedMultiples for visual search of similar items. We formulated the following hypotheses for this study:

\textbf{[H1]} \textit{CorrelatedMultiples support better performance than
conventional small multiples.} Because spatial
proximity is important for visually searching for similar items, we
expect CorrelatedMultiples to outperform conventional small multiples.

\textbf{[H2]} \textit{Sequential small multiples do not have a
  significant negative impact on accuracy compared with
  CorrelatedMultiples.} Although we believe that the conventional small multiples require more time for visual search tasks, we hypothesize they do not negatively affect visual comparison once the items to compare are found.

\textbf{[H3]} \textit{CorrelatedMultiples have a positive impact on
  user satisfaction.} Because spatial proximity provides a strong cue
for search, we hypothesize that users prefer to group similar items spatially.

\subsubsection{Results and Discussion}

We measured the completion time the subjects needed to find items
similar to a given target, the accuracy of their selections,
and the subjective assessment from the evaluation
questionnaires. Task completion time and accuracy measures were
evaluated using single factor Analysis of Variance (ANOVA) for the
dependent variables. We found a significant main effect for task
completion time ($F(1,22) = 4.8668, p = 0.01427$). The average time
spent on a task was 35.67 seconds for \textbf{SM}, and 20.46 seconds
for \textbf{CM}, as illustrated in Figure \ref{fig_studychart}
(left). Task accuracy was not found to have a significant
difference ($F(1,22) = 0.5417, p = 0.3239$). On average, the accuracy
of a task was 53.3\% for \textbf{SM}, and 60.0\% for \textbf{CM},
as shown in Figure \ref{fig_studychart} (right).

\begin{figure}[!htb]
\centering
\includegraphics[width=\linewidth]{image/studychart.pdf}
\caption{Mean task completion time (left) and accuracy (right) for the user study. Average time spent on a task was 35.67 seconds for conventional small multiples (SM), and 20.46 seconds for CorrelatedMultiples (CM). Average accuracy on a task was 53.3\% for SM, and 60.0\% for CM.}  \label{fig_studychart}
\end{figure}

The questionnaire asked subjects to assess their satisfaction with
\textbf{CM} against \textbf{SM} on multiple criteria: ease
(\textit{CorrelatedMultiples made it easier in answering the
  questions}), efficiency (\textit{I could find the similar items more
  quickly with CorrelatedMultiples}), confidence (\textit{I was more
  confident in my answer with CorrelatedMultiples}) and aesthetics
(\textit{CorrelatedMultiples is visually more pleasing}). The score
scale is from 1 (totally disagree) to 5 (totally agree), with 3 as
neutral. Figure \ref{fig_rating} provides the average ratings for each
criterion. Generally \textbf{CM} is rated higher than \textbf{SM}, in
particular the subjects were more efficient and confident in the
visual search tasks with \textbf{CM} than with \textbf{SM}.

\begin{figure}[!htb]
\centering
\includegraphics[width=0.8\linewidth]{image/studychart2.pdf}
\caption{Subjective satisfaction of CorrelatedMultiples (SM) against conventional small multiples (SM) on the criteria of \textit{easy}, \textit{efficiency}, \textit{confidence} and \textit{aesthetics}. The scale is from 1 (poor) to 5 (best).}  \label{fig_rating}
\end{figure}

In the interview, two subjects mentioned that although it was easier to
accomplish tasks with \textbf{CM}, they still did a one-time linear
scan (just as they did with \textbf{SM}) to be sure that they found the
right answer. Four subjects reported that they were not aware of the
color encoding for the groups in \textbf{CM} at first, but were still able
to find similar items more quickly and confidently since they were
placed nearby (due to the CMDS layout). Others expressed that they
figured out the function of color encoding as they got more familiar
with \textbf{CM}, and it helped them in later tasks. This suggests
that \textbf{CM} could potentially enhance the performance further for
visual search tasks if the subjects were explicitly made aware of the color
encoding scheme. The feedback on \textbf{CM} obtained in the interviews was
generally positive. Eight subjects mentioned that \textbf{CM} was
``helpful", ``beneficial" or ``useful".

Based on these results, the hypotheses are well supported.
The shorter task completion time and the (mostly) higher
subjective assessment of efficiency supports \textbf{H1}.
\textbf{H2} is supported because even though
most subjects received relatively fewer correct results with \textbf{SM} and
felt they are less confident in their answers with \textbf{SM},
the difference in the task accuracy is not statistically significant.
On the other hand,
this also indicates that \textbf{CM} does not increase the perceived
complexity of the visual search task by associating categories with
colors. \textbf{H3} is supported by the questionnaire results,
which indicate that most subjects preferred the spatial coherence
provided by \textbf{CM}.

In summary, the user studies show that CorrelatedMultiples
are useful in helping users visually identify similar items, and
they can perform this more quickly. Encoding spatial coherency
within small multiples was valued by the users. Most users
preferred CorrelatedMultiples.


\subsection{Quantitative Evaluation} \label{sec_numeric}

\begin{figure*}[!hbt]
\centering
\includegraphics[width=0.925\linewidth]{image/usamap.pdf}
\caption{Grid layouts of USA map. The initial map consists of the 48 contiguous states, from which the generated grid layouts are: CMDS, SpatialGrid, SimpleGridMap, and TransGridMap, respectively.} \label{fig_usamap}
\end{figure*}

\begin{table*} [!hbt]
\centering
\begin{tabular}{|p{3.25cm} p{2.75cm} p{2.75cm} p{2.75cm} p{2cm}|}
\hline
Method & Displacement & Adjacency Recall & Directional Relation & CPU Time(s) \\
\hline
CMDS & 0.1811 & 75.24\% & 89.80\% & 0.162\\
SpatialGrid &0.2697 & 73.33\% & 89.01\% & 0.010\\
SimpleGridMap &  0.2508 & 75.24\% & 89.72\% & 0.521\\
TransGridMap &  0.1767 & 74.29\% & 90.69\% & 23998.484\\
\hline
\end{tabular}
\caption{Numerical measures of the grid layouts in Figure \ref{fig_usamap}.
CMDS outperformed SpatialGrid and SimpleGridMap in minimizing displacement, recalled more adjacent items than SpatialGrid and TransGridMap, better preserved the directional relation than SpatialGrid and SimpleGridMap, and is more computationally efficient than SimpleGridMap and TransGridMap.} \label{table_numeric}
\end{table*}

While CorrelatedMultiples outperform conventional small multiples
for visual search, it is still important to know how well they preserve
spatial proximity in a quantitative manner. Therefore, we performed a
quantitative evaluation of CMDS in comparison with two
state-of-the-art grid layout methods: SpatialGrid (spatially ordered
Treemap \cite{Wood2008}) and GridMap \cite{gridmap2013}.

\subsubsection{Existing Methods}

\textbf{SpatialGrid}, which is adapted from spatially ordered Treemap
proposed by Wood and Dykes~\cite{Wood2008}, produces a grid
layout in which grid cells are ordered with two-dimensional
consistency \cite{gridmap2013}. Based on the Squarified Treemap
layout algorithm \cite{Bruls1999}, SpatialGrid recursively processes a
single row or column (the shorter one) of the grid
cells. Specifically, given an initial layout $I$ and a target grid
$G$, SpatialGrid first finds the point in $G$ that is closest in
Euclidean distance to its position in $I$, for each cell in the
shorter side of the grid. The remaining grid cells in $G$ form a
sub-grid that is exactly one row or column smaller than before, which
is processed recursively. For more details we refer to \cite{Wood2008}
and \cite{gridmap2013}.

\noindent\textbf{GridMap}, proposed by Eppstein \textit{et
  al.}~\cite{gridmap2013}, computes an optimal point set matching
between the regions of an original geographic map to the cells of a
grid. Given an initial geographic map $M$ and a target grid $G$ of the
same number of points in the plane, GridMap computes an optimal
one-to-one matching between $M$ and $G$ with a translation and/or
scaling that minimizes the total distance. Basically it checks all
possible cases of matching with translations and/or scalings, and for
each case it solves the underlying point set matching problem via
linear integer programming. The optimal matching is the one with the
minimal total displacement. Hereafter, %Beyond this point,
we refer to the $L_1$
method detailed by Eppstein \textit{et al.}~\cite{gridmap2013} that minimizes the displacement
with translations as the \textit{TransGridMap} method, and the $I$
method that minimizes displacement
without translation or scaling as the \textit{SimpleGridMap} method.

\subsubsection{Evaluation Metrics}

To compare the quality of the above methods with CMDS,
we employed a set of metrics derived from
\cite{Wood2008} and \cite{gridmap2013} --- the ratio of displacement,
the percentage of recalled adjacency and the percentage of the
preserved directional relation. We also measured the computational performance
of each method.

The \textit{ratio of displacement} is the average Euclidean distance by which nodes have been displaced, and is scaled between 0 (no displacement) and 1 (maximum possible displacement). In equation (1) proposed by Wood and Dykes~\cite{Wood2008}, the ratio of displacement is formulated as:
\begin{equation}
disp = \frac{\sum d_i}{|V|\sqrt{A_{root}}},
\end{equation}
where $d_i$ is the Euclidean distance between each cell in the initial layout $I$ and the target grid $G$, $|V|$ is the number of nodes and $A_{root}$ is the area of the bounding area of $I$ (also the same bounding area of $G$).

Recall measures the fraction of relevant instances
retrieved \cite{Raghavan1989}. In our case,
the relevant instances are the adjacent regions in the original layout
$I$, while the retrieved instances are the adjacent cells in the
resulting grid $G$. For each cell in $G$, its \textit{recalled
 adjacency} is defined as the ratio between the number of items that
are both adjacent in $I$ and $G$, and the number of adjacent items in
$I$. Following the criterion proposed by Eppstein \textit{et al}~\cite{gridmap2013}, two regions or
grid cells are considered adjacent if the intersection of their closed
boundaries is nonempty, suggesting that each grid
cell has at most eight neighbors.

The \textit{preserved directional relation} measures the number of pairs of cells that have the same orthogonal ordering in both the original layout $I$ and the resulting grid $G$. The number of such pairs $P$ is defined as:
\begin{equation}
P = |(x, y)|(x, y)\in I \times I\ \land\ o(I, x, y) = o(G, x, y)|,
\end{equation}
where $o(I, x, y)$ is the orthogonal order of ($x$, $y$) in $I$ (analogously for $o(G, x, y)$). The number is
normalized by the total number of possible pairs to give a percentage.

To compare the computational performance of these two previously published
methods with CMDS, we implemented them in Javascript and HTML5.
The optimal point set matching for the grid map
was achieved using the integer linear programming (ILP) based on a GNU Linear Programming Kit for Javascript (GLPKJS)~\cite{GlpkJS2013}. We ran each method on a geographical map of United States (from Eppstein \textit{et al}~\cite{gridmap2013}) in a Google Chrome browser on the same experimental machine as in Section \ref{sec_performance}. To be consistent with the measurement by Eppstein \textit{et al}~\cite{gridmap2013}, we considered only the 48 contiguous states as the initial layout, and the target layout as an $8\times6$ grid.

\subsubsection{Results and Discussion}

Table \ref{table_numeric} shows the results of the measurement. We can
observe that CMDS recalled more adjacent items than SpatialGrid and
TransGridMap, with the same recall as SimpleGridMap. CMDS also
preserved more directional relations than SpatialGrid and
SimpleGridMap, but a bit less than TransGridMap. While TransGridMap
performed best in minimizing total displacement, this was not a surprise
since the method is designed to minimize this quantity. We can see that
CMDS was still better than SpatialGrid (32.9\% improvement) and
SimpleGridMap (27.8\% improvement). In terms of running time,
SpatialGrid took the least time. CMDS was roughly 3.2 times
faster than SimpleGridMap, and about 150,000 times faster than
TransGridMap. This is expected since TransGridMap requires the
computation of many ($48\times48\times48$) distance matchings
\cite{gridmap2013}.

The corresponding grid layouts in Figure \ref{fig_usamap} confirmed
these quantitative results. Because SpatialGrid processed a single row
or column of the grid cells starting from the top left corner in a greedy
manner, some cells were placed relatively far from their original
positions. For instance, the group of cells IL, OH, WI, MI, which
are located in the middle right of the initial map, were placed in the
middle top of SpatialGrid. As for SimpleTransGrid, cells such as
FL, CO and AZ were placed relatively far from their original
positions. Cells in TransGridMap and the CMDS layout seemed spatially
stable compared with the other two methods.

Overall, CMDS outperformed SpatialGrid and SimpleGridMap in minimizing
displacement, recalled more adjacent items than SpatialGrid and
TransGridMap, better preserved the directional relation than
SpatialGrid and SimpleGridMap, and is more computationally efficient
than SimpleGridMap and TransGridMap.
\firstsection{Introduction}

\maketitle

As data from public, commercial, and private sources become
increasingly accessible, and the types of information gathered by
social networks such as Twitter and Facebook expand, big data are
flooding in at a rate never seen before. Large pools
of data are being applied to decision making almost in all
business sectors. For example, retailers such as Tesco
and Fresh Direct gather and analyze transaction data to make decisions
about pricing, promotions, and shelf allocation. Ford Motor, PepsiCo,
and Southwest Airlines analyze consumer postings on social-media
sites to quickly gauge the impact of marketing campaigns,
and to understand consumer sentiment about their brands. Visual
analysis of similarities and contrasts among data items can help
analysts to monitor, explore and make sense of large amounts of
information more easily, hence providing a foundation for
better decision-making.

Small multiples, described by Jacques Bertin and popularized by Edward Tufte,
allow one to examine
multiple facets of complex data sets, and support visual comparisons
and tracking of dynamic objects \cite{Bertin1981Graphics,Tufte1990}.
They have been applied to monitoring and analyzing data-intensive
processes such as system management, quality control, medical record analysis,
and large-scale industrial and
engineering operations. Small multiples alleviate overplotting and
occlusion that may occur when objects are too close and overlap.
Although lining up multiple visualizations allows
a viewer to compare plots more easily, as the number and
complexity of the items increases, the effectiveness of small multiples
quickly diminishes. This is because the perceptual hindrance that
forces the user to examine each individual item sequentially rather than obtain a
quick overview of the whole data would make the visualization hardly
any better than a simple data table \cite{Haroz2012}. Figure
\ref{f_teaser} (left) shows an example of small multiples of the
Dow Jones stock market index from 1897 to 2011. It is hard to
tell what patterns predominate across the years.
To amend this, it is highly desirable to have a
small-multiples visualization that can better organize the multiple
plots based on the correlation in underlying data.

In this paper, we propose \textit{CorrelatedMultiples}, a spatially
coherent visualization based on small multiples. The goal of
CorrelatedMultiples is to exploit similarity among a set of
items to determine their layout. By incorporating similarity
into the spatial layout, viewers can better judge the overall qualitative
characteristics of the data set \cite{Haroz2012}.
Following the idea of standard
multidimensional scaling (MDS) \cite{Kruskal_MDS_1964}, we model the
relationship of items as a similarity graph, and embed
the items so that proximity reflects similarity. The similarity between
items is measured by domain-specific metrics, and related
items are discovered using clustering algorithms. To lay out the
correlated items so that they fit within some fixed display space,
we propose a Constrained Multi-Dimensional Scaling (CMDS) model. The
final layout is further adjusted to improve its overall appearance
by consistent horizontal and vertical alignment.

CorrelatedMultiples allow users to identify similarities and
differences in the data more effectively, because related items are placed
nearby, and unrelated items are pushed farther away from each
another. Aggregates and anomalies can be discovered
and examined based on the items' spatial locations, since adjacent items are
likely to be similar, making abnormal events easier to identify.
We conducted a controlled user study that shows the effectiveness
of CorrelatedMultiples in comparison with the conventional sequential small multiples
for searching similar items, and demonstrated how the CMDS
method outperforms competing methods in preserving spatial proximity.
We also present applications of CorrelatedMultiples in two domains:
displaying stock market trends in financial market analysis,
and Madden-Julian oscillation in climate modeling.
The main contributions of this work are:

\begin{itemize}

\item We introduce CorrelatedMultiples, which encode data similarity
using spatial proximity among items in small multiples.

\item We propose an optimization algorithm, based on constrained
multidimensional scaling, to create CorrelatedMultiples.

\item We evaluate the effectiveness of CorrelatedMultiples through
a controlled user study and two real-world applications.

\end{itemize}

The rest of this paper is organized as follows. In the next section
we briefly review related work. Section~\ref{design} describes the
design of CorrelatedMultiples. Section~\ref{algorithm} describes
the Constrained Multi-Dimensional Scaling optimization algorithm.
In Section~\ref{s_evaluation} we evaluate the proposed approach by
means of a user study and a quantitative assessment.
Section~\ref{application} presents two applications.
Finally, Section~\ref{conclusion} summarizes the results.
%\documentclass[journal]{vgtc}                % final (journal style)
%\documentclass[review,journal]{vgtc}         % review (journal style)
%\documentclass[widereview]{vgtc}             % wide-spaced review
\documentclass[preprint,journal]{vgtc}       % preprint (journal style)
%\documentclass[electronic,journal]{vgtc}     % electronic version, journal
%\let\ifpdf\relax

%% Uncomment one of the lines above depending on where your paper is
%% in the conference process. ``review'' and ``widereview'' are for review
%% submission, ``preprint'' is for pre-publication, and the final version
%% doesn't use a specific qualifier. Further, ``electronic'' includes
%% hyperreferences for more convenient online viewing.

%% Please use one of the ``review'' options in combination with the
%% assigned online id (see below) ONLY if your paper uses a double blind
%% review process. Some conferences, like IEEE Vis and InfoVis, have NOT
%% in the past.

%% Please note that the use of Figures other than the optional teaser is not permitted on the first page
%% of the journal version.  Figures should begin on the second page and be
%% in CMYK or Grey scale format, otherwise, colour shifting may occur
%% during the printing process.  Papers submitted with Figures other than the optional teaser on the
%% first page will be refused.

%% These three lines bring in essential packages: ``mathptmx'' for Type 1
%% typefaces, ``graphicx'' for inclusion of EPS Figures. and ``times''
%% for proper handling of the times font family.

\usepackage{mathptmx}
\usepackage{amsmath}
\usepackage{graphicx}
\usepackage{times}
\usepackage{algorithm}
\usepackage{algpseudocode}
\usepackage{comment}
\usepackage{color}
\usepackage{url}

\renewcommand{\arraystretch}{1.25}

\usepackage[bookmarks,backref=false,linkcolor=black]{hyperref} %,colorlinks
\hypersetup{
  pdfauthor = {},
  pdftitle = {},
  pdfsubject = {},
  pdfkeywords = {},
  colorlinks=true,
  linkcolor= black,
  citecolor= black,
  pageanchor=true,
  urlcolor = black,
  plainpages = false,
  linktocpage
}

\setcounter{totalnumber}{2}

%\setlength{\textfloatsep}{8pt}

%\DeclareGraphicsExtensions{.eps,.eps.gz}
%\DeclareGraphicsRule{.eps.gz}{eps}{.bb}{}

%% We encourage the use of mathptmx for consistent usage of times font
%% throughout the proceedings. However, if you encounter conflicts
%% with other math-related packages, you may want to disable it.

%% If you are submitting a paper to a conference for review with a double
%% blind reviewing process, please replace the value ``0'' below with your
%% OnlineID. Otherwise, you may safely leave it at ``0''.
\onlineid{131}

%% declare the category of your paper, only shown in review mode
\vgtccategory{Research}

%% allow for this line if you want the electronic option to work properly
\vgtcinsertpkg

%% In preprint mode you may define your own headline.
%\preprinttext{To appear in an IEEE VGTC sponsored conference.}

%% Paper title.

\title{CorrelatedMultiples: Spatially Coherent Small Multiples with Constrained Multidimensional Scaling}

%% This is how authors are specified in the journal style

%% indicate IEEE Member or Student Member in form indicated below
\author{Xiaotong Liu, Yifan Hu, Stephen North, Teng-Yok Lee, Han-Wei Shen}
\authorfooter{
%% insert punctuation at end of each item
\item
Xiaotong Liu, Teng-Yok Lee and Han-Wei Shen are with the Ohio State University, E-mail: \{liuxiaot,leeten,hwshen\}@cse.ohio-state.edu.
\item
Yifan Hu and Stephen North are with AT\&T Labs Research, E-mail: \{yifanhu,north\}@research.att.com.
}

%other entries to be set up for journal
%\shortauthortitle{Biv \MakeLowercase{\textit{\textit{et al.}}}: Global Illumination for Fun and Profit}
%\shortauthortitle{Firstauthor \MakeLowercase{\textit{\textit{et al.}}}: Paper Title}

%% Abstract section.
\abstract{Small multiples are a popular method of summarizing and comparing multiple facets of complex data sets. Since they typically do not take into account correlations between items, serial inspection is needed to search and compare items, which can be ineffective. To address this, we introduce CorrelatedMultiples, an alternative of small multiples in which items are placed so that distances reflect dissimilarities. We propose a constrained multidimensional scaling (CMDS) solver that preserves spatial proximity while forcing items to fit within a fixed region. We evaluate the performance of CMDS in comparison with competing  methods, and demonstrate the effectiveness of CorrelatedMultiples for visual search and comparison through a controlled user study and two real-world applications.}
%% Keywords that describe your work. Will show as 'Index Terms' in journal
%% please capitalize first letter and insert punctuation after last keyword
%\keywords{Text Visualization, Tag Cloud, Zooming and Navigation, Focus+Context}

%% ACM Computing Classification System (CCS).
%% See <http://www.acm.org/class/1998/> for details.
%% The ``\CCScat'' command takes four arguments.

%\CCScatlist{ % not used in journal version
% \CCScat{K.6.1}{Management of Computing and Information Systems}%
%{Project and People Management}{Life Cycle};
% \CCScat{K.7.m}{The Computing Profession}{Miscellaneous}{Ethics}
%}

%% Uncomment below to include a teaser Figure.
%\teaser{
%\centering
%\includegraphics[width=16cm]{CypressView.eps}
%\caption{In the Clouds: Vancouver from Cypress Mountain}
%\}

%% Uncomment below to disable the manuscript note
%\renewcommand{\manuscriptnotetxt}{}

\teaser{
 \centering
\includegraphics[width = 0.95\linewidth]{image/teaser.pdf}
\caption{The Dow Jones Industrial Average (DJIA) from 1897 to 2011. Left: rendered as sequential small multiples, ordered by year. Right: CorrelatedMultiples, in a spatially coherent layout based on similarity. Charts of the years 2008 and 1920
are similar and are placed
close to each other at the top
of CorrelatedMultiples (right), but are far apart in the sequential small multiples (left).} \label{f_teaser} }

%% Copyright space is enabled by default as required by guidelines.
%% It is disabled by the 'review' option or via the following command:
% \nocopyrightspace

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%% START OF THE PAPER %%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\begin{document}

%% The ``\maketitle'' command must be the first command after the
%% ``\begin{document}'' command. It prepares and prints the title block.

%% the only exception to this rule is the \firstsection command

\input introduction.tex
\input relatedwork.tex
\input design.tex
\input algorithm.tex
\input evaluation.tex
\input application.tex
\input conclusion.tex

%\newpage
\bibliographystyle{abbrv}
%%use following if all content of bibtex file should be shown
%\nocite{*}
\bibliography{reference}
\end{document}
\section{Related work}

Small multiples, introduced by Jacques Bertin \cite{Bertin1981Graphics}
and Edward Tufte \cite{Tufte1990},
are widely used in both the scientific literature and
the mass media. As the name suggests, a set of charts are arranged
in a grid to encourage comparison. Bertin further considered the
possibility of reordering the items to highlight interesting relationships.
Javed \textit{et al.}~\cite{Javed2010} showed that
small multiples are more efficient than shared-space techniques for comparisons across
time series with a large visual span. Archambault \textit{et al.}~\cite{Archambault2011}
found that small multiples gave significantly faster performance than animation 
for understanding dynamic graphs.  Robertson \textit{et
al.}~\cite{Robertson2008} also showed that small multiples are more
accurate and effective than animation for trend analysis. Woods
\textit{et al.}~\cite{Wood2011} organized small multiples in a grid
using a spatial layout adapted from spatially ordered Treemap by 
Wood and Dykes~\cite{Wood2008}. However, according to the evaluation %done
by Eppstein \textit{et
  al.}~\cite{gridmap2013}, this approach %it
can result in a relatively large
displacement. The same study shows that grid map \cite{gridmap2013},
through point set matching outperforms
gridded spatially ordered Treemap. However,
optimal matching is computationally expensive %hard
with the best known algorithms taking $O(n^6log^3n)$ time.
Our algorithm can produce grid layouts comparable in quality
to grid map, but in much less time.

A recent study showed that grouping significantly improves visual search task
performance \cite{Haroz2012}. However, grouping similar items while
efficiently utilizing the display space is non-trivial. In most
space-filling visualization techniques such as Treemap
\cite{Shneiderman1992} and Bubblemap \cite{PhotoMesa2001}, relative
positions of cells does not reflect similarity.
Itoh \textit{et al.}~\cite{Itoh2009} proposed a hybrid space-filling
and force-directed layout to visualize multiple-category graphs.
Unfortunately, some space between groups is wasted. Our
proposal attempts to utilize the available space as much as possible,
while at the same time incorporating similarity among items to enhance comparison.

For showing similarity among a collection of objects, multidimensional
scaling (MDS) \cite{Kruskal_MDS_1964} and graph based techniques
play a prominent role in various fields, and are relevant
in many application areas \cite{PRISM2009,
Gansner2004_GD_StressMajorization}. The most common
formulation of MDS is a stress model~\cite{Kamada1989_IPL_DrawingGeneralGraph},
which can be solved by majorization~\cite{Gansner2004_GD_StressMajorization}.
Our solver also uses a Delaunay triangulation as scaffolding that is
combined with multidimensional scaling, to maintain the global structure
of a layout while removing overlaps.
This is similar to the PRISM approach~\cite{PRISM2009},
except PRISM does not account for display space constraints.
Work on constrained graph layout appeared as early as the
1990's~\cite{Marks1997_UIST_InterConstraintGD, Tamassia1998_Constrains_ConstrainsInGD}.
Dwyer and Koren~\cite{Dwyer2005_InfoVis_DirectedConstrain} proposed the DIG-COLA
algorithm for directed graph drawing. Their model also incorporates a notion of
hierarchy energy, which respects the orientation of directed edges.
Dwyer \textit{et al.}~\cite{Dwyer2009_DisMathematics_ConstrainByStressMaj&GradientProjection}
attempted to solve constrained graph layout problems with a
combination of stress majorization and constrained programming
techniques. Constrained optimization also provides the foundation for
Dunnart, a constraint-based graph drawing
tool~\cite{Dwyer2008_GD_Dunnart}. Further work by
Dwyer~\cite{Baur2007_GD_MultiCircularConstrain, Dwyer2009_CGF_SVA, dwyer_2009_circular} considered fast satisfaction
of simple constraints such as linear or circular constraints. Of these, the
closest to our work is Dwyer's~\cite{Dwyer2009_DisMathematics_ConstrainByStressMaj&GradientProjection}.
The main difference is that Dwyer~\cite{Dwyer2009_DisMathematics_ConstrainByStressMaj&GradientProjection} aims at
satisfying orthogonal ordering constraints using a sophisticated
quadratic programming algorithm. Our main objective is to satisfy shape
constraints, and our approach is easier to implement --- we coded a prototype,
including Delaunay triangulation, in 614 lines of JavaScript.
</pre>
</HTML>
{:/nomarkdown}
