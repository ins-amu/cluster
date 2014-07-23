#!/bin/sh

# setup
outfile=out.txt
errfile=err.txt
options="--stdout=out.txt --stderr=err.txt"

# clean up after previous run
rm -f $outfile
rm -f $errfile

# submit job
oarsub $options ./job.sh
