#!/bin/bash

# Parameters
#SBATCH --cpus-per-task=10
#SBATCH --error=/home/sd6701/fall2025_deeplearning/outputs/dinov2_vitl14_cc3m/%j_0_log.err
#SBATCH --gpus-per-node=8
#SBATCH --job-name=dinov2:train
#SBATCH --mem=0GB
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --open-mode=append
#SBATCH --output=/home/sd6701/fall2025_deeplearning/outputs/dinov2_vitl14_cc3m/%j_0_log.out
#SBATCH --partition=learnlab
#SBATCH --signal=USR2@120
#SBATCH --time=2800
#SBATCH --wckey=submitit

# command
export SUBMITIT_EXECUTOR=slurm
srun --unbuffered --output /home/sd6701/fall2025_deeplearning/outputs/dinov2_vitl14_cc3m/%j_%t_log.out --error /home/sd6701/fall2025_deeplearning/outputs/dinov2_vitl14_cc3m/%j_%t_log.err /home/sd6701/miniconda3/envs/dinov2/bin/python -u -m submitit.core._submit /home/sd6701/fall2025_deeplearning/outputs/dinov2_vitl14_cc3m
