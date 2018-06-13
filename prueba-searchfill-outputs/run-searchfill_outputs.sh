#!/bin/bash
a=4.29       # Lattice parameter of gold (Au)
Lx=42.9 
Ly=42.9
Lz=21.45
VACOVP=0.16  # This paremeter must be set for each case. .76 is good for FCC
PBC="true"
Struc="BCC"

p=0
for file in ~/practica1/Vacancies/prueba/*
do
	let p=p+1
	#echo "$p"
	#less $file >> prueba$p.txt
	../../saf/searchfill $file $VACOVP -L $Lx $Ly $Lz -a $a --struct $Struc --pbc $PBC #| tail -n 1 >>Output_vacancies_file.txt
done 

#date
#echo ""
#echo "############################################################"
#../searchfill $1 $VACOVP -L $Lx $Ly $Lz -a $a --struct $Struc --pbc $PBC
#echo "############################################################"
#echo ""
#date
