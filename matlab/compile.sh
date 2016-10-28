#!/bin/bash

if [[ -z "$MATLAB" ]]
then
	MATLAB=/soft/matlab2015a
fi

mainscript=$1

if [[ -z "$mainscript" ]]
then
	echo "please provide a script to compile."
	exit 1
fi

echo "starting MATLAB.."
$MATLAB/bin/matlab -nojvm <<EOF
fprintf('compiling $1..\n');
mcc -m $1
fprintf('compilation complete. MCR installer for this version is here:\n');
mcrinstallerfile
EOF
