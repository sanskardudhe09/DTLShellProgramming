#!/bin/bash
IFS=','
for F in DData.txt ; do
while read -r Get_http ; do
     read -r User_Agent
     read -r Pragma
     read -r Cache_Control
     read -r Accept
     read -r Accept_Encoding
     read -r Accept_Charset
     read -r Language
     read -r Host
     read -r Cookie
     read -r Connection
     echo "${Get#*=},${User_Agent#*=},${Pragma#*=},${Cache_Control#*=},${Accept#*=},${Accept_Encoding#*=},${Accept_Charset#*=},${Language#*=},${Host#*=},${Cookie#*=},${Connection#*=}" >> outputfile
     done < "$F"
done
