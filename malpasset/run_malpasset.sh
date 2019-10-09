#!/bin/sh


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



###############
# run telemac #
###############

echo ''
echo '#######################################'
echo '# run t2d_malpasset-char.cas (serial) #'
echo '#######################################'
python $PYTELPATH/runcode.py telemac2d -c mp-gcc9 -s t2d_malpasset-char.cas

echo ''
echo '#######################################'
echo '# run t2d_malpasset-cin1.cas (serial) #'
echo '#######################################'
python $PYTELPATH/runcode.py telemac2d -c mp-gcc9 -s t2d_malpasset-cin1.cas

echo ''
echo '#######################################'
echo '# run t2d_malpasset-eria.cas (serial) #'
echo '#######################################'
python $PYTELPATH/runcode.py telemac2d -c mp-gcc9 -s t2d_malpasset-eria.cas

echo ''
echo '#########################################'
echo '# run t2d_malpasset-fine.cas (parallel) #'
echo '#########################################'
python $PYTELPATH/runcode.py telemac2d -c mp-openmpi-gcc9 -s t2d_malpasset-fine.cas --ncsize=4

echo ''
echo '#######################################'
echo '# run t2d_malpasset-nerd.cas (serial) #'
echo '#######################################'
python $PYTELPATH/runcode.py telemac2d -c mp-gcc9 -s t2d_malpasset-nerd.cas

echo ''
echo '#######################################'
echo '# run t2d_malpasset-prim.cas (serial) #'
echo '#######################################'
python $PYTELPATH/runcode.py telemac2d -c mp-gcc9 -s t2d_malpasset-prim.cas
