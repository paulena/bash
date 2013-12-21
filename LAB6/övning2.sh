#!/bin/bash

if [ $(EUID) -ne 0 ]; then
	echo "you must be root"
	exit 1
else
	rm -r /tmp/*
fi
exit 0
