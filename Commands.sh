#btrace /dev/sda
blktrace -d /dev/sda
blkparse -i sda.blktrace.* -d blkparse.output
btt -i blkparse.output -s seek.output
