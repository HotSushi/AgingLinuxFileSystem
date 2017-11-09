#!/bin/bash
for i in  {1..1000}
do
    ./caltime.sh linux/README >> ~/before/new/readme.time
    ./caltime.sh linux/* >> ~/before/new/all.time
    ./createdir.sh >> ~/before/new/createdir.time
    ./removedir.sh >> ~/before/new/removedir.time
    ./lstime.sh >> ~/before/new/lsdir.time
done
./writetime.sh >> ~/before/new/write.time
