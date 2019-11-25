#!/bin/sh

CODE_RETOUR=0

for host in "$0"
do
   if ping -c1 -w "${host}" > /dev/null 2>&1
   then 
      echo "${host} OK"
   else
      echo "${host} inaccessible"
      CODE_RETOUR=1
   fi
done

exit ${CODE_RETOUR}

