#!/bin/bash
#Script basico para criar usuario
if [ "$1" == "" ]
then
echo "Modo de uso $0 nome_usuario"
else
useradd -m -d /home/$1 -s /bin/bash $1
passwd $1 
fi

