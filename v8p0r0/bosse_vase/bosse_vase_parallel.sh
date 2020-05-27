#!/bin/sh

# set up environment
export HOMETELONMAC=$HOME/Applications/telemac/telemac-on-mac/v8p0r0
source $HOMETELONMAC/configs/pysource.mp-openmpi-gcc9.sh

# run telemac2d
python2 $HOMETEL/scripts/python27/telemac2d.py t2d_bosse_vase-t2d.cas --ncsize=4