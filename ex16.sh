#!/bin/bash

#Author : Hyejung Bae

source compress_function.sh

echo "Which folder do you want to archive?"
read folder

echo "Where do you want to save the archive?"
read folder2

#make directory 
mkdir $folder2

if [ "$1" = "-z" ]
then 
	fnCompress $folder $folder2
	echo ""
	echo "The full path of this Z file is"
	realpath $folder2/$folder.tar.Z	

elif [ "$1" = "-g" ]
then
	fnGzip $folder $folder2
	echo ""
	echo "The full path of this qzip file is"
	realpath $folder2/$folder.tar.gz

elif [ "$1" = "-b" ]
then
	fnBzip $folder $folder2
	echo ""
	echo "The full path of this bzip file is"
	realpath $folder2/$folder.tar.bz2

else
	echo "You entered wrong input!"
fi

echo ""
echo "Job Completed!!"   
