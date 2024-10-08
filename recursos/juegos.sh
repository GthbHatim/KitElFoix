#!/bin/bash
#Menu de opciones de que juego instalar.

clear
opcion=0

while [ $opcion -ne 5 ] ; do
        echo "1. Geometry Dash"
        echo "2. Minecraft"
        echo "3. The Binding of Isaac"
        echo "4. *MAS POR VENIR*"
        echo "5. Salir"
        read -p "Selecciona una opcion: " opcion

        case "$opcion" in
        1) sudo bash ./recursos/recjuegos/geometry.sh
        ;;
        2) sudo bash ./recursos/recjuegos/minecraft.sh
        ;;
        3) sudo bash ./recursos/recjuegos/tboa.sh
        ;;
        4) echo "Pa que le das si es literal un mensaje?"
            opcion=0 
        ;;
        5) echo "Cerrando."
           exit 1     
        ;;
        *) echo "Invalido, comando inexistente."
                opcion=0 ;;
        esac
        sleep 5s
done