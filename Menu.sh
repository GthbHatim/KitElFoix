#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   	echo "Error 1" 
   	exit 1
else
PS3="Elige tu opción: "
opciones=("Los esenciales" "Juegos" "Programas" "Otros" "Salir")
select opt in "${opciones[@]}"
do
    case $opt in 

        "Los esenciales") echo "Vamos a instalar las cosas basicas! $CONT " 
                bash ./recursos/esenc.sh; break
        ;;

        "Juegos") echo "Que juego quieres instalar? $CONT " 
                bash ./recursos/menujuegos.sh; break
        ;;

        "Programas") echo "Que programa quieres? $CONT "
                bash ./recursos/menuprogramas.sh; break
        ;;

        "Otros") echo "Que quieres hacer? $CONT"
                bash ./recursos/menuotros.sh; break
        ;;
        "Salir") break 2
        ;;
        *) echo "Opcion no válida."
    esac
done