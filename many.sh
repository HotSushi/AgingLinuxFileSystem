#!/bin/bash
for i in  {1..1000}
do
    ./caltime.sh ~/repo/linux/README >> ~/before/readme.time
    ./caltime.sh ~/repo/linux/* >> ~/before/all.time
    ./createdir.sh >> ~/before/createdir.time
    ./removedir.sh >> ~/before/removedir.time
    ./lstime.sh >> ~/before/lsdir.time
done
./writetime.sh >> ~/before/write.time
./findtime.sh ~/repo/linux >> ~/before/findl.time
