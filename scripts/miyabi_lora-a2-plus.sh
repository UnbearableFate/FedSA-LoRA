#!/bin/bash

#PBS -q regular-g
#PBS -W group_list=xg24i002
#PBS -l select=1
#PBS -l walltime=04:00:00
#PBS -j oe

#export WANDB_MODE=offline
WORK_DIR=/work/xg24i002/x10041/FedSA-LoRA

cd $WORK_DIR

/work/xg24i002/x10041/miniconda3/envs/fedsa-lora/bin/python \
 $WORK_DIR/federatedscope/main.py \
 --cfg $WORK_DIR/federatedscope/glue/yamls/lora-a2-plus.yaml