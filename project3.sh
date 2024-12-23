#!/bin/bash
usage(){
    echo "usage: $0 (readable directory)  "
    exit1

}
if[$# -ne 1]; then
    usage
fi
if[ ! -d "$1"]||[! -r "$1"];then
    usage 
fi 
exit 0
