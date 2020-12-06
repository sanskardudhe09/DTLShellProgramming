
#!/bin/sh
i='y'
while [ $i = 'y' ]
do
clear
echo "STRING MANIPULATION PROGRAM"
echo "1. COMPARE STRINGS"
echo "2. JOINT TWO STRINGS"
echo "3. LENGTH OF STRING"
echo "4. OCCURANCE OF CHARACTER"
echo "5. OCCURANCE OF WORD"
echo "6. REVERSE STRING"
echo "ENTER CHOICE: "
read ch
echo

case $ch in
1)
   echo "Enter String1:\c"
   read str1
   echo "Enter String2:\c"
   read str2
   
   if [ "$str1" = "$str2" ]; then
  
       echo "String is equal"
   else
       echo "Strings are not equal"
   fi
   ;;
2)
  echo "Enter String1:\c"
  read str1
  echo "Enter String2:\c"
  read str2
  str3="$str1$str2"
  echo "Join String: \c"` echo $str3`
  ;;
3)
  len=0
  echo "Enter String1: \c"
  read str1
   len=$(echo "$str1" | wc -c)
   len=`expr $len - 1`
  echo "Length: " $len
  ;;
4)
  echo "Enter String:\c"
  read str

  echo "Enter Character to find:\c"
  read char
  echo "Character '$char' occures "` echo $str | grep -o $char | wc -l` "TIME/S"
  ;;
 
5)
  echo "Enter String1:\c"
  read str
  echo "Enter Word to find"
  read word
  echo "Word '$word' occures "` echo $str | grep -o $word | wc -l` "TIME/S"
  ;;
6)  
  echo "Enter String:"
  read str
  echo "Reverse string is:"` echo $str | rev`
  ;;
esac
echo "Do you want to continue ?"
read i
if [ $i != "y" ]
then
     exit
fi
done


