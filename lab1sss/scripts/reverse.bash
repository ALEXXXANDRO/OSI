#!/bin/bash

if [[ -n "$2" && -n "$3" ]] 
then 
	 [[ -f "$2" ]] && { rev "$2" > "$3"; } || { echo "No such file in directory"; } 
else
  	echo "Enter both arguments"
fi
