#!/bin/bash 
 
function pause { 
    echo "Appuyez sur ENTER pour continuer" 
    read
} 
 
function saisirUser { 
    echo "Saisir l'utilisateur" 
    read -r util 
} 
 
function verifyUser { 
    if grep "^$util:" /etc/passwd > /dev/null; then 
        echo "L'utilisateur existe" 
    else 
        echo "L'utilisateur n'existe pas" 
    fi 
    pause    
} 
 
rep=1 
while [ "$rep" -eq 1 ]; do 
    clear 
    printf "menu :\n\n" 
    echo "1. Vérifier l'existence d'un utilisateur" 
    echo "2. Connaître l'UID d'un utilisateur" 
    echo -e "3. Quitter\n" 
    read -r choix 
    case "$choix" in 
        1) 
            saisirUser 
            verifyUser ;; 
 
        2)     
            saisirUser 
            id $util 
            pause ;; 
 
        q) 
            echo "Au revoir" 
            pause 
            rep=0 ;; 
        *) 
            echo "Erreur de saisie" 
            pause ;; 
    esac 
done
