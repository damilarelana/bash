#!/bin/bash
#set -xv
echo -e "\nPrinting numbers ...\n"
numArray=($(seq 1 50))
for ((num=1; $num<=${#numArray[@]}; num++)); {
    tmp=$num-1
    echo -e "Number: ${numArray[$tmp]}"
}

