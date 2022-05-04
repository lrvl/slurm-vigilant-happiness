#!/bin/bash
#
# Author:       Leroy van Logchem
# Purpose:      Display only the loadavg of active Slurm nodes
# Requirements: Slurm commands scontrol
# Features:     Skips non-existing nodes
#               Parallel processing

set -o errexit;
PARALLELISM=10;

for node in $(scontrol show node | grep NodeName | awk -F= '{print $2}' | awk '{print $1}');
do
    if test "$(jobs | wc -l)" -ge $PARALLELISM; then
        wait;
    fi;
    {
        getent hosts "$node" > /dev/null || continue;
        timeout 1 bash -c "</dev/tcp/$node/22" || continue;
        UPTIME=$(ssh -q "$node" uptime);
        echo "$node $UPTIME"
    } &
done;
wait
