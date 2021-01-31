#!/bin/bash

# Author : Hyejung Bae(Cathy) W0411909 

sep="+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

echo $sep | tee $2.txt
echo "current path for -p, current shell for -s" 
if [ "$1" = "-p" ]
then
	echo "your current path is" >> $2.txt
	realpath $2.txt
	realpath $2.txt >> $2.txt
elif [ "$1" = "-s" ]
then
	echo "your current shell is" >> $2.txt 
	echo $0
	echo $0 >> $2.txt
else
	echo "illegal switch"
	echo "illegal switch" >> $2.txt
fi
echo $sep >> $2.txt 
echo ""

echo "full system information including hostname" 
echo "full system information including hostname" >> $2.txt
echo $sep
echo $sep >> $2.txt
ps -ef | grep `whoami`
ps -ef | grep `whoami` >> $2.txt
echo $sep >> $2.txt
echo $sep
echo ""

echo "currently mounted file"
echo "currently mounted file" >> $2.txt
echo $sep >> $2.txt
echo $sep
mount
mount >> $2.txt
echo $sep >> $2.txt
echo $sep
echo ""

echo "current runlevel"
echo "current runlevel" >> $2.txt
echo $sep >> $2.txt
runlevel
runlevel >> $2.txt
echo $sep >> $2.txt
echo $sep
echo ""

echo "full listing of home folder"
echo "full listing of home folder" >> $2.txt
echo $sep
echo $sep >> $2.txt
ls -la /home/osys1000 
ls -la /home/osys1000 >> $2.txt
echo $sep
echo $sep >> $2.txt
echo ""


echo "archive and compress file" 
echo "archive and compress file" >> $2.txt
echo $sep
echo $sep >> $2.txt
#function
fnCompress()
{
	sudo tar -zcvf $1.tar.gz $2
	echo "Compressed File : $1.tar.gz"
	echo $1.tar.gz >> $1.txt

}

#calling the function
fnCompress $2 $3

echo "Job Completed!!"
echo "Job Completed!!" >> $2.txt


