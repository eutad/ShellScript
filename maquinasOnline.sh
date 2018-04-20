#!/bin/bash
#Script para verificar maquinas online
if [ "$1" == "" ]
then 
echo " Exemplo de uso $0 192.168.0"
else 
for i in $(seq 1 254);do 
ping -c1 $1.$i | grep "64 bytes" | cut -d " " -f 4 | sed "s/.$//" 
done
fi
