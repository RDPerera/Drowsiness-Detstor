#!/bin/sh

a=0

while [ $a -lt 10 ]
do
   echo $a >> file.txt
   if [ $a -eq 5 ]
   then
      break
   fi
   a=`expr $a + 1`
done
git config --global user.name "RDPerera"
git config --global user.password "dilan@1998"
git add .
git commit -m "Model Trained"
git push
