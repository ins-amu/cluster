# Using MATLAB on the cluster

MATLAB can be used on the cluster by first compiling your main
script and then running it with the MATLAB Compiler Runtime (MCR).

This folder contains a working demo of how to do this:

- `mymain.m` - main MATLAB script for this example
- `params.txt` - list of parameter values per job to run `mymain.m` with
- `compile.sh` - Bash script which compiles your main MATLAB script
- `oarjob.sh` - Bash script to run a single job
- `oarsub.sh` - Bash script to submit all jobs

When you have modified `mymain.m`, you need to run `compile.sh`.

When the compilation is done, you can run `oarsub.sh` to submit your jobs.
