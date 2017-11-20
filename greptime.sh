#!/bin/bash

start=`date +%s%N`
grep -r "fdsmkkjj#**fsd%^&dsfsd33" ~/repo/linux/
end=`date +%s%N`
diff=`expr ${end} - ${start}`
h=`expr ${diff}/1000000000.0 | bc -l`
echo "Total Time - $h"
