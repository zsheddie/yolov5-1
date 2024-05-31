#!/bin/bash
#SBATCH -t 30
#SBATCH -p "dev_gpu_4_a100"
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=4

python detect_cluster.py