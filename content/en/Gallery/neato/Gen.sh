#!/bin/sh

function doGraph {
	i=$1
	j=${i%.gv.txt}
	neato -Tpng -Gsize="7,7" $i -o $j.png
	neato -Tsvg $i -o $j.svg
	echo $j.png
	echo $j.svg
}

if [[ $# > 0 ]]; then
	for i in "$@"; do
		doGraph $1
		shift
	done
else
	for i in *.gv.txt; do
		doGraph $i
	done
fi
