#!/bin/bash

# Connaitre la taille de la swap
total=`free -m | grep Swap | xargs | cut -d " " -f 2`

if [ $total == "0" ]
then
  echo "Non montée"
else
  utilisation=`free -m | grep Swap | xargs | cut -d " " -f 3`
  pourcentage=$(($utilisation/$total*100))
  echo ${pourcentage}%
fi
