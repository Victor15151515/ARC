#!/bin/bash

#Listagem das interfaces de rede e endereço IP
# gravadas em um arquivo chamdo net_interfaces


# Define o nome do arquivo de saída
ARQUIVO="net_interfaces"

#  interfaces e IPs IPv4, formatando a saída e salvando no arquivo
ip -o -4 addr show | awk '{print "Interface: "$2 " | IP: "$4}' > "$ARQUIVO"

# Exibe uma mensagem de confirmação
echo "As interfaces e IPs foram salvos em: $ARQUIVO"
