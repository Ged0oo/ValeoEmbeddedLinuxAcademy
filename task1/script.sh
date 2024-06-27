#!/bin/bash

# Check if at least two arguments are provided
if [ $# -lt 2 ]
then
    echo "Usage : <File 1> <File 2> .. <File n> <Target Directory>"
    exit 1
fi 

# Get the last argument as the target directory
dir=${@: -1}

# Create the target directory if it doesn't exist
if [ ! -d ${dir} ] 
then
    mkdir -p ${dir}
fi


# Copy all files except the last argument to the target directory
for file in ${@:1:$#-1}
do
    cp ${file} ${dir}
done