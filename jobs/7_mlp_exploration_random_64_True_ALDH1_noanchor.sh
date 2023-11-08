#!/bin/bash
#SBATCH --job-name=7_mlp_exploration_random_64_True_ALDH1_noanchor
#SBATCH --output=/home/tilborgd/projects/Active_Learning_Simulation/out/7_mlp_exploration_random_64_True_ALDH1_noanchor.out
#SBATCH -p gpu
#SBATCH -N 1
#SBATCH --ntasks=18
#SBATCH --gpus-per-node=1
#SBATCH --time=16:00:00

source $HOME/anaconda3/etc/profile.d/conda.sh
export PYTHONPATH="$PYTHONPATH:$HOME/projects/Active_Learning_Simulation"
$HOME/anaconda3/envs/molml/bin/python -u $HOME/projects/Active_Learning_Simulation/experiments/main.py -o /home/tilborgd/projects/Active_Learning_Simulation/results/7_mlp_exploration_random_64_True_ALDH1_simulation_results_noanchor.csv -acq exploration -bias random -arch mlp -batch_size 64 -retrain True -dataset ALDH1 -anchored False > $HOME/projects/Active_Learning_Simulation/results/7_mlp_exploration_random_64_True_ALDH1_noanchor.log