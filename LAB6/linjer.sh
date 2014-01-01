#!/bin/bash

usage(){
	echo "${0##*/} [Numer]"	# ${0##*/} = skriptets namn utan sökväg (basename) 
	exit 1
}

linjer(){
	for (( i = $1; i > 0; i-- )); do # i är värdet utav $1. är värdet av i större en 0  gör i--. i-- uppdaterar värdet.
		echo -n '*'                  # -n betyder att jag skriver * på samma rad.
	done
	echo                             # Lägger PS1 på en nu rad.
}

[[ $# -ne 1 ]] && usage		# säger hur många argumen jag vill ha annars använd funktion usage
linjer $1  # skickar värdet som skriptet startar med funktionen linjer.
