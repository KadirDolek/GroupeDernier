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
            echo "insert text here" txt
            read txt
            echo $txt >> todo.txt
            nl todo.txt
            ;;
        "2")
            read -p "Numéro de la tâche à supprimer : " num
            if [[ ! $num =~ ^[0-9]+$ ]]; then
            echo "Veuillez ecrire un numéro valide."
            fi
            continue
            sed -i "${num}d" "todo.txt"
            echo "Tâche supprimée !"
            nl todo.txt
            ;;
        "3")
            clear  
            cat tasks.txt
            ;;
        "4")
            clear
            echo "Aurevoir"
            break
            ;;
        "5")
            clear
            echo "test"
            ;;
        "6")
            clear
            echo "test"
            ;;
        *)
            clear
            echo "cette entré n'est pas connu"
            ;;
    esac
done
