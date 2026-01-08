#!/bin/bash
# This script prints "Hello, World!"
#SBATCH --job-name=hello_world
#SBATCH --partition=thin_course
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --time=00:05:00
#SBATCH --output=%x_%j.out

# Load environment modules
module load 2025
module load Python/3.13.1-GCCcore-14.2.0

python -c "print('Hello, World!')"