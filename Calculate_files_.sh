#!/bin/bash 
 
j=0 
k=0 
l=0 
 
if [ "$#" -eq 0 ]; then 
    echo "Saisir le répertoire" 
    read -r rep 
else 
    rep=$1 
fi 
 
cd $rep 
 
for i in *; do 
    if [ -d "$i" ]; then 
        echo "$i" 
        let j=$j+1 
    fi 
    if [ -f "$i" ]; then 
        echo $i 
        let k=$k+1 
    fi 
    if [ -x "$i" ]; then 
        echo $i 
        let l=$l+1 
    fi 
done 
echo "Il y a $j répertoires, $k fichiers et $l exécutables dans $rep"
