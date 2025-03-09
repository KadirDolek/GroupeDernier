#!/bin/bash
clear
echo "Bienvenue dans la to-do liste"
while true; do
    echo "1.Ajouter"
    echo "2.Supprimer une tâche"
    echo "3.Afficher"
    echo "4.Supprimer toute la liste"
    echo "5.Modifier"
    echo "6.Quitter"
    read option
    case $option in
        "1")
            clear
            echo "Ajouter votre tache"
            read txt
            echo $txt >> todo.txt
            nl todo.txt
            ;;
        "2")
            clear
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
        "3")
            clear
            cat todo.txt
            ;;
        "4")
            clear
            read -p "Etes vous sur de supprimer toutes les tâches (y/n): " ouiNon
            if [ $ouiNon == "y" -o $ouiNon == "Y" ]; then
                rm todo.txt
                touch todo.txt
                echo "Les tâches ont bien été supprimées"
            else
                echo "Les tâches n'ont pas été supprimées"
            fi
            ;;
        "5")
            clear
            nl todo.txt
            while true; do
                read -p "Numéro de la tâche à modifier : " num
                if [[ ! $num =~ ^[0-9]+$ ]]; then
                    echo "Veuillez entrer un numéro valide."
                else
                    if [ $(wc -l < todo.txt) -lt $num ] || [ $num -le 0 ]; then
                        echo "Numéro de tâche invalide."
                    else
                        # Affiche tâche à modifier
                        task=$(sed -n "${num}p" todo.txt)
                        echo "Tâche actuelle : $task"
                        read -p "Entrez votre modification : " new_task
                        # Modifie tâche fichier
                        sed -i "${num}s/.*/$new_task/" todo.txt
                        echo "Tâche modifiée !"
                        nl todo.txt
                        break
                    fi
                fi
            done
            ;;
        "6")
            clear
            echo "Au revoir"
            break
            ;;
        *)
            clear
            echo "Cette entrée n'est pas connue"
            ;;
    esac
done