#!/bin/bash
usage(){
      echo "usage : $0 <filename>"
      exit 1

}
if [ $# -ne 1 ]; then
      usage 
fi 
case "$1" in 
      /*) echo "absolute filename" ;;
      */*) echo "relative filename" ;;
      *) echo "simple, relative filename" ;;
esac 
exit 0 

