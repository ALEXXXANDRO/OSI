#!/bin/bash

#происходит проверка на количество аргументов, и на их тип
sum(){
	[[ -n "$1" && -n "$2" ]] && { [[ "$1" =~ ^[0-9]+$ && "$2" =~ ^[0-9]+$ ]] && { res=$(($1+$2)); echo "$res"; } || echo "wrong type"; } || echo  "You need to enter two arguments!"
}

sub(){
	[[ -n "$1" && -n "$2" ]] && { [[ "$1" =~ ^[0-9]+$ && "$2" =~ ^[0-9]+$ ]] && { res=$(($1-$2)); echo "$res"; } || echo "wrong type"; } || echo "You need to enter two arguments!"
}

mul(){
	[[ -n "$1" && -n "$2" ]] && { [[ "$1" =~ ^[0-9]+$ && "$2" =~ ^[0-9]+$ ]] && { res=$(($1*$2)); echo "$res"; } || echo "wrong type"; } || echo "You need to enter two arguments!"
}

div(){
	[[ -n "$1" && -n "&2" ]] && { [[ "$1" =~ ^[0-9]+$ && "$2" =~ ^[0-9]+$ ]] && { res=$(($1/$2)); echo "$res"; } || echo "wrong type"; } || echo "You need to enter two arguments!"
}


if [[ -n "$2" ]]
then 
	case "$2" in 
		sum) sum "$3" "$4";;
		sub) sub "$3" "$4";;
		mul) mul "$3" "$4";;
		div) div "$3" "$4";;
		*) echo "You need to enter sub/sum/mul/div"
	esac
else echo "You forgot the argument"
fi


