#!/bin/bash

echo -e "\nFile: $1 \n"

echo -e "Ingrese duración \nEj: 5 para que dure 5 seg"
read parametro1

while [ -z $parametro1 ]; do
	echo "ERROR. Ingrese un valor"
	read parametro1
	echo $parametro1
done
 

echo -e "Comienzo del archivo \nEj: 00:00:03 o 3 para empezar del segundo 3"
read parametro2

echo "Nombre del archivo (sin la extensión)"
read nombre

rutaArchivo="$(pwd)/$1"
echo $p4

echo "Desea bajar la resolución al archivo? [s/n]"
read respuesta

while [ $respuesta != 's' ] && [ $respuesta != 'n' ]; do
	echo -e "[!] ERROR \nDesea bajar la resulición al archivo? [s/n]"
	read respuesta
done

echo -e "procesando . . . \n"

if [ $respuesta == 's' ]
then
ffmpeg -t $parametro1 -ss $parametro2 -i $rutaArchivo -vf scale=800:-1:flags=lanczos $nombre.gif > /dev/null 2>&1
else
ffmpeg -t $parametro1 -ss $parametro2 -i $rutaArchivo $nombre.gif > /dev/null 2>&1
fi

# SI EL ARCHIVO TIENE ESPACIOS EN EL NOMBRE DA ERROR.
