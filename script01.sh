#!/bin/bash
# 註解
# 命令 bash script01.sh >> output.txt
# 命令 bash script01.sh | tee -a output.txt
# chmod +x script01.sh.sh    ## grant execution right to .sh file

echo "hello world" ## print to screen

# Syntax to define a variable
name=abc   ## name = abc  wont work
number=123  

#Syntax to print a variable
echo $name
echo $number

# redefine a variable
name=abcd
number=1234  

#Syntax to print a variable
echo $name
echo $number

#Syntax to print a variable
echo "My name is $name"

#Syntax to define string variable double quotes
# Double Quotes "" : 在""裡面都是 string 除了 \ 跟 $ 跟 ``
str="Shell scripting article"
echo $str

#Using \" to escape characters
str="Shell scripting \" article \"  " 
echo $str

#using variable in a string
user="ABC"
str="Shell scripting \"article\" by $user"
echo $str

# Single quotes '' : 在''裡面都是 string 就算是 \ 跟 $ 跟 `` 也會是string:
user="ABC"
str='Shell scripting \"article\" by $user'
echo $str

# Left Quotes `` : ``裡面的都是executable command
# $() 也是executable command
#Syntax to define a string variable
echo " `ls -al` "
echo `date`
str="Current date is `date`"
echo $str

# String Comparisons
# +------------------+-----------------------------------------------+
# |   Conditions     |                    Description                |
# +------------------+-----------------------------------------------+
# | Str1 = Str2      | True if the strings are equal                 |                            
# | Str1 != Str2     | True if the strings are not equal             |
# | -n Str1          | True if the string is not null                | 
# | -z Str1          | True if the string is null                    |                             
# +------------------+-----------------------------------------------+
# Numeric Comparisons
# +------------------+-----------------------------------------------+
# |   Conditions     |                    Description                |
# +------------------+-----------------------------------------------+
# | expr1 -eq expr2  | True if the expressions are equal             |
# | expr1 -ne expr2  | True if the expressions are not equal         |
# | expr1 -gt expr2  | True if expr1 is greater than expr2           |
# | expr1 -ge expr2  | True if expr1 is greater than equal to expr2  |
# | expr1 -lt expr2  | True if expr1 is less than expr2              | 
# | expr1 -le expr2  | True if expr1 is less than or equal to expr2  |
# | !expr1           | Negates the result of the expression          |  
# |       &&         |              and                              |
# |       ||         |              or                               |
# +------------------+-----------------------------------------------+

# if then elif then else fi
if [ 35 -gt 0 ]   # 35 > 0
then
    echo "Greater"
fi

#Syntax of simple if then statement
if [ 35 -gt 45 ]  # 35 > 45
then
 echo "Greater"
else
 echo "Lesser"
fi

# Syntax of simple if then else-if statement
if [ 35 -gt 55 ]
then
 echo "Greater"
elif [ 35 -gt 45 ]
then
 echo "Greater"
else
 echo "Lesser"
fi

# Syntax for simple For loop; for do done
for i in 1 2 3 4 5
do
echo "Hello world $i"
done

# Syntax for simple While loop; while do done
i=1
while [ $i -le 5 ]  # i < 5
do
 echo "Hello world $i"
 i=`expr $i + 1`
done


