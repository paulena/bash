#!/bin/bash

ett="$1"
tva="$2"

usage() {
	echo "${0##*/}"
	exit 1
}

plus() {
	echo "$ett + $tva = "$(echo "$ett + $tva" | bc -l)""	# -l visar decimaler. n
}

minus() {
	echo "$ett - $tva =  "$(echo "$ett - $tva" | bc -l)""  # när man använder bc så använder man " ".
}

multi() {
	echo "$ett * $tva = "$(echo "$ett * $tva" | bc -l)""  # $(()) så använder man skalets miniräknare.
}

delat() {
	echo "$ett / $tva = "$(echo "scale=3;$ett / $tva" | bc -l)"" # scale=3; avrundrar till antalet givna 
                                       # decimaler.
}

[[ $# -ne 2 ]] && usage

plus
minus
multi
delat
