#!/bin/bash
if [ $# -gt 0 ]; then
	ps | grep "$1" | awk '{print $1}' > killfile.txt
	while read p; do
		kill -9 "$p"
	done < killfile.txt
	rm killfile.txt
else
	echo "You need to enter the name of the program you want to kill"
fi
 
