#!/bin/bash

output_time() {

 hour=$1

  if (( hour >= 0 && hour < 6 ))
  then
       echo "Early morning"
  elif (( hour >= 6 && hour < 12 )) 
  then
       echo "Morning"
  elif (( hour >= 12 && hour < 18 ))
  then
       echo "Afternoon"
  elif (( hour >= 18 && hour < 24 )) 
  then
       echo "Late night"
  else
       echo "invalid input"
  fi
}


read -p "Enter an hour of the day (HH:MM): " u_time

if [[ $u_time =~ ^([01]?[0-9]|2[0-3]):[0-5][0-9]$ ]]
then
    h=$(date -d "$u_time" +%H)
    output_time $h
else
    echo "invalid  format"
fi
