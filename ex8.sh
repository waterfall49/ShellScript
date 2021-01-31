#!/bin/bash

# Author : Hyejung Bae(Cathy)

# This is exercise 8 
echo "This file is $0"

# Display this sentence 
echo " The `tput setaf 1;` $1 `tput setaf 2;` $2 the `tput setaf 7;` $3" 

# Show different color
tput setaf 1; echo "This is red"
tput setaf 4; echo "This is blue"
tput setaf 5; echo "This is purple"
tput setaf 7; echo "This is white"
echo $?

# This is error checking
touch /neeFile.txt
echo $?

# This is debug
set -x
echo "Repeat initiated by user `whoami`"
set +x

# End
echo "Job complete"
