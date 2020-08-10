#!/bin/sh
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=720000'
a=0

while [ $a -lt 10 ]
do
   echo $a >> file.txt
   git add .
   git commit -m "Model Trained"
   git push
   if [ $a -eq 5 ]
   then
      break
   fi
   a=`expr $a + 1`
done


