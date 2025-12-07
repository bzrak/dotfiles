#!/bin/bash

# if ! command -v keyb >/dev/null 2>&1; then
#   notify-send "Program not found" "Make sure you have installed keyb"
#   exit 1
# else
dir="$HOME/.config/rofi/launchers/type-2"
style='style-1'

CONFIG=$(
  fd --base-directory "$HOME/.config/keyb/bindings" --type f . | sed 's/\.yml$//' | rofi -dmenu -theme ${dir}/${style}.rasi
)

if [ -z "$CONFIG" ]; then
  exit
fi

# hyprctl dispatch exec "[float;size 45% 80%;center 1] ghostty -e $XDG_DATA_HOME/go/bin/keyb -k '$HOME/.config/keyb/bindings/$CONFIG.yml'"
alacritty -e "$XDG_DATA_HOME/go/bin/keyb" -k "$HOME/.config/keyb/bindings/$CONFIG.yml"

# fi
