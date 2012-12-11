#!/bin/sh
module="scull"
device="scull"
mode="664"
# invoke insmod with all arguments we got
# and use a pathname, as newer modutils don't look in . by default
/sbin/rmmod ./$module $* || exit 1
# remove stale nodes
rm -f /dev/${device}[0-3]
