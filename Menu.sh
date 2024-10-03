#!/bin/bash
#Menu de opciones inicial

clear

opcion=0

while [$opcion -ne 5]; do
        echo "1. Esenciales"
        echo "2. Juegos"
        echo "3. Programas"
        echo "4. Otros"
        echo "5. Salir"
        read opcion

        case $opcion
        1) sudo bash ./recursos/esenc.sh ;;
        2) sudo bash ./recursos/juegos.sh ;;
        3) sudo bash ./recursos/programas.sh ;;
        4) sudo bash ./recursos/otros.sh ;;
        5) echo "Cerrando."
        *) echo "Invalido, comando inexistente."
                opcion=0
                ;;
        esac
        sleep 5s
done
