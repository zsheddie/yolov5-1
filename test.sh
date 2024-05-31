#!/bin/bash


#SBATCH --p: "dev_gpu_4_a100"
#SBATCH --gres: gpu:1

echo "SLURM_JOBID: " $SLURM_JOBID
echo "SLURM_ARRAY_TASK_ID: " $SLURM_ARRAY_TASK_ID
echo "SLURM_ARRAY_JOB_ID: " $SLURM_ARRAY_JOB_ID

source activate yolo

echo start on $(date)
python train.py --img 640 --batch 32 --epochs 2 --data fall_detection01.yaml --weights ' ' --cfg yolov5s.yaml
echo end on $(date)