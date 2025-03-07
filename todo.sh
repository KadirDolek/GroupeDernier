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
            echo "test"
            ;;
        "2")
            echo "test"
            ;;
        "3")
            echo "test"
            ;;
        "4")
            echo "Aurevoir"
            break
            ;;
        *)
            echo "cette entré n'est pas connu"
            ;;
    esac
done