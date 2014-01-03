#!/bin/bash

awk '{ print NR, $0 }' $1

exit 0
