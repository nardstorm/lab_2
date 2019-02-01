#!/bin/bash
# Authors : Joseph McSoud
# Date: 2/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter regular expression, and then enter file name: "
read regex
echo "now file name:"
read file
grep regex file
echo 
echo "Phone number occurences in regex_practice.txt: "
grep -c '[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}' regex_practice.txt
echo 
echo "Email occurences in regex_practice.txt: "
grep -c '@[[:alnum:]].[[:alnum:]]' regex_practice.txt
echo 
echo "Now writing phone numbers to file"
grep '303-[0-9]\{3\}-[0-9]\{4\}' regex_practice.txt > phone_results.txt
echo 
echo "Now writing @geocities.com emails to file"
grep '[[:alnum:]]@geocities.com' regex_practice.txt > email_results.txt
echo 
echo "Now searching for command line argument in regex_practice.txt"
grep $1 regex_practice.txt > command_results.txt
echo 
echo "results written to command_results.txt"
