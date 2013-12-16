#!/bin/bash

if [ ! -r ./hemliginfo.dat ]; then
	echo "filen finns inte"
else
  	echo "filen finns "

	exit 1
fi

exit 0
