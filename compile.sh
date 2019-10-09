#!/bin/bash


#########################
# command line argument #
#########################

# telemac mode (mp-gcc9 or mp-openmpi-gcc9)
export TELEMAC_MODE=$1



###############################
# local environment variables #
###############################

# Telemac folder
export TELPATH=$HOME/Applications/telemac/v8p0r2

# Telemac configuration file
export SYSTELCFG=$HOME/Applications/telemac/v8p0r2_custom/systel.macos.cfg

# Telemac python modules folder
export PYTELPATH=$TELPATH/scripts/python3

# add needed python folders to python path
export PYTHONPATH=$PYTELPATH:$PYTHONPATH



###################
# compile telemac #
###################

python $PYTELPATH/compile_telemac.py -c $TELEMAC_MODE