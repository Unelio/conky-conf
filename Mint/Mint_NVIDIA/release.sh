#!/bin/bash
RELEASE=`lsb_release -c | cut -d ":" -f 2 | sed -e 's/\([^\t]*\)\t\([^\t]*\)/\1\2/'`
echo ${RELEASE^}
