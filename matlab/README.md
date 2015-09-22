# Using MATLAB on the cluster

MATLAB is supported in two ways on the cluster. In each case,
it must be started with the command

```bash
/soft/Matlab/bin/matlab
```

- 1) The interactive desktop is available on the login node, 
	node 1 and node 21.

- 2) The compiler runtime is available on all nodes for MATLAB
	scripts that have been compiled.

In general, the first case is for running a script once that might
require a large amount of memory.

If however you intend to run many jobs or for a long time, you should
compile your script by running MATLAB interactively and then launching
with the compiler runtime.

Please read the MATLAB documentation on how to do this.
	
