 #!/bin/bash
 usage(){
    echo " usage : $0 dirnam(abs)"
    exit 1 
 }
if [ $# -ne 1 ];then
    echo "$USAGE"
fi 
if [ ! -d "$1" ] || [ ! -x "$1" ];then
    echo "$USAGE"
fi
F = 0
D = 0 
for fname in "$1"/*;do
    if [ -f "$fname" ];then
        F = $((F+1))
    elif [ -d "$fname" ];then
        D = $((D+1))
    fi
done 
echo "Files: $F" 


