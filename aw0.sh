#!/bin/bash
# using gensub() in awk is always a little fraught
# and in a bash script it's worse.
# you need 4 backslashes on the replace caputre group
if [ ! -f $1 ]; then
   echo "Enter a file name"
fi 
TIP=`stat $1 |awk '/^Mod/ {a=gensub(/^([^:]+:[^:]+).+/, "\\\\1", "g", $3); printf("%s_%s", a, a)}'`
echo $TIP
