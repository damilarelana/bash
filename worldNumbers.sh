#!/bin/bash
#set -xv

#
#Integer X
#
echo -e "Enter integer X"
read x
while [[ $x -lt -100 || $x -gt 100 ]] || ! [[ $x =~ ^-?[0-9]+$ ]]; do
    echo -e "\nChoose an integer neither greater than 100, nor less than -100\n"
    read x 
done

#
#Integer Y
#
echo -e "\nEnter integer Y"
read y
while [[ $y -lt -100 ||  $y -gt 100 ||  $y -eq 0 ]] || ! [[ $y =~ ^-?[0-9]+$ ]]; do
    echo -e "\nChoose an integer neither greater than 100, nor less than -100, nor equal to 0\n"
    read y 
done

#
#Sum of Integers
#
sum=$(( $x + $y ))
echo -e "Sum: $sum"

#
#Difference of Integers
#
difference=$(( $x - $y ))
echo -e "Difference: $difference"

#
#Product of Integers
#
product=$(( $x * $y ))
echo -e "Product: $product"

#
#Quotient of Integers
#
quotient=$(( $x / $y ))
echo -e "Quotient: $quotient"
