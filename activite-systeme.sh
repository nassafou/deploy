#! /bin/sh

date +"== $(hostname) == %F %T  ====="
echo "------Charge systeme ----------"
uptime | sed 's/^/  /'

echo "------Charge memoire ----------"

 free | sed 's/^/  /'


echo "------Occupation disques ----------"

df | sed 's/^/  /'

echo "------Activite reseau ----------"

netstat -i  | sed 's/^/  /'
