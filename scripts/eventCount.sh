#!bin/bash
for dir in ./individual/*
do
	for f in $dir/*.importation_status.txt
	do
		wc -l $f 
	done
done


#count each line in each importation_status.txt file -1