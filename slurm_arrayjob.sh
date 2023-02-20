#!/bin/bash

#SBATCH --job-name=array   # Job name
#SBATCH --output=log/array_%A-%a.log    # Standard output and error log
#SBATCH --array=1-20%4                  # Array range

srun -n 1 -c 1 stress -c 1 -t 10
wait

# Run after mkdir log
# Purpose: Create 20 jobs and execute 4 at most in parallel
