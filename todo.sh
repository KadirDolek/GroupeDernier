#!/bin/bash
echo "Bienvenue dans la to-do liste"
while true; do
    echo "1.Ajouter"
    echo "2.Supprimer"
    echo "3.Afficher"
    echo "4.Supprimer toute la liste"
    echo "5.Modifier"
    echo "6.Quitter"
    read option
    case $option in
        "1")
            clear
            echo "test"
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
            cat tasks.txt
            ;;
        "4")
            clear
            echo "test"
            ;;
        "5")
            clear
            echo "test"
            ;;
        "6")
            clear
            echo "Aurevoir"
            break
            ;;
        *)
            clear
            echo "cette entré n'est pas connu"
            ;;
    esac
done