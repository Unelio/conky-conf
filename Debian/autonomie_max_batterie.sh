#!/bin/bash
p_restant=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep 'percentage' | awk '{print $2}' | cut -d "%" -f 1`
heures=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep 'time to empty' | grep 'hours'`
minutes=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep 'time to empty' | grep 'minutes'`
if [[ ! -z $heures ]]
then
  h_restant=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep 'time to empty' | awk '{print $4}' | sed -e "s/,/./g"`
  coeff=`echo 100/$p_restant | bc -l`
  autonomie_max=`echo $coeff*$h_restant | bc -l`
  h_autonomie_max=`echo $autonomie_max | cut -d "." -f 1`
  echo '(Autonomie Max : env. '$h_autonomie_max'h)'
elif [[ ! -z $minutes ]]
then
  m_restant=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep 'time to empty' | awk '{print $4}' | sed -e "s/,/./g"`
  coeff=`echo 100/$p_restant | bc -l`
  autonomie_max=`echo $coeff*$m_restant/60 | bc -l`
  h_autonomie_max=`echo $autonomie_max | cut -d "." -f 1`
  echo '(Autonomie Max : env. '$h_autonomie_max'h)'
else
 echo '(En charge...)'
fi
