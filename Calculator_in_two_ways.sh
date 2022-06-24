#!/bin/bash 
 del that

saisir () { 
    printf "Saisir le premier nombre, puis le signe de l'opération puis le deuxième nombre :\n\n" 
    read -r nb1 
    read -r s 
    read -r nb2     
} 
 
calcul () { 
    case "$s" in 
        "+") let result=$nb1+$nb2 ;; 
        "-") let result=$nb1-$nb2 ;; 
        "*") let result=$nb1*$nb2 ;; 
        "/") let result=$nb1/$nb2 ;; 
        *) 
            let result=0 
            echo -e "Erreur de saisie !\nLe résultat est faux.";; 
    esac 
} 
 
calcul2 () { 
    let result=$nb1$s$nb2 
} 
  
if [ "$#" -eq 3 ]; then 
    nb1=$1 ; s=$2 ; nb2=$3 
else 
    saisir 
fi 
calcul 
echo "Le résultat est $result" 
calcul2 
echo "Calculé d'une autre façon : $result"
