#!/bin/bash

notify-send -t 3000 --icon="/home/user1/iconos/one-piece.ico" "Descargando Video" "$(xclip -o)" ;    
#Remember to run Dunst for the script to work correctly.
mpv "$(xclip -o)" 

