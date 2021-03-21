#!/bin/bash
killall conky
sleep 5
conky -c $HOME/.conky/Debian/conky.cfg
