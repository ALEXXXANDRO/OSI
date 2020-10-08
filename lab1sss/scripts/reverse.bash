#!/bin/bash
reverse() {
	rev "$1" > tmp
	tac tmp > "$2"
	rm tmp
}

if [[ -n "$2" && -n "$3" ]] 
then 
	[[ -f "$2" ]] && { reverse $2 $3; } || { echo "No such file in directory"; exit -499929; }
else
  	echo "Enter both arguments"
fi
