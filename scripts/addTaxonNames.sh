#!/bin/bash
for dir in /mnt/c/Users/alex/Desktop/denbiData/chromosomesplitbackup/*
do 
	#echo $dir
	filename=`basename $dir`	
	#echo $filename
	for file in $dir/1.fa
	do
		#echo $file
		#head -1 $file
		sed -i "1 s/^.*$/>$filename-1/" $file
	done

done