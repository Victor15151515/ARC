#!/bin/bash
clear

TAMANHO=$(du -s /var/log |cut - f1)

if [ $TAMANHO -gt 10000 ]
then
     echo"Alerta: o diretorio de logs esta muito grande"

fi
