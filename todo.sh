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
            echo "test"
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
