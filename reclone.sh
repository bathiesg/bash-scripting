#!/bin/bash
<<comentario
Este script boora el repositorio actual y lo volvera a clonar
comentario

#guardamos la url de nuestro repositorio
url=$(git remote -v |head -n 1|tr '\t' ' '|cut -d ' ' -f2)
#salimos del directorio dnd se encuentra el .git i nos situamos en el directorio dnd queremos tener nuestro proyecto
cd ..
# guardamos el nombre del repositorio en una variable
repo=$(echo $url | cut -d '/' -f2|cut -d'.' -f1)
# borramos el repositorio erroneo
rm -fr $repo
# clonamos de nuevo nuestro repositorio
git clone $url
# accedemos al repositorio
cd $repo


