
# for freesurfer
export SUBJECTS_DIR=$HOME/subject_dir
export FREESURFER_HOME=/soft/freesurfer
source $FREESURFER_HOME/SetUpFreeSurfer.sh

# for FSL
FSLDIR=/soft/fsl/
. ${FSLDIR}/etc/fslconf/fsl.sh
PATH=${FSLDIR}/bin:${PATH}
export FSLDIR PATH

# for scripts
export PATH=/soft/scripts:$PATH

# for mrtrix
source /soft/gcc492/activate
export PATH=/soft/mrtrix3/bin/:${PATH}
export PATH=/soft/mrtrix3/scripts/:${PATH}

# for Matlab Compiler Runtime
export LD_LIBRARY_PATH=/soft/MATLAB_Compiler_Runtime/v81/runtime/glnxa64:/soft/MATLAB_Compiler_Runtime/v81/bin/glnxa64:/soft/MATLAB_Compiler_Runtime/v80/sys/os/glnxa64:/soft/MATLAB_Compiler_Runtime/v81/sys/java/jre/glnxa64/jre/lib/amd64/native_threads:/soft/Matlab_Compiler_Runtime/v81/sys/java/jre/glnxa64/jre/lib/amd64/server:/soft/Matlab_Compiler_Runtime/v81/sys/java/jre/glnxa64/jre/lib/amd64:$LD_LIBRARY_PATH
export XAPPLRESDIR=/soft/MATLAB_Compiler_Runtime/v81/X11/app-defaults:$XAPPLRESDIR

# for MNE
export MNE_ROOT=/soft/MNE-2.7.3-3268-Linux-x86_64
source $MNE_ROOT/bin/mne_setup_sh
