#!/usr/bin/bash
#Allows you to log daily weight with timestamps (morning and night) through the console
echo -n "Enter Weight: "
read Weight

currentDate=`date +"%d/%m/%Y"`
currentTime=`date +"%T"`

echo "| $currentDate | $currentTime | $Weight |" >> ~/Documents/obsidian-vaults/personlogs/LOGS/weight.md
echo -n "Recorded Entry"
