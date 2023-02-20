#!/bin/bash

#SBATCH --job-name=array   # Job name
#SBATCH --output=log/array_%A-%a.log    # Standard output and error log
#SBATCH --array=1-20%4                  # Array range

low=5     # Least nr of seconds
high=10   # Most  nr of seconds
srun -n 1 -c 1 stress -c 1 -t $((low + RANDOM%(1+high-low)))
wait

# All is good
exit 0
