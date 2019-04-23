#!/bin/bash
#
#Countdown Script
#
count=$1
while [[ count -gt 0 ]]; do
	echo "$count"
	sleep 3
	count=$((count-1));
done
