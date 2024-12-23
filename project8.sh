#!/bin/sh
for fname in *;do 
    if grp " #!/bin/sh" "fname" 1>/dev/null 2>$1 ;then
            echo "fname match!"
    fi 

done 


exit 0

