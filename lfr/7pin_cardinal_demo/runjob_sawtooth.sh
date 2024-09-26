#!/bin/bash
#PBS -N <your_jobname>
#PBS -l select=4:ncpus=48:mpiprocs=48:mem=190GB:ompthreads=1
#PBS -l walltime=03:00:00
#PBS -m ae
#PBS -j oe
#PBS -P <your_hpc_project>

module load use.moose
module load moose-tools
module load openmpi/4.1.5_ucx1.14.1
module load cmake

export CC=mpicc
export CXX=mpicxx
export FC=mpif90 

export WORKING_DIR=<your working directory, ideally on /scratch/ for optimized write latency>
export CARDINAL_DIR=$WORKING_DIR/cardinal
export GRIFFIN_DIR=$WORKING_DIR/griffin
export NEKRS_HOME=$CARDINAL_DIR/install
export ENABLE_OPENMC=false
export NEKRS_OCCA_MODE_DEFAULT=CPU
export MOOSE_DIR=$CARDINAL_DIR/contrib/moose

echo ------------------------------------------------------
echo -n 'Job is running on node\n'; cat $PBS_NODEFILE
echo ------------------------------------------------------
echo PBS: qsub is running on $PBS_O_HOST
echo PBS: executing queue is $PBS_QUEUE
echo PBS: working directory is $PBS_O_WORKDIR
echo PBS: job identifier is $PBS_JOBID
echo PBS: job name is $PBS_JOBNAME
echo PBS: node file is $PBS_NODEFILE
echo PBS: current home directory is $PBS_O_HOME
echo PBS: PATH = $PBS_O_PATH
echo ------------------------------------------------------

#NNODES=`cat $PBS_NODEFILE | wc -l`
#NCPUS=4
#NSLOTS=$((NNODES * NCPUS))

cd $PBS_O_WORKDIR

mpirun $CARDINAL_DIR/cardinal-opt -i NT.i > logfile_144procs
