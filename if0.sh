#!/bin/bash
# this script does what?
EXPECTED_ARGS=0 # change value to suit!
# some quick "argument accounting"
if [ $# -ne $EXPECTED_ARGS ]; then
        echo "Correct usage: $0 <args ..>"
        exit
fi

ls >/dev/null

if [ $? -ne 0 ]; then
    echo retnrvalnotzero
fi

# Bash if statements are a perrenial problem.
if [ "$1" != -b ]; then
  echo "Sorry, type -b"
else
    echo "thank you for typing -b"
fi
