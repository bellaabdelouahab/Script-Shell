echo "Entrez votre note :" 
read -r note 
 
if [ "$note" -ge 16 ]; then 
    echo "très bien" 
elif [ "$note" -ge 14 ]; then 
    echo "bien" 
elif [ "$note" -ge 12 ]; then 
    echo "assez bien" 
elif [ "$note" -ge 10 ]; then 
    echo "moyen" 
else 
    echo "insuffisant" 
fi
