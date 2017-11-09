#!/bin/bash

start=`date +%s%N`
rm -rf testdir/dir1
end=`date +%s%N`
diff=`expr ${end} - ${start}`
h=`expr ${diff}/1000000000.0 | bc -l`
echo "Total Time - $h"
