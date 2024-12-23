#!/bin/bash
usage(){
    echo "usage: $0 [-h] -d dirname -m EQ|NE" 1>&2
    exit 1
}
while getopts "d:m:h" o;do 
    case "$o" in
        d) D="$optarg" 
           case "$D" in 
                /*) [ ! -d "$D" ] || [ ! -x "$D" ] && usage 
                       ;;
                *)  
                       ;; 
            esac 
             ;; 
        m) M="$optarg" 
            case "$M" in 
               EQ|NE) ;;
               *)     usage 
                      ;; 
            esac
            ;;
        h)  usage 
            ;; 
        *)  ;;
    esac 
done 
shift =$((OPTIND -1))
[ -z "$D"] && usage 
[ -z "$M"] && usage


list = $(find "$D" -type d 2>/dev/null)
for item in $list:
        ndirs = $(find "$item" -mindepth 1 -maxdepth 1 -type d 2>/dev/null | wc -l)
        ndirs = $(find "$item" -mindepth 1 -maxdepth 1 -type f 2>/dev/null | wc -l)
        [ "$M" == "EQ" ] && [ "$ndirs" -eq "$nfiles" ] && echo "$item" ["$ndirs" dirs, "$nfiles" files]
        [ "$M" == "NE" ] && [ "$ndirs" -ne "$nfiles" ] && echo "$item" ["$ndirs" dirs, "$nfiles" files]
done 
exit 0 



       
   



                        


