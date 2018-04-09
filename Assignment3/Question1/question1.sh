#!/bin/bash
max=$(head -n 1 input)
min=$(head -n 1 input)

if[ -e "test" ] #exists and has size greater than zero
	then
for i in  $(cat "test")
do
    
    if [ ($i) -gt  ($max) ]
    then  
      max=($i)
    fi   

    if [ ($i) -lt ($min) ]
    then
      min=($i)
    fi
done

for i in $(cat "input")
do
 echo "scale=4; (($i)-($min))/(($max)-($min))"| bc -l #normalise 

else
	echo "The file does not exist or is empty"
fi 
done
