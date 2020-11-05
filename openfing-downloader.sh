#!/bin/bash
#Descargador de clases de OpenFING, versión 0.1
#(c) 2020 Santiago Freire <dev@santiagofreire.com>

#Ingreso de datos
read -p "Ingrese el código de la materia: " materia
read -p "Ingrese el número de la primera clase: " primera
read -p "Ingrese el número de la segunda clase: " segunda

#Chequeo
#Si el segundo número es mayor al primero - no funcionaría el for
if (( "$segunda" < "$primera" )); then
	echo "Ingrese el número de clases de menor a mayor"
	exit 1
fi

#Pregunta
read -p "Eliminar videos anteriores de la materia? [y/N] : " eliminar

printf '\n'

#Si se elige eliminar
if [[ $eliminar = y ]]; then
	rm $HOME/Downloads/Clases/$materia\_*.mp4
fi

#For entre el primer numero de clase y la segunda
for i in $(seq $primera $segunda)
    do
	    #Si el numero de clase es menor a 10, poner un 0 antes (ej: 01, 02,..) - así está en los servidores
	    if (( $i < 10 )); then 
		    i=$(echo 0$i)
	    fi
	wget http://openfing-video.fing.edu.uy/media/$materia/$materia\_$i.mp4 -P $HOME/Downloads/Clases
    done
