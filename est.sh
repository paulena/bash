#!/bin/bash

Namn=""
until [ "$Namn" = "Paulena" ]; do
 read -p "skriv ett namn: " Namn
done

exit 0
