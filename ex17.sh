#!/bin/bash

#Author : Hyejung Bae

# User Input
echo "What operation to perform?(p/d/s)"
read op
echo "Which string to find?"
read str
echo "Which file to search?" 
read search  

# command
if [ "$op" = "s" ]
then 
	echo "What string to substitute?"
	read sub
	sudo sed s/$str/$sub/g $search
elif [ "$op" = "p" ]
then
	sudo sed -n /$str/p $search
elif [ "$op" = "d" ]
then
	sudo sed /$str/d $search
else
	echo "Invalid input"
fi


echo ""
echo "Job Completed!!"   
