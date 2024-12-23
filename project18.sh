#!/bin/bash 
usage(){
    echo " usage : dirname(abs)filename(n1)filename(n2)"
    exit 1 

}
if [ $# -ne 3 ]; then 
    usage 
fi 
case "$1" in 
    /*) usage 
        ;;
    *) 
        ;; 
esac 
if [ ! -d "$1" ] || [ ! -x "$1" ]; then 
     usage 
fi 
case "$2" in 
    */*) usage 
         ;; 
    *) 
        ;;
esac  
case "$3" in 
    */) usage 
         ;; 
    *) 
        ;;
esac 
# Lo script cerca ricorsivamente in D tutte le directory che contengono entrambi i file F1 ed F2, ne stampa il percorso completo, e mostra anche la somma della dimensione in byte di F1 ed F2. 
list=$(find "$1" -type d -executable 2>/dev/null)
for item in $list; do
    [ ! -f "$item"/"$2" ] || [ ! -r "$item"/"$2" ] && continue
    [ ! -f "$item"/"$3" ] || [ ! -r "$item"/"$3" ] && continue
    size_1=$(wc -c < "$item"/"$2")
    size_2=$(wc -c < "$item"/"$3")
    echo ["$item": size=$(( size_1 + size_2))] 
done
exit 0 
