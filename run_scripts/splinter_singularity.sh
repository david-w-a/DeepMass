#!/bin/bash
#PBS -S /bin/bash
#PBS -q gpu
#PBS -j oe
#PBS -N deepmass
#PBS -l nodes=1:ppn=32
#PBS -l walltime=100:00:00


cd /share/splinter/ucapnje/DeepMass/run_scripts

singularity exec --nv -B /share/splinter/ucapnje:/home/ucapnje/share  -B /state/partition1:/home/ucapnje/partition_mount /share/data1/eme/ubuntu_tf_keras.img /home/ucapnje/share/DeepMass/run_scripts/submit_training.sh # &> /share/splinter/ucapnje/DeepMass/run_scripts/unet_test_splinter_output.txt

#source activate tensorflow

#cd share/DeepMass/run_scripts/

#python simple_denoising.py


