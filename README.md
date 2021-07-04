# setup-debian
## Instalacion de Programas y configuracion de debian despues de ser instalado.
* Creamos el archivo dwnld.sh
````bash
cat <<EOF > dnwld.sh
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
EOF
````
* Cambiamos los permisos de Ejecucion
````bash
chmod +x dwnld.sh
````
* Ejecutamos
````bash
./dwnld.sh
````
