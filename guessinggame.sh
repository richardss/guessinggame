#!/bin/bash

dir="$(ls -lhart|wc -l)"

function conditions {

if [ -z $val ];then
echo "valor not valid ,please insert again!"

fi
}

function statval {

if [  "$val" -gt "$dir" ];then
stat="high"

else
stat="low"

fi
}
for ((i=0;i=dir;i++))
do	
echo " how many elements are in current directory? "
read val
conditions
statval
for i in $val
do
if [ $i -eq $dir ];then
echo "congratulations!,you guess!"
echo "Do you want continue?"
echo "[Y]es [N]o"
read rep
if [ $rep == "N" ];then
exit 0
elif [ $rep == "Y" ];then
continue
fi
else
echo "sorry, it's wrong ,the number is too $stat please try again!"

fi
done
done
