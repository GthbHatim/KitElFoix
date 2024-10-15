#!/bin/bash
clear
    axel -n 100 http://fs23.megadb.xyz:8080/d/4tnkfsyoy5vxygoid3w3decngkhv3my2si4alk4pr74lwyhapfeswagzu4sdg3pghvxb2ua3/Geometry-Dash-SteamRIP.com.rar
    unrar -x Geometry+Dash.rar
    rm -f ./Geometry+Dash.rar
    cd "Geometry Dash"
    wine GeometryDash.exe