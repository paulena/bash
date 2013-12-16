#!/bin/bash

#öppna filen och kolla skriv och läs rätigheter
if [ ! -e ./recept.txt -o ! -r ./recept.txt -o ! -w ./recept.txt ]; then
	echo " Kolla om filen finns. Det är troligen något med at du inte kan  läsa eller skriva i filen."

else
      vim recept.txt

fi

exit 0
