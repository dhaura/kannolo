#!/bin/bash
#SBATCH --qos=regular
#SBATCH --time=03:30:00
#SBATCH --nodes=1
#SBATCH --constraint=cpu
#SBATCH --output=%j.log

source $SCRATCH/benchmarks/SpKNN/forks/kannolo/venv/bin/activate

export PYTHONUNBUFFERED=1 

python3 scripts/run_experiments.py --exp experiments/ecir2025/sparse_ms_marco_splade.toml
