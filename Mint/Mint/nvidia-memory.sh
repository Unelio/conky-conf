#!/bin/bash

# Connaitre la taille de la mémoire du GPU
total=`nvidia-smi -i 0 -q -d MEMORY | grep "Total" | head -n 1 | xargs | cut -d " " -f 3`


utilisation=`nvidia-smi -i 0 -q -d MEMORY | grep "Used" | head -n 1 | xargs | cut -d " " -f 3`
pourcentage=`echo "($utilisation/$total)*100" |bc -l`
pourcentage=`echo $pourcentage | cut -d "." -f 1`
echo ${pourcentage}%
