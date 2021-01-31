#!/bin/bash

# Author : Hyejung Bae(Cathy)

# Create a subfolder in the current directory with a name in the first command argument
mkdir $1
echo "$1 folder was created!"

# Create a file with a name in second command argument
touch $2.txt
echo "$2.txt was created!"

# Change the permission to rwx for user, rw for group, r for others
chmod 764 $2.txt
echo "The permission of this file were changed"
echo "read, write and execute for user, read and write for group, read for others"

# Display all files in the /bin folder and redirect the output th the file
ls -la bin >> $2.txt
echo "The list of files in /bin have been written to the file"

# Output number of lines in the file
echo "the count of the files in /bin is" 
wc -l < $2.txt

# Move the file into created folder
mv $2.txt ./$1/.

# Report job complete
echo "$2.txt file moved to $1 folder"
echo "Job completed!!" 
