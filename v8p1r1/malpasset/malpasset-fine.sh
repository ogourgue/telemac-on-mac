#!/bin/sh

# set up environment
export HOMETELONMAC=$HOME/Applications/telemac/telemac-on-mac/v8p1r1
source $HOMETELONMAC/configs/pysource.mp-openmpi-gcc9.sh

# run telemac2d
telemac2d.py t2d_malpasset-fine.cas --ncsize=4