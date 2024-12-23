#!/bin/bash
usage(){
    echo "usage : $0 filename"
    exit1

}
if[$# -ne 1]; then
    usage
fi 
echo "#!/bin/bash"> "$1"
echo "echo"Hello world!">> "$1"
echo "exit 0" >> "$1"
chmod 755 "$1"
