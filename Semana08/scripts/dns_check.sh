#!/bin/bash
clear

if [ -f "/etc/bind/named.conf.local" ]
then

 echo"Servidor DNS instalado!"
else

echo"Nao existe uma istalaçaõ de DNS"
fi
