#!/bin/tcsh

#BSUB -P durham
#BSUB -q cosma
#BSUB -J 1e4_isg_54
#BSUB -n 12
#BSUB -eo ./err.out
#BSUB -oo ./out.out

module load gnu_comp/c4 openmpi gsl hdf5 fftw/2.1.5

mpirun -n 12 ./InterStellarGadget/code/Gadget2 ./pfile.param 

