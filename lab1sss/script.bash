#!/bin/bash

if [[ -n "$1" ]]
then
	case "$1" in
		calc) bash scripts/calc.bash "$@";;
		search) bash scripts/search.bash "$@";;
		reverse) bash scripts/reverse.bash "$@";;
		strlen) bash scripts/strlen.bash "$@";;
		log) bash scripts/log.bash "$@";;
		exit) bash scripts/exit.bash "$@";;
		help) bash scripts/help.bash "$@";;
		interactive) bash scripts/interactiv.bash "$@";;
		*) echo	"Invalid argument";;
	esac
else echo "No parametrs"
fi
