#!/bin/bash
echo "insert text here" txt
read txt
echo $txt >> todo.txt
nl todo.txt

read -p "Numéro de la tâche à supprimer : " num
if [[ ! $task_num =~ ^[0-9]+$ ]]; then
echo "Veuillez ecrire un numéro valide."
fi
sed -i "${num}d" "todo.txt"
echo "Tâche supprimée !"