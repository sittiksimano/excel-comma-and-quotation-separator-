#!/bin/bash
# Author: Abubakkar Khan Fazla Rabbi
# github Licence: 
# Install ssconvert first : apt-get install ssconvert -y 
# Without ssconvert the Bash script wont run
#  
if [ -e newfile.xlsx ]
then
echo "Converting xlsx to csv for readig data"
ssconvert newfile.xlsx newfile.csv
else 
echo "Usage: $0 All text data"
fi
exec < newfile.csv
read header
while read line
do
 tr ',' '\n'
done  >>results.txt

exec < results.txt
read harder
while read line
do
tr -d '"' < results.txt > final.txt
done
echo -e "Final: \n"
cat final.txt
#
