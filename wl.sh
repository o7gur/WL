#!/usr/bin/bash
# define path to file here
path=~/Documents/obsidian-vaults/personlogs/LOGS/weight.md

if [ "$1" == "-m" ]; then
  weight=$2
  currentTime=`date +"%T"`
  echo "m - $weight ($currentTime)" >> $path
elif [ "$1" == "-n" ]; then
  weight=$2
  currentTime=`date +"%T"`
  echo "n - $weight ($currentTime)" >> $path
elif [ "$1" == "-d" ]; then
  currentDate=`date +"%d/%m/%Y"`
  echo "" >> $path
  echo "\`$currentDate\`" >> $path
elif [ "$1" == "-h" ]; then
  echo "-----------------------------------------"
  echo "|        use -d to set new date         |"
  echo "|  use -m 56 to add morning entry of 56 |"
  echo "|   use -n 56 to add night entry of 56  |"
  echo "-----------------------------------------"
else
  echo "------------------------------------------------------------"
  echo "| incorrect usage, use flags [-m weight] [-n weight] [-d]  |";
  echo "|                                                          |"
  echo "|                 use -h flag for help                     |"
  echo "------------------------------------------------------------"
fi
