#!/bin/bash

# submit jobs to OAR


# build params file
rm -f params.txt
for i in $(seq 1 10);
do
	# these are args to mymain.m
	echo 100 1.5 >> params.txt
done


# submit
oarsub -l walltime=00:05:00 --array-param-file params.txt ./oarjob.sh
