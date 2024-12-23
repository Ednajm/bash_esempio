#!/bin/bash 
usage(){
    echo " usage : $0dirnamesecondo" 
    exit 1 

} 
count(){
    tempF = 0
    tempD = 0 
    for fname in "$1"/*;do
      if [ -f "&fname" ]; then
        tempF = $((tempF + 1))
    elif [ -d "&fname"]; then
        tempD = $((tempD + 1))
    fi 
done 

        
}
if [$# -ne 2]; then
   echo "$USAGE"
   exit 1 
fi 
if [ ! -d "$1"] || [ ! -x "$1"]; then
   echo "$USAGE"
   exit 1
fi 
case "$2" in 
  ''|*[!0_9]*)
    echo "$USAGE"
    exit 1
    ;;
  *) 
    ;;
  esac 

if [ $? -gt 1]; then 
    echo "$USAGE"
    exit 1
fi 
count "$1" 
LastF = $tempF
LastD = $tempD
echo "[$(date +%H:%M)] $1 monitored..."
while true; do
    count "$1"
    if [ $LastF -ne $tmpF]||[$LastD -ne $tmpD ]; then
         echo "[$(date +%H:%M)] $1 changed"
         LastF=$tmpF
         LastD=$tmpD
    fi 
    sleep "$2" 
done 
exit 0

