#!/bin/sh

../biblio.sh
if repondre_oui_ou_non "Sauvegarder avant de quitter ?"
then
    echo "Sauvegarde en cours.."
    sleep 2
    echo "Sauvegarde OK"
else
   echo "Pas de sauvegarde"
fi
