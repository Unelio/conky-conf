#!/bin/bash

# Connaitre la taille de la swap
total=`free -m | grep "Partition d'échange" | cut -d "'" -f 2 | xargs | cut -d " " -f 2`

if [ $total == "0" ]
then
  echo "Non montée"
else
  utilisation=`free -m | grep "Partition d'échange" | cut -d "'" -f 2 | xargs | cut -d " " -f 3`
  pourcentage=`echo "($utilisation/$total)*100" |bc -l`
  pourcentage=`echo $pourcentage | cut -d "." -f 1`
  [ -z "$pourcentage" ] && pourcentage=0
  echo ${pourcentage}%
fi
