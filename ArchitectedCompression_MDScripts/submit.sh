#!/bin/bash

loc="$(pwd)"
Crystals=$loc/dat.*

for file in $Crystals; do
	#Submit each job	
	cd $loc
	DIR="${file#*.}"
	DIR="${DIR%_n*}"
	cd ${DIR}
	sbatch job.sh;
	sleep 5;
done

