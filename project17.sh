#!/bin/bash
usage(){
    echo "usage : dirname(abs)filename"
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
case "$2" in 
    */*) usage
        ;;
    *) 
        ;; 
esac 
list = $(find "$1" -type f -name "$2" 2>/dev/null)
    i = 1 
    for item in $list; do 
        ln -s "$item" "/tmp/link_$i"
        i = $((i+1))
    done 
exit 0

