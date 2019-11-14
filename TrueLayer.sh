#!/bin/bash

if [ ! -d ./TrueLayer ]
then

#Create the TrueLayer directory within user's HOME directory
mkdir ./TrueLayer

#Create the TLtest.txt file within the /TrueLayer directory
touch ./TrueLayer/TLTest.txt

#Append the time the script was run to TLTest.ttx
echo -e "This script was run on" `date +%T` "\n" >> ./TrueLayer/TLTest.txt

#Append the name of this script to TLTest.txt
echo -e "This script is called" $0 "\n" >> ./TrueLayer/TLTest.txt

#Append verbose filenames in the running folder to TLTest.txt
echo -e "The files & directories in the running directory are listed below:\n" `ls -a` "\n" >> ./TrueLayer/TLTest.txt

#Interrogate opendns server for this machine's public IPv4 address and append to TLtest.txt
echo -e "This node's public IPv4 address is" `dig @resolver1.opendns.com A myip.opendns.com +short` "\n"  >> ./TrueLayer/TLTest.txt

#Display the available system RAM in MB
echo -e "Available memory in MB:" `awk '/^Mem/ {print $3}' <(free -m)` "\n" >> ./TrueLayer/TLTest.txt

#Display the PID and the name of the script executor
echo -e "PID:"$$ "executed by" $USER "\n" >> ./TrueLayer/TLTest.txt

else

#Comment stating directory has already been created
echo -e "##\n" >> ./TrueLayer/TLTest.txt

#Append the time the script was run to TLTest.txt
echo -e "This script was run on" `date +%T` "\n" >> ./TrueLayer/TLTest.txt

#Append the name of this script to TLTest.txt
echo -e "This script is called" $0 "\n" >> ./TrueLayer/TLTest.txt

#Append verbose filenames in the running folder to TLTest.txt
echo -e "The files & directories in the running directory are listed below:\n" `ls -a` "\n" >> ./TrueLayer/TLTest.txt

#Interrogate opendns server for this machine's public IPv4 address and append to TLtest.txt
echo -e "This node's public IPv4 address is" `dig @resolver1.opendns.com A myip.opendns.com +short` "\n"  >> ./TrueLayer/TLTest.txt

#Display the available system RAM in MB
echo -e "Available memory in MB:" `awk '/^Mem/ {print $3}' <(free -m)` "\n" >> ./TrueLayer/TLTest.txt

#Display the PID and the name of the script executor
echo -e "PID:"$$ "executed by" $USER "\n" >> ./TrueLayer/TLTest.txt

fi

#Display the contents of the generated file TLTest.txt
cat ./TrueLayer/TLTest.txt
