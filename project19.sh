#!/bin/bash 
usage(){
    echo " usage : dirname(abs)filenamen1filenamen2"
    exit 1 

}
if [ $# -ne 3 ];then
    usage 
fi 
case "$1" in 
    /*) usage 
        ;; 
    *) 
        ;; 
esac 
if [! -d "$1" ]||[! -x "$1" ];then
    usage
fi 
case "$2" in
    */*) usage 
         ;; 
    *) 
        ;; 
esac 
case "$2" in
    */*) usage 
         ;; 
    *) 
        ;; 
esac 
case "$2" in
    */*) usage 
         ;; 
    *) 
        ;; 
esac 
 case "$2" in
    */*) usage 
         ;; 
    *) 
        ;; 
esac 
 case "$2" in
    */*) usage 
         ;; 
    *) 
        ;; 
esac 
 case "$2" in
    */*) usage 
         ;; 
    *) 
        ;; 
esac 
case "$3" in
    */*) usage 
         ;; 
    *) 
        ;; 
esac
count_f1=$(find "$1" -type f -readable -name "$2" 2>/dev/null | wc -l)
count_f2=$(find "$1" -type f -readable -name "$3" 2>/dev/null | wc -l)

if [ "$count_f1" -gt 0 ] && [ "$count_f2" -gt 0 ]; then
  echo "Test passed:" "$1" 
  echo "$2": "$count_f1"
  echo "$3": "$count_f2"
fi

exit 0