#!/bin/ksh
function doGraph {
    i=$1
	echo $i
	j=${i%.gv.txt}
	# can't use neato -s -n2 because it does strange things to 
	# the records in datastruct.gv
	if  [[ $j != fdp* ]] ;
	then
		neato -Tpng -Gsize="7,7" $i -o $j.png
		neato -Tsvg $i -o $j.svg
	else
		fdp -Tpng -Gsize="7,7" $i -o $j.png
		fdp -Tsvg $i -o $j.svg
		echo use fdp!
	fi
	convert -resize 160x160 $j.png $j.small.png
	# dot -Tpng -Gsize="1.75,1.75" $i -o $j.small.png
}

if [[ $# > 0 ]]
then
  while [[ $# > 0 ]]
  do
    doGraph $1
    shift
  done
else
for i in *.gv.txt
do
    doGraph $i
done
fi
