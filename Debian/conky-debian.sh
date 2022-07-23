#!/bin/bash
sleep 10
killall conky
sleep 10
conky -c ~/.conky/Debian/conky.cfg
