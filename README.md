# slurm-vigilant-happiness
Slurm related

### slurm_loadavg.sh

- Built with:   Almost pure Bash
- Purpose:      Display only the loadavg of active Slurm nodes
- Requirements: Slurm commands scontrol
- Features:     Skips non-existing nodes

Example output:

    q-32vcpu-dy-c6i8xlarge-10  15:15:33 up 1 day,  6:33,  0 users,  load average: 32.19, 32.30, 32.31
    q-32vcpu-dy-c6i8xlarge-11  15:15:33 up 1 day,  6:33,  0 users,  load average: 32.09, 32.28, 32.43
     q-32vcpu-dy-c6i8xlarge-1  15:15:33 up 1 day,  6:33,  0 users,  load average: 32.64, 32.66, 32.72
    q-32vcpu-dy-c6i8xlarge-12  15:15:33 up 1 day,  6:33,  0 users,  load average: 32.54, 32.40, 32.40

## 🤝 Support

Contributions, issues, and feature requests are welcome!

Give a ⭐️ if you like this project!
