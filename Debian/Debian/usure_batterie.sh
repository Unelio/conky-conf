#!/bin/bash
max=`acpi -bi | grep full | awk '{print $13}' | cut -d "%" -f 1`

usure=$((100-$max))

echo $usure

#echo $((100-`acpi -bi | grep full | awk '{print $13}' | cut -d "%" -f 1`))
