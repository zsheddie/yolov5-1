#!/bin/bash
#SBATCH -t 30
#SBATCH -p "dev_gpu_4_a100"
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=4

python train.py --img 640 --batch 64 --epochs 30 --data fall_detection01.yaml --weights ' ' --cfg yolov5l.yaml