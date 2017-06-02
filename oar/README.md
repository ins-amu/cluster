# OAR 

OAR is a job manager for heterogeneous HPC resources.

## Overview

Submit a job with the `oarsub` command (read `oarsub -h` for details):
```bash
oarsub -l walltime=8:00:00 "./myscript.sh 42 0.5"
```

Monitor status with `oarstat`
```
oarstat -u $USER
```

View resource usage with the online [Gantt chart](http://139.124.148.56/drawgantt)

## Resources

- http://oar.imag.fr/docs/2.5/#ref-user-docs
