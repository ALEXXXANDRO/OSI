#!/bin/bash

if [[ -n "$2" && -n "$3" ]] 
	then [[ -d "$2" ]] && { grep -r "$3" "$2"; } || { echo "No such directory"; } 
else
	echo "Enter both arguments"
fi
