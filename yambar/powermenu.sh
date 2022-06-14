#!/usr/bin/env zsh

op=$( echo -e " Lock" | wofi -i --dmenu | awk '{print tolower($2)}' )

case $op in 
        lock)
				swaylock -i /home/marco/bg2.jpg
                ;;
esac
