#!/bin/bash

if [ $USER == "root" ]
then
    echo"Acesso total permitido"

else
    echo" Voçe precisa de privilegios de root"
