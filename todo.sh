#!/bin/bash
echo "Bienvenue dans la to-do liste"
while true; do
    echo "1.Ajouter"
    echo "2.Supprimer"
    echo "3.Afficher"
    echo "4.Quitter"
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
            echo "Aurevoir"
            break
            ;;
        *)
            clear
            echo "cette entré n'est pas connu"
            ;;
    esac
done
