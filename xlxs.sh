#!/bin/bash
# Author: Abubakkar Khan Fazla Rabbi
# github Licence: https://github.com/sittiksimano/excel-comma-and-quotation-separator-/blob/main/LICENSE
# Install ssconvert first : apt-get install ssconvert -y 
# Without ssconvert the Bash script wont run
if [ -e newfile.xlsx ]
then
echo "Converting xlsx to csv for readig data"
ssconvert newfile.xlsx newfile.csv
else 
echo "Usage: $0 newfile.xlsx NB: rename you Excel file into newfile.xlsx first"
fi
exec < newfile.csv
read header
while read line
do
 tr ',' '\n'
done  >>results.txt
rm newfile.csv
exec < results.txt
read harder
while read line
do
tr -d '"' < results.txt > final.txt
done
echo -e "Final: \n"
cat final.txt
rm results.txt
