#!/bin/bash

read -p " skriv in ett tal mellan 10 till 100  som du vill att vi ska räkna ner från: " N

until [ $N -eq 1 ] # Det gör så att den kört till att värdet blir 10.

do
	(( N--))  # Det tar bort ett värde av variabeln N till man kom                    mer net till 10 är likan dant som N=$[ N - 1 ]
	echo $N
done
exit 0
