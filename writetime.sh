#!/bin/bash

for i in {1..1000}
do
str="creating/dir$i"
start=`date +%s%N`
echo abc>testwrite.txt
end=`date +%s%N`
diff=`expr ${end} - ${start}`
h=`expr ${diff}/1000000000.0 | bc -l`
echo "Total Time - $h"
done
