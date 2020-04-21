#!/bin/bash
# In shell scripting, we can define functions in two manners.
# 1. Creating a function inside the same script file to use.
# 2. Create a separate file i.e. library.sh with all useful functions.

#Syntax to declare a simple function
print_date()
{
echo "Today is ` date +"%A %d %B %Y (%r)" ` "
return
}

#Calling the above function
print_date

