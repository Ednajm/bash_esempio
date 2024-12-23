usage(){
    echo " usage : $0 dirname(abs)nome di file"
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
if [ ! -d "$1"]||[ ! -x "$1"];then 
    usage 
fi 
if [ -f "$2"];then 
    usage 
fi 
//Lo script cerca ricorsivamente in D tutte le directory che contengono entrambi i file F1 ed F2, ne stampa il percorso completo, e mostra anche la somma della dimensione in byte di F1 ed F2
list=$(find "$1" -type d -executable 2>/dev/null)
for item in $list;do
    nfiles=$(find "$item" -maxdepth 1 -type f -name "$2" | wc -l 2>/dev/null)
    if [ "$nfiles" -eq 1];then
        echo "$item" ["$nfiles" files]
    fi 
done 
exit 0 
    