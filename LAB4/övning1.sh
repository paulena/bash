#!/bin/bash

#Detta skript räknar ut dom fyraolika räknesätten.

read -p "Mata in tal 1: " L
read -p "Mata in tal 2: " N

let Summa="$L+$N "
	echo "$L+$N=$Summa"  # här skriver vi ut addition +
let Diff="$L-$N"
 	echo "$L-$N=$Diff "  #här skriver vi ut subtration -
let Produkt="$L*$N"
	echo "$L*$N=$Produkt "  # här skriver vi ut multiplikation *
let Kvot="$L/$N"  let Rest="$L%$N"
	echo "$L/$N=$Kvot,$Rest"  # här skriver vi ut division och rest /

exit 0 
