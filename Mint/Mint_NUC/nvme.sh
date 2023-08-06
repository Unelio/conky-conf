#!/bin/bash
# Ajouter la possibilité de lancer smartctl avec sudo sans mdp
# sudo visudo
# Ajouter la ligne, en remplacant utilisateur par le nom d'utilisateur de votre session
# utilisateur  ALL=NOPASSWD:/usr/sbin/smartctl
if [ $1 = "temp" ]
then
  TEMP=`sudo smartctl -a /dev/nvme0n1 | grep Temperature: | cut -d ':' -f2 | xargs | cut -d ' ' -f1`
  echo ${TEMP}°
fi
