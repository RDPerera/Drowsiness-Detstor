Live Demo
#!/bin/sh
b=0

while [ $b -lt 10 ]
do
	a=0

	while [ $a -lt 10 ]
	do
		echo $[ ( $RANDOM % 100 )  + 1 ]  | tee -a file.txt
		a=`expr $a + 1`
	done
	
	git add .
	git commit -m "Done"
	git push -u origin master
	b=`expr $b + 1`
done