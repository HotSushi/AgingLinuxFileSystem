#!/bin/bash


start=`date +%s%N`
ls -l ~/linux > /dev/null
end=`date +%s%N`
diff=`expr ${end} - ${start}`
h=`expr ${diff}/1000000000.0 | bc -l`
echo "Total Time - $h"
