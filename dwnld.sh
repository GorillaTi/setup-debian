#!/bin/bash
# Script de Descarga de Archivos de instalacion y configuracion
echo "Descargando paquete de Instalacion";
cd "/home/$USER/Descargas" || return;
if which git;
then
    git clone https://github.com/GorillaTi/setup-debian.git;
else
    sudo apt install git;
    git clone https://github.com/GorillaTi/setup-debian.git;
fi