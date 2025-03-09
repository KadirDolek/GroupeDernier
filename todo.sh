#!/bin/bash
        "2")
                nl todo.txt
            while true; do
                read -p "Numéro de la tâche à supprimer : " num
            if [[ ! $num =~ ^[0-9]+$ ]]; then
                echo "Veuillez entrer un numéro valide."
            else
                if [ $(wc -l < todo.txt) -lt $num ] || [ $num -le 0 ]; then
                echo "Numéro de tâche invalide."
            else
                sed -i "${num}d" todo.txt
                echo "Tâche supprimée !"
                nl todo.txt
            break
                fi
            fi
        done
        ;;