####################
# telemac settings #
####################

# path to telemac root dir
export HOMETEL=$HOME/Applications/telemac/v8p0r2

# adding python scripts to PATH
export PATH=$HOMETEL/scripts/python3:.:$PATH

# path to telemac-on-mac root dir
export HOMETELONMAC=$HOME/Applications/telemac/telemac-on-mac/v8p0r2

# configuration file
export SYSTELCFG=$HOMETELONMAC/configs/systel.macos.cfg

# name of the configuration to use
export USETELCFG=mp-openmpi-gcc9

# path to this file
export SOURCEFILE=$HOMETELONMAC/configs/pysource.mp-openmpi-gcc9.sh


##########
# python #
##########

# to force python to flush its output
export PYTHONUNBUFFERED='true'

# adding python scripts to python PATH
export PYTHONPATH=$HOMETEL/scripts/python3:$PYTHONPATH
