#!/bin/sh

# set up environment
export HOMETELONMAC=$HOME/Applications/telemac/telemac-on-mac/v7p3r0
source $HOMETELONMAC/configs/pysource.mp-openmpi-gcc10.sh

# run telemac2d
python2 /Users/ogourgue/Applications/telemac/v7p3r0/scripts/python27/telemac2d.py t2d_bosse_vase-t2d.cas --ncsize=4