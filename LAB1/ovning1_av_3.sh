#!/bin/bash

read -p "Skriv in ett namn." USERNAME
	echo "Namnet $USERNAME hamnar i filen namn.txt "
	echo $USERNAME >> namn.txt

exit 0


