#!/bin/bash
sleep 2
killall conky
sleep 8
conky -c /home/philippe/.conky/Debian/conky.cfg
