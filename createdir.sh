#!/bin/bash

str="testdir"
for i in {1..1000}
do
str="$str/dir$i"
done
start=`date +%s%N`
mkdir -p $str
end=`date +%s%N`
diff=`expr ${end} - ${start}`
h=`expr ${diff}/1000000000.0 | bc -l`
echo "Total Time - $h"
