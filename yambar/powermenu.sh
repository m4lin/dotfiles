#!/usr/bin/env zsh

op=$( echo -e " Lock\n Screenshot" | wofi -i --location=5 -H 70 -W 35 -x -80 -y -40 --dmenu | awk '{print tolower($2)}' )

case $op in 
        lock)
				swaylock -i /home/marco/bg.jpg
                ;;
        screenshot)
                grim -g "$(slurp)" - | swappy -f -
                ;;
esac
