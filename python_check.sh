#!/bin/bash
#
#Python Check Script
#
if [ -f /usr/bin/python ]; then
	echo "Looks like you have Python installed."
else
	echo "Where did Python go?"
fi

