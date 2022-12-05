#!/bin/bash

loc="$(pwd)"
Crystals=$loc/dat.*

for file in $Crystals
do 
	#Prepare crystal folders with job, in, dat, and pot files	
	cd $loc
	NAME="${file##*.}"
	DIR=("${NAME}")
	mkdir $DIR
	sed "s/comp/${DIR}comp/g" $loc/job.sh > ./$DIR/job.sh
	sed -e "s/FILENAME/${file##*/}/g;s/DIR/${DIR}/g" $loc/in.comp > ./$DIR/in.${DIR}comp
	cp $file ./$DIR
done
