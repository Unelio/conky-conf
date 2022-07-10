#!/bin/bash
sleep 10
killall conky
sleep 10
conky -c /home/philippe/.conky/Debian/conky.cfg
