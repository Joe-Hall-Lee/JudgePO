#!/bin/bash
#SBATCH --job-name=Llama-2-13b-chat_lr_2e-5  # 任务名字
#SBATCH --nodes=1  # 节点
#SBATCH --ntasks=4  # 需要多少个 cpu
#SBATCH --gres=gpu:1  # 使用 gpu 数量，如果 2 个 gpu 写成 gpu:2
#SBATCH --partition=gpus # 分区默认即可


CUDA_VISIBLE_DEVICES="6" python distill_dpo.py \
    --model ../output/Llama-3.2-3B-Instruct-arena_dpo_sft_0.05_0.5_lr_1e-6_epoch_1 \
    --input_file ../data/arena_dpo.json \
    --output_file ../data/arena_sft_dpo_llama3.json