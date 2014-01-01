#!/bin/bash

#-maxdepth 1 söker max en nivå ner från sökposition. maxdepth är ett argumen till find.
#-type d är ett argument som söker efter mappar (directories)
#sort -rn sorterar (n) jämför numeriskt värde (r) omvänd resultatet av jämförelser

echo "Here are the five largest directories for user : "
echo
for i in $(find ~ -maxdepth 1 -type d); do 
	du "$i" | tail -n 1
done 2> /dev/null | \
sort -rn | awk 'NR>1' | head -n5 | awk '{print $2}' | sed 's_/home/paulena/__' | \
mail -s "Largest directories" chefen

exit 0
