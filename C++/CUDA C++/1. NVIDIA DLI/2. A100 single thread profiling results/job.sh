#!/bin/bash
#SBATCH --nodes 1
#SBATCH --cpus-per-task 4
#SBATCH --ntasks=1
#SBATCH --job-name CUDA_profiling
#SBATCH -o output.log
#SBATCH -e error.log
#SBATCH --gres=gpu:1
#SBATCH --account=scw1901
#SBATCH --partition=accel_ai

module load compiler/gnu/11/3.0
module load CUDA/11.7

nvcc add_gpu_single_thread.cu -o add_gpu
echo "GPU only version: Completed"

nsys nvprof --print-gpu-trace ./add_gpu
echo "nsys profiling: Completed"

