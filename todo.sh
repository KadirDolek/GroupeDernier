#!/bin/bash
nl "$todo.txt"
read -p "Numéro de la tâche à supprimer : " num
sed -i "${num}d" "$todo.txt"
;;

echo "insert text here" txt
read txt
echo $txt >> todo.txt
