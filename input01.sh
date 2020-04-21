#!/bin/bash

# 從命令列讀取input
echo "Hello World! "$1
echo "I love "$2
# 命令  bash input01.sh input1 input2
# $1 就是 input1 的變數
# $2 就是 input2 的變數


# Q&A方式 從命令列讀取input 
# read -p "問題" 變數
read -p "What language do you like most? " language
echo "You like "$language


# Q&A方式 從命令列讀取input  if case
read -p "What food do you like most? " food_name
 
if test -z $food_name   # check food_name is empty or not
then
    echo "No food you like?"
else
    echo "You like "$food_name
fi


read -p "Enter a user name: " USER
echo "You entered: $USER"



