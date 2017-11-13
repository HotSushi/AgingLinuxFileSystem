#!/bin/bash

for i in {1..100}
do
start=`date +%s%N`
find $1 -name ghtgfsgd!!dfdsfs
end=`date +%s%N`
diff=`expr ${end} - ${start}`
h=`expr ${diff}/1000000000.0 | bc -l`
echo "Total Time - $h"
done
