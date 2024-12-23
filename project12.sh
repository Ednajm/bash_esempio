#!/bin/bash
usage(){
    echo " usage : $0 dirname(abs) str N1 N2"
    exit 1
}

if [$# -ne 4];then
    usage
fi
case "$1" in 
    /*);;
    *) usage
       ;;
esac 

if [ ! -d "$1"]|| [ ! -x "$1"];then 
    usage 
fi

if [ -f "$2"];then
    usage
fi
case "$3" in 
    ''|*[!0-9]*) usage 
       ;;
    *) 
       ;; 
esac 

case "$4" in  
    ''|*[!0-9]*) usage
        ;;
    *) 
        ;;
esac 

list=$(find "$1" -type f -name "$2" -readable 2>/dev/null)
for item in $list; do
  lines=$(wc -l < "$item")
  if [ "$lines" -ge "$3" ] && [ "$lines" -le "$4" ]; then
    echo "$item" ["$lines" lines]
  fi  
done

exit 0



