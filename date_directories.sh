#!/bin/bash
re='^[0-9]+$'
if [ -z $1 ] 
then 
    echo 1
elif ! [[ $1 =~ $re ]]  
then
    echo 1
else
    date=$(date +%Y%m%d -d "$date - 1 day")
    for (( c=1; c<=$1; c++ ))
    do
      date=$(date +%Y%m%d -d "$date + 1 day")
      name="DIR_"
      name+=$c
      name+="_"
      name+=$date 
      mkdir $name
    done
fi