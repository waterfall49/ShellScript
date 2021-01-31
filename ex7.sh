#!/bin/bash

# Author : Hyejung Bae 

# Output date and time
echo "This is `date` `time`"

# Output who ran the script 
echo "This is run by `pwd`"

# Output the result of Linux commands 
# Display ls -la command
echo "The current file directory listing is"
`ls -la`

# Display pwd command
echo "The current working directory is"
`pwd`

# Display echo $PATH command
echo "The path is"
`echo $PATH`

# Display which chmod command
echo "Where the PATH a chmod command is being running from"
`which chmod`

# Display finish comment 
echo "Job Completed!!" 
