#!/bin/bash
sleep 4
killall conky
sleep 4
conky -c ~/.conky/Mint_NUC/conky.cfg
