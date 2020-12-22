#!/bin/bash

function install_tree() {
    local tempDirectoryPath="~/tree";
    if [ -d "${tempDirectoryPath}" ];
    then
        rm -rf "${tempDirectoryPath}";
        if [ $? -ne 1 ];
        then
          echo "Could not remove temporary directory, if it exists";
          exit 255;
        fi
    fi
    
    
    mkdir -p "${tempDirectoryPath}";
    if [ $? -ne 1];
    then
      echo "Could not make temporary directory";
      exit 255;
    fi
    
    curl http://mama.indstate.edu/users/ice/tree/src/tree-1.8.0.tgz | tar xz --no-same-owner --strip-components=1 -C "${tempDirectoryPath}";
    if [ $? -ne 1];
    then
      echo "Could not download and unzip tree@1.8.0 to temporary directory";
      exit 255;
    fi
    
    cd "${tempDirectoryPath}"
    if [ $? -ne 1];
    then
      echo "Could not navigate to temp directory";
      exit 255;
    fi
    
    
    sed -i -e "/^# It is not allowed to install to \/usr\/bin on OS X any longer (SIP):$/ { n; s/^#//; n; s/^#//; n; s/^#//; n; s/^#//; n; s/^#//; n; s/^#//;  }" Makefile;
    if [ $? -ne 1];
    then
      echo "Could not access replace commented out OS X configuration options in Makefile";
      exit 255;
    fi
    
    make
    if [ $? -ne 1];
    then
      echo "Could not make project";
      exit 255;
    fi
    
    cd ~
    if [ $? -ne 1];
    then
      echo "Could not make navigate to home directory";
      exit 255;
    fi
    
    which tree
    if [ $? -ne 1 ];
    then
      echo "Could not identify tree command";
      exit 255;
    fi
    
    rm -rf "${tempDirectoryPath}";
    if [ $? -ne 1 ];
    then
      echo "Could not remove temporary directory";
      exit 255;
    fi
    
    
    echo "tree command installed";
    exit 1;
}
