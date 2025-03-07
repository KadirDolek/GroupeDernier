#!/bin/bash

echo "ajouter votre tache" txt
read txt

i=0
echo $i
i=$((i+1))
echo $i $txt >> todo.txt
