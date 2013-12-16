#!/bin/bash




if [ ! -e ./recept.txt  ]; then # kollar om filen finns.
	echo "Recept.txt finns inte"

elif [ ! -r ./recept.txt ]; then # om man inte kan läsa filen.
	echo "Recept.txt går inte att läsa"

elif [ ! -w ./recept.txt ]; then   # om det inte kan skriva i filen
	echo "Det går inte skriva i recept.txt"

else   vim ./recept.txt  # öppnar filen.

fi

exit 0
