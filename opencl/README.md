# OpenCL

OpenCL is a API taking advantage of CPUs and GPUs to 
perform intensive computations.

The cluster has 4x NVIDIA Tesla M2075 with 6 GB, but OpenCL
can also be used on the CPUs.

## Reading

- http://www.ks.uiuc.edu/Research/gpu/files/upcrc_opencl_lec1.pdf
- http://www.cc.gatech.edu/~vetter/keeneland/tutorial-2011-04-14/06-intro_to_opencl.pdf
- http://stackoverflow.com/questions/2423825/custom-types-in-opencl-kernel

## Prerequisites

Using OpenCL requires your code to link with the OpenCL library, and at runtime to
find one or more OpenCL drivers, each for a given device.

### NVIDIA GPU

The NVIDIA driver is already installed for everyone on the cluster

`/usr/local/cuda/`

but only accessible on nodes with a GPU running.

### AMD driver for CPUs

The AMD driver is installed in @maedoc's home directory and can be used
by anyone with the CPUs, on any node (despite being Intel CPUs, the AMD driver is said
to work well). To use this driver, 

```bash
export AMDAPPSDKROOT="/home/duke/AMDAPPSDK-3.0-0-Beta"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$AMDAPPSDKROOT/lib/x86_64/:$AMDAPPSDKROOT/lib/x86/"
export OPENCL_VENDOR_PATH="$AMDAPPSDKROOT/etc/OpenCL/vendors/"
```

(for the experts: the system's `nvidia.icd` is symlinked into this vendor path
so you can still choose at runtime between NVIDIA & AMD platforms.

## Running code

Th easiest way to get code running is to not use OpenCL directly but
through a wrapper library. 

### PyOpenCL

PyOpenCL is a Pythonic wrapper over OpenCL and makes it easy to compute
with NumPy arrays. There's a copy already built for the cluster's system
Python; you can use it as follows

```bash
~ export PYTHONPATH=$PYTHONPATH:/home/duke/pyopencl/build/lib.linux-x86_64-2.7
~ python /home/duke/pyopencl/examples/demo.py
Choose platform:
[0] <pyopencl.Platform 'AMD Accelerated Parallel Processing' at 0x7f4c68006830>
[1] <pyopencl.Platform 'NVIDIA CUDA' at 0x2a96b20>
Choice [0]:1
Set the environment variable PYOPENCL_CTX='1' to avoid being asked again.
[ 0.  0.  0. ...,  0.  0.  0.]
0.0
```

If you get 

```bash
Traceback (most recent call last):
  File "/home/duke/pyopencl/examples/demo.py", line 5, in <module>
    import pyopencl as cl
  File "/home/duke/pyopencl/build/lib.linux-x86_64-2.7/pyopencl/__init__.py", line 30, in <module>
    import pyopencl._cl as _cl
ImportError: /usr/lib/libstdc++.so.6: version `GLIBCXX_3.4.15' not found (required by /home/duke/pyopencl/build/lib.linux-x86_64-2.7/pyopencl/_cl.so)
```

Then you forgot to `oarsub` onto a compute node.

### Simple-OpenCL

[Simple-OpenCL](https://code.google.com/p/simple-opencl) is a extremely simplified
API for C programmers, requiring just a few lines to launch kernels. See the 
[manual](https://code.google.com/p/simple-opencl/wiki/Manual) for details.
