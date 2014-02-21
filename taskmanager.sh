#!/bin/bash
#env DISPLAY=:0.0

# Open up tasks.txt - read each line to variable, print variable 
# in notify-send.

inputfile=/home/joe/Dropbox/tasks.log
$task=""

while read line
	do
	task+=$line
	task+="\n" 			
done < "$inputfile"

/usr/bin/notify-send "$task"
