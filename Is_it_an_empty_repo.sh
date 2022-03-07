#!/bin/bash 
 
read -rp 'Entrez le nom du répertoire : ' repertoire 
 
if [ -d "$repertoire" ]; then 
    [[ $repertoire != */  ]] && repertoire="${repertoire:+$repertoire/}" 
    shopt -s nullglob #sinon repertoireVide/*, retournera repertoireVide/* 
    fichiers=( ${repertoire}* ) 
    ((${#fichiers[@]})) && { 
        for (( x=${#fichiers[@]}-1; x>=0; x-- )); do 
            echo "${fichiers[x]}" 
        done 
    } || echo "$repertoire est vide" 
else 
    echo "$repertoire n'est pas un répertoire" 
fi
