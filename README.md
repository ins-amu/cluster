# ins-amu cluster

This repo contains documentation and examples for using 
the cluster.

- [`doc`](doc): general documentation on architecture of cluster and how to use it
- [`mrtrix3`](mrtrix3): using MRtrix3 software
- [`ssh`](ssh): how to access the cluster over SSH
- `bin`: convenient scripts
- `python`: examples for Python
- `matlab`: examples for Octave/MATLAB
- `oar`: examples scripts interacting with the OAR job system
- [`opencl`](opencl): intro, examples on using OpenCL

See below or get started by heading over to the [wiki](https://github.com/ins-amu/cluster/wiki)
, and [let us know](https://github.com/ins-amu/cluster/issues) if you have any problems.

## Getting started

All the code in this repository is easy to get on the cluster. After
connecting, run the following command to get your own copy:

```bash
git clone https://github.com/ins-amu/cluster
```

followed by

```bash
cd cluster/python/ex01-getting-started
./submit.sh
```

Please see [that example](https://github.com/ins-amu/cluster/tree/master/python/ex01-getting-started) to understand the steps better.

## Contributors

If you'd like to contribute: 

- the actual repo code is for scripts and examples that actually work on the cluster
- any example includes a README.md that explains how to run the example and shows the results
- any problems, bugs, or requests for examples, TODOS, etc should be registered under the issue tracker
