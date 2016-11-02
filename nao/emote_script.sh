#!/usr/bin/sh

while true
do
    read -p "Do you wish to install this program?" prompt
    
    if [ $prompt == "stop" ]
    then
        break
    elif [ $prompt == "1" ]
    then
        say ""
    elif [ $prompt == "2" ]
    then
        say ""
    elif [ $prompt == "3" ]
    then
        say ""
    else
        echo "Input must be 1 - 3"
done