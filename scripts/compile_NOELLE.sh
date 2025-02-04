#!/bin/bash -e

# Go to the directory where we install all external software
mkdir -p external ;
cd external ;

# Download the git repository
if ! test -d NOELLE ; then
  git clone https://github.com/scampanoni/noelle.git NOELLE ;
fi

# Compile NOELLE
cd NOELLE ;
if ! test -e enable ; then
  make ;
fi
