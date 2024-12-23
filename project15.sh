#!/bin/bash 
usage(){
    echo " usage : dirname(abs)N"
    exit 1 

}
if [$# -ne 2];then 
    usage 
fi 
case "$1" in 
    /*) usage 
        ;;
    *) 
        ;;
esac 
if [! -d "$1"]||[! -x "$1"];then 
    usage 
fi 
case "$1" in 
   ''|![*0-9]*)usage 
                ;;
    *) 
                ;;
esac  
//Lo script cerca ricorsivamente in D tutte le directory che contengono almeno un file (solo file non directory) con dimensione in byte maggiore di N. Ordinare (in modo decrescente) le directory trovate in base numero di file (che contengono) che rispettano il criterio specificato sopra. 
list=$(find "$1" -type d -executable 2>/dev/null)
for item in $list; do
    nfiles=$(find "$item" -maxdepth 1 -type f -size +$2c | wc -l 2>/dev/null)
    if [ "$nfiles" -ge 1]; then 
        echo "$item" ["$nfiles" files]
    fi 
done 


exit 0

