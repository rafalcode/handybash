#!/bin/bash
# This script disables the Synaptics Touchpad using the xinput command in Linux X-Windows.
# we need hte xinput command
command -v xinput
if [ $? -eq 1 ]
then
  echo "Sorry, you need the xinput command for this script, in ubuntu install via 'apt-get install xinput'"
  exit
fi
# first we collect internal identification of our touchpad device
TPD=`xinput list | sed -ne 's/^.\+Touch[Pp]ad \+\tid=\([0-9]\+\).\+/\1/p'`
#then we render it "1" which means enabled.
xinput set-prop $TPD "Device Enabled" 1
