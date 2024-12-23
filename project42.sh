#!/bin/bash
usage(){
    echo "usage: $0 [-h] -f filename d1 .. dn" 1>$2
    exit 1 

}
while getopts "f:h" o;do
    case "$o" in 
        f) F = $OPTARG
           case "$F" in  
                 */*) usage 
                      ;;
                *)  
                     ;;
            esac 
        h) H = $OPTARG 
            case "$H" in 
                 
