#!/bin/bash

echo "ajouter votre tache" txt
read txt
echo $txt >> todo.txt
nl todo.txt
