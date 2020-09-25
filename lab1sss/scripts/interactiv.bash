#!/bin/bash
menu () { 
	echo "Choose the function: calc - c, search - s, reverse - r, strlen - sl, log -l, help -h, exit - e"

	read fnc
	case "$fnc" in
		"calc" | "c" )
			echo "Write the arithmenic operation"
			read operation
			echo "Write the first number"
			read number1
			echo "Write the second number"
			read number2 
			. scripts/calc.bash $operation $number1 $number2; echo; menu;; 
		"search" | "s" ) 
			echo "Input directory name";
			read name;
			echo "Input search key";
			read key;
			. scripts/search.bash $name $key; echo; menu;;
		"reverse" | "r" ) 
			echo "Input file name from which should take data";
			read fin;
			echo "Input file to thich should output the reversed data";
			read fout;
			. scripts/reverse.bash $fin $fout; echo; menu;;
		"strlen" | "sl" ) 
			echo "Enter the string"
			read s
			. scripts/strlen.bash $s; echo; menu;;
		"log" | "l" ) 
			. scripts/log.bash; echo; menu;;
		"help" | "h" )
			. scripts/help.bash; echo; menu;;
		"exit" | "e" ) exit;;
		* ) echo "Choose correct function";;
	esac
}

menu
