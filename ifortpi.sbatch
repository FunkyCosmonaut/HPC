#!/bin/bash
#SBATCH --partition=t1standard
#SBATCH --ntasks=100
#SBATCH --ntasks-per-node=24

ulimit -s unlimited
ulimit -l unlimited

module purge
module load intel
module load slurm

cd $SLURM_SUBMIT_DIR
mpirun ./pi_f_mpi.x 
