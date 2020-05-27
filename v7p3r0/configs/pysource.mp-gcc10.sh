####################
# telemac settings #
####################

# path to telemac root dir
export HOMETEL=$HOME/Applications/telemac/v7p3r0

# adding python scripts to PATH
export PATH=$HOMETEL/scripts/python27:.:$PATH

# path to telemac-on-mac root dir
export HOMETELONMAC=$HOME/Applications/telemac/telemac-on-mac/v7p3r0

# configuration file
export SYSTELCFG=$HOMETELONMAC/configs/systel.macos.cfg

# name of the configuration to use
export USETELCFG=mp-gcc10

# path to this file
export SOURCEFILE=$HOMETELONMAC/configs/pysource.mp-gcc10.sh


##########
# python #
##########

# to force python to flush its output
export PYTHONUNBUFFERED='true'

# adding python scripts to python PATH
export PYTHONPATH=$HOMETEL/scripts/python27:$PYTHONPATH
