Live Demo
#!/bin/sh

a=0

while [ $a -lt 100 ]
do
	echo $[ ( $RANDOM % 100 )  + 1 ]  | tee -a file.txt
	a=`expr $a + 1`
done

git add .
git commit -m "Done"
git push -u origin master