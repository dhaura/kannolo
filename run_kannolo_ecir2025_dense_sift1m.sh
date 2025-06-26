#!/bin/bash
#SBATCH --qos=debug
#SBATCH --time=30:00
#SBATCH --nodes=1
#SBATCH --constraint=cpu
#SBATCH --output=%j.log

source $SCRATCH/benchmarks/SpKNN/forks/kannolo/venv/bin/activate

python3 scripts/run_experiments.py --exp experiments/ecir2025/dense_sift1m.toml
