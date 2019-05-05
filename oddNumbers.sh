#!/bin/bash
#set -xv
echo -e "\nPrinting numbers ...\n"
numArray=($(seq 1 99))
for ((num=1; $num<=${#numArray[@]}; num++)); {
    #handling number  "1"
    tmp=$num-1
    if [[ ${numArray[$tmp]} -eq 1 ]]; then
        echo -e "Number: $num"
    #handling rest of the numbers
    else
        if [[ ${numArray[$tmp]}%2 -eq 1 ]]; then
            echo -e "Number: $num"
        fi
    fi
}
