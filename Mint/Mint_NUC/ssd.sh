#!/bin/bash
# Ajouter la possibilité de lancer hddtemp avec sudo sans mdp
# sudo visudo
# Ajouter la ligne, en remplacant utilisateur par le nom d'utilisateur de votre session
# utilisateur  ALL=NOPASSWD:/usr/sbin/hddtemp
if [ $1 = "temp" ]
then
  sudo hddtemp $2 | cut -d ":" -f 3 | xargs | cut -d "C" -f 1
elif [ $1 = "name" ]
then
  name=`sudo hddtemp $2 | cut -d ":" -f 2 | cut -d "_" -f 1 | xargs | cut -d " " -f 1`
  echo ${name^^}
fi
