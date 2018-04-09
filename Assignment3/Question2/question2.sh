#!/bin/bash
f1=$(cat file1 | wc -l)
f2=$(cat file2 | wc -l)
f3=$(cat file3 | wc -l)

if [ $f1 -ne $f2 ] || [$f3 -gt  $f1 ]
	then 
	echo "Either the number of inputs are not equal or the information provided is wrong "
fi

if [ $f1 -eq $f2 ] && [ $f3 -le $f1 ] && [ -f "$file1"] && [ -f "$file2" ] && [ -f "$file3" ]
then 
while IFS=',' read -r  roll name
do
  while IFS=',' read -r project roll1
  do  
    if [ $roll1 -eq $roll ]
    then
      while IFS=',' read -r project1 th pro
      do
         if [ $project1 -eq $project ]
         then
           let tm=th+pro
           echo " $roll,$name,$tm "
         fi
      done < "/file3"		#if doesnt work give actual path
    fi
  done < "/file2"
done < "/file1"
else
	echo "Either one of the file does not exist "
fi
