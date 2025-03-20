#!/usr/bin/env bash

pref_conda=$(echo $CONDA_PREFIX)
#cp ${HOME}/VaricellaGen/bin/VaricellaGen ${pref_conda}/envs/VaricellaGen/bin/
cp ${HOME}/VaricellaGen/bin/process_gvcf.py ${pref_conda}/envs/VaricellaGen/bin/

echo "export PATH=${HOME}/VaricellaGen/bin:$PATH" >>~/.bashrc
source ~/.bashrc
