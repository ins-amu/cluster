# GCC 4.9.2

Some newer software can't be compiled on Debian 6/7's compilers,
due to C++11 or compiler bugs.

A built copy of GCC 4.9.2 is available in `/home/duke/gcc492`. To
use it, just `source /home/duke/gcc492/activate`.
which add the `bin/` to your path and adds a linker flag so
that the binaries will use the newer C++ standard library 
implementation.
