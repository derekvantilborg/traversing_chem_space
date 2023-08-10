#!/bin/bash
#SBATCH --job-name=39_gcn_bald_small_64_True_ALDH1
#SBATCH --output=/home/tilborgd/projects/Active_Learning_Simulation/out/39_gcn_bald_small_64_True_ALDH1.out
#SBATCH -p gpu
#SBATCH -N 1
#SBATCH --ntasks=18
#SBATCH --gpus-per-node=1
#SBATCH --time=60:00:00

source $HOME/anaconda3/etc/profile.d/conda.sh
export PYTHONPATH="$PYTHONPATH:$HOME/projects/Active_Learning_Simulation"
$HOME/anaconda3/envs/molml/bin/python -u $HOME/projects/Active_Learning_Simulation/experiments/main.py -o /home/tilborgd/projects/Active_Learning_Simulation/results/39_gcn_bald_small_64_True_ALDH1_simulation_results.csv -acq bald -bias small -arch gcn -batch_size 64 -retrain True -dataset ALDH1 > $HOME/projects/Active_Learning_Simulation/results/39_gcn_bald_small_64_True_ALDH1.log