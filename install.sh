#!/bin/bash
# Script de Intalacion y Configuracion de De Debian 10
# Actualizacion del S.O.
sudo apt update && sudo apt upgrade && sudo apt dist-upgrade;
# Istalado paquetes necesarios
sudo apt install wget curl neofetch net-tools dnsutils nmap;
Clonando repositoprio
git clone https://github.com/GorillaTi/setup-debian.git;