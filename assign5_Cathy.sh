#!/bin/bash

# Author : Hyejung Bae(Cathy)

# Create seperator for output of each task 

Sep="++++++++++++++++++++++++++++++++++++++"

# To input the name of file
echo "No3. File name"
echo "Enter the file name(test_assign5)"
read file_name
echo

# Output each line of the file with line number
echo "No4. Output each line of the file with line number"
n=1
while read line
do
echo "Line$n: $line"
((n=$n+1))
done<$file_name
echo $Sep
echo

# Output list the disk usage of the root file 
echo "No5. Output list the disk usage of the root directory of the file system"
df -h /
echo $Sep
echo

# Output a count of all files with "tty" in dev
echo "No6. Output a count of all files wiht tty in directory holds on system devices"
ls /dev | grep tty | wc -l
echo $Sep
echo

# Outut a count of all file/folders with .conf in directory holds system config files
echo "No7. Output a count of all file/folders with .conf in directory holds system config files"
ls /etc | grep .conf | wc -l
echo $Sep
echo

# Output the last ten lines of the boot.log
echo "No8. Output the last ten lines of the boot.log"
sudo tail -n 10 /var/log/boot.log
echo $Sep
echo

# List all files in directory holds commands and shells used by root and other
echo "No9. List all files in directory hols commands and shells used by root and other"
ls /bin
echo $Sep
echo


# List all files in directory holds commands and shells only used by root
echo "No10. List all files in directory holds commands and shells only used by root"
ls ./../../sbin
echo $Sep
echo

# Display the currently mounted file systems
echo "No11. Display the currently mounted file systems"
mount
echo $Sep
echo

# Display the contents of the file that sets the file systems on mount on boot up
echo "No12. Display the contents of the file that sets the file systems on mount on boot up"
cat ./../../etc/fstab
echo $Sep
echo

# Output a count of all processes currently running on the system that have sbin
echo "No13. Output a count of all processes currently running on the system that have sbin"
ps -ef | grep sbin
echo $Sep
echo

echo "Job completed"
