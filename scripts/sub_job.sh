#! /bin/bash
rm oar_files/*

oarsub -l walltime=24:00:00 -p "host='n03'" --stdout='oar_files/log.txt' --stderr='oar_files/err.txt' --array-param-file param_file.txt "bash launch.sh" 
