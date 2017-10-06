#!/bin/bash
PID=`ps -eo pcpu,pid -o comm= | sort -k1 -n -r | head -1 | awk '{print $2 }'`
while [ -e /proc/$PID ] ; do
sleep 600 # chage it to 30 or any other time in seconds (600 seconds=10 minutes!)
done
ifconfig | awk '{print $2}' | head -2 | tail -1 | sed 's/addr://' | mail -s "Process done" ankit.tronix@gmail.com
