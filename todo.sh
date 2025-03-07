#!/bin/bash
echo "veuillez indiquer le numéro de la tache a supprimer"
read numero
echo "voulez vous vraiment supprimer $numero"
rm -rf $numero