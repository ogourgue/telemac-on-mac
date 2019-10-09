#!/bin/sh

echo ''
echo '###########################'
echo '# compiling with gfortran #'
echo '###########################'
gfortran-mp-9 -o hello_world hello_world.f90

echo ''
echo '#########################'
echo '# running (serial mode) #'
echo '#########################'
./hello_world

echo ''
echo '######################'
echo '# compiling with mpi #'
echo '######################'
mpif90-openmpi-gcc9 hello_world_mpi.f90 -o hello_world_mpi

echo ''
echo '###########################'
echo '# running (parallel mode) #'
echo '###########################'
mpirun-openmpi-gcc9 -np 4 hello_world_mpi