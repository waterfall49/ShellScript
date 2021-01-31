#!/bin/bash

# Author : Hyejung Bae

# If you input -s, will search for a file at least $2 in size
# Ask the directory and the search files
if [ "$1" = "-s" ]
then 
   echo "Which directory do you want to search in?"
   read dir_name
   echo "Enter file name to write the file list"
   read file_name 
   find $dir_name -size +$2 >> ${file_name}.txt

# If you input -n, find file name has $2
# Ask the file name to write the file list and save it
elif [ "$1" = "-n" ]
then 
   echo "Which directory do you want to search in?"
   read dir_name
   echo "Enter file name to write the file list"
   read file_name
   find $dir_name -type f | grep $2 | tee ${file_name}.txt    

# if you input others, show the error message
else
  echo "Invalid input!!"
fi

