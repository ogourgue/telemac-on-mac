#!/bin/sh

# set up environment
export HOMETELONMAC=$HOME/Applications/telemac/telemac-on-mac/v8p0r2
source $HOMETELONMAC/configs/pysource.mp-gcc9.sh

# run telemac2d
telemac2d.py t2d_malpasset-char.cas