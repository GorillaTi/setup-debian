#!/bin/bash
# Script de Intalacion y Configuracion de De Debian 10
# Copia de seguridad del archivo de configuracion source.list
cp -pfv /etc/apt/source.list /etc/apt/sources.list.orig;
# Cambio de repositorios en Debian non-free
cat <<EOF > /etc/apt/sources.list
# Repositorios Debien non-free
deb http://deb.debian.org/debian bullseye main contrib non-free
#deb-src http://deb.debian.org/debian bullseye main contrib non-free

deb http://deb.debian.org/debian-security/ bullseye-security main contrib non-free
#deb-src http://deb.debian.org/debian-security/ bullseye-security main contrib non-free

deb http://deb.debian.org/debian bullseye-updates main contrib non-free
#deb-src http://deb.debian.org/debian bullseye-updates main contrib non-free

# Rpositorios Backpot
deb http://deb.debian.org/debian bullseye-backports main contrib non-free
#deb-src http://deb.debian.org/debian bullseye-backports main contrib non-free

# Repositorio sid
# adiciones propuestas para una versión de Debian 11
deb http://deb.debian.org/debian bullseye-proposed-updates main contrib non-free
EOF;
# Actualizacion del S.O.
sudo apt update && sudo apt dist-upgrade -y;
# Instalando paquetes necesarios
sudo apt install -y vim git wget curl neofetch net-tools dnsutils nmap latte-dock barrier zsh fzf gdebi tmux;
# Instalan paquetes adicionales
sudo apt install -y remmina chromium telegram-desktop yakuake thunderbird;
# Instalar complemetos de la Terminal
cd Descargas;
# Instalando lsd
wget https://github.com/Peltoche/lsd/releases/download/0.20.1/lsd_0.20.1_amd64.deb;
sudo gdebi -y lsd_*;
# Instalando bat
wget https://github.com/sharkdp/bat/releases/download/v0.18.3/bat_0.18.3_amd64.deb
sudo gdebi -y bat_*;
cd ~;
# Instalar DBeaber
wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
sudo apt-get update && sudo apt-get install dbeaver-ce
# Instalar Firefox estable
cd Descargas;
wget wget http://mxrepo.com/mx/repo/pool/main/m/mx21-archive-keyring/mx21-archive-keyring_2021.2.19_all.deb;
sudo gdebi -y mx21-archive-keyring_2021.2.19_all.deb;
echo "deb http://mxrepo.com/mx/repo/ bullseye main non-free" | sudo tee /etc/apt/sources.list.d/mx.list;
sudo apt update;
sudo apt install -y firefox firefox-l10n-xpi-es-es;
cd ~;
# Instalar Virtmanager
sudo apt install qemu-kvm qemu virt-manager virt-viewer libvirt-clients;
sudo apt install intel-microcode;
sudo apt-get install ssh-askpass;
# Instalando WPS
cd Descargas;
wget https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/10702/wps-office_11.1.0.10702.XA_amd64.deb;
sudo gdebi wps-*;
# Instalando Winwhq
sudo dpkg --add-architecture i386;
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
echo " deb https://dl.winehq.org/wine-builds/debian/ bullseye main" | sudo tee /etc/apt/sources.list.d/wine.list;
sudo apt update && sudo apt install --install-recommends winehq-staging;
# Intalacion de Freedownload manager
cd Descargas
wget https://dn3.freedownloadmanager.org/6/latest/freedownloadmanager.deb
sudo gdebi freedownloadmanager.deb;
cd ~;
