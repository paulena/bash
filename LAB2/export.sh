#!/bin/bash

declare -x Dist="Ubuntu"        # -x variabeln exporteras. deklarera  
                                #  variabeln till ett värde.
    echo "export.sh: $Dist"  # det som kommer ut på skärmen
    bash import.sh           # ett annat skript som följer med detta
                             # skript
exit 0

