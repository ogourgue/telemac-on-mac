#!/bin/sh

# set up environment
export HOMETELONMAC=$HOME/Applications/telemac/telemac-on-mac/v7p3r0
source $HOMETELONMAC/configs/pysource.mp-gcc10.sh

# run telemac2d
python2 /Users/ogourgue/Applications/telemac/v7p3r0/scripts/python27/telemac2d.py t2d_malpasset-small_charac.cas