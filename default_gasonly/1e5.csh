#!/bin/tcsh

#BSUB -P durham
#BSUB -q cosma
#BSUB -J 1e5_isg_05_53
#BSUB -n 72
#BSUB -eo ./err.out
#BSUB -oo ./out.out

module load gnu_comp/c4 openmpi gsl hdf5 fftw/2.1.5

mpirun -n 72 ./InterStellarGadget/code/Gadget2 ./pfile.param

