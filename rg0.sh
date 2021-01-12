#!/bin/bash
# regex
d="20210314"
if [[ ! $d =~ 202[0-9]{5} ]]; then
    echo "$d is not 8 digits starting with 202"
else
    echo "Fine."
fi
