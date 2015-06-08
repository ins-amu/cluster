*Configuration of the pipeline SCRIPTS for the cluster*

The following explain how to use [SCRIPTS](https://github.com/timpx/scripts) on the cluster.

- clone this repo into your home directory on the cluster
- if wanted, change SUBJECTS_DIR environment variable in scripts_config.sh
and/or create a subject_dir directory (for FreeSurfer data)
- if wanted, change the location of the config file in launch.sh
- create the following data structure, for instance in your home:
  - example_subject
    - data
      - T1
        - T1 niftii or dicom
      - DWI
        - DWI niftii or dicom
- change param_file, one subject name by line
- update the config_example_subject.sh accordingly 

To launch the pipeline, ```bash sub_job.sh```.
