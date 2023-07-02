#!/bin/bash
#SBATCH --job-name=33_mlp_bald_random_16_True
#SBATCH --output=/home/tilborgd/projects/Active_Learning_Simulation/out/33_mlp_bald_random_16_True.out
#SBATCH -p gpu
#SBATCH -N 1
#SBATCH --ntasks=18
#SBATCH --gpus-per-node=1
#SBATCH --time=60:00:00

source $HOME/anaconda3/etc/profile.d/conda.sh
export PYTHONPATH="$PYTHONPATH:$HOME/projects/Active_Learning_Simulation"
$HOME/anaconda3/envs/molml/bin/python -u $HOME/projects/Active_Learning_Simulation/experiments/main.py -o /home/tilborgd/projects/Active_Learning_Simulation/results/33_mlp_bald_random_16_True_simulation_results.csv -acq bald -bias random -arch mlp -batch_size 16 -retrain True > $HOME/projects/Active_Learning_Simulation/results/33_mlp_bald_random_16_True.log
