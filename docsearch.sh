#!/bin/bash

result="$(ls ~/Documents/pdfdocs/*.pdf  2> /dev/null | xargs -L 1 basename | rofi -dmenu -i -l 8 -p "Docs:" )"

if [ -n "$result" ]; then
     zathura ~/Documents/pdfdocs/$result
fi
