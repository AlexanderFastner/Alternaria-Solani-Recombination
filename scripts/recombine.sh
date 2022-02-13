#!/bin/bash
for dir in /mnt/c/Users/alex/Desktop/denbiData/chromosomesplit/*
do 
	#echo $dir
	ls $dir/*10.fa | xargs cat >> /mnt/c/Users/alex/Desktop/denbiData/bychromosome/chromosome10.fasta
done;
