#!/bin/bash
# color code 色碼
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${GREEN}This is green${NC}"
echo -e "${RED}This is red${NC}"

## ``跟 $() 跟可以當命令
echo `date` > todays_date.txt
echo ` cat todays_date.txt `
echo $(date)

# 把命令設成變數
MY_VARIABLE="some_value"
TODAYS_DATE=$(date +%F)
TODAYS_DATE2=`date +%F`

echo $MY_VARIABLE
echo $TODAYS_DATE
echo $TODAYS_DATE2

MY_NAME="steve"
ACTIVITY="eat"
echo $MY_NAME
echo "My name is $MY_NAME"
echo "I like ${ACTIVITY}ing"



## if
VARIABLE=1
if [ $VARIABLE -eq 1 ]
then
  echo "The variable is 1"
fi
if ! [ $VARIABLE -eq 2 ] ; then
  echo "The variable is not 2"
fi

## if file
if [ -e /etc/passwd ] ; then
  echo "The file /etc/passwd exists"
fi
if [ -d /etc/ ] ; then
  echo "The directory /etc/ exists"
fi
if [ -s /etc/passwd ]
then
  echo "The file /etc/passwd exists and is not empty"
fi

# if one of these two files exist
if [ -e /files/file1 ] || [ -e /files/file2 ] 
then
  echo "one of these two files exist"
fi

# if both of these two files exist
if [ -e /files/file1 ] && [ -e /files/file2 ]
then
  echo "both of these two files exist"
fi

## if 變數
MY_SHELL="csh"
if [ "$MY_SHELL" = "bash" ]
then
  echo "You like Bash."
elif [ "$MY_SHELL" = "csh" ]
then
  echo "You like csh."
else
  echo "You like something else."
fi


# for loop
for LANG in Ruby Javascript Elixir
do
  echo "I know $LANG"
done


# ## 資料夾內檔案 批次改名
# PICTURES=$(ls *jpg)
# DATE=$(date +%F)
# for PICTURES in $PICTURES
# do
#   mv ${PICTURE} ${DATE}-${PICTURE}
# done



# ## 資料夾內檔案 批次複製
# for file in * ; do
#   cp $file /tmp/backup/$file
# done


# 數學運算時不能用普通asign  改用let 或 (())
X=5
X=$X+1
echo $X #=> 5+1

let X=5
let X=$X+1
echo $X #=> 6

((x = 5))
((x = x + 1))
echo $x #=> 6


# ## exit可以搭配if
# HOST="google.com"
# ping -c 1 $HOST
# if [ "$?" -eq "0" ]
# then
#   echo "$HOST reachable"
#   exit 0
# else
#   echo "$HOST unreachable"
#   exit 1
# fi


# bash的正規表達式
# * matches zero or more characters
# ? matches exactly one character
# [] matches any characters inside the brackets, matches exactly one
# [a-g] matches all letters from a to g
# [3-7] matches all numbers from 3 to 7
# [[:alpha]]
# [[:alnum]]
# [[:digit:]]
# [[:lower:]]
# [[:space:]]
# [[:upper:]]
# \ escape character, used to match wildcard characters


