#!/bin/bash


start=`date +%s%N`
cat $1 > /dev/null
end=`date +%s%N`
diff=`expr ${end} - ${start}`
h=`expr ${diff}/1000000000.0 | bc -l`
echo "Total Time - $h"
