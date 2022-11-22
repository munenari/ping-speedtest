#!/bin/bash
# https://tech-mmmm.blogspot.com/2018/05/linuxping.html

dst=$1
ps=65507
# ps=8000

rtt=`ping -q -c 10 -s $ps ${dst} | grep avg | cut -d"/" -f 5`
echo "avg: ${rtt} ms"
speed=`awk "BEGIN { print (($ps + 28) * 8 * 2) / $rtt / 1000 }"`
echo "${speed} Mbps"
