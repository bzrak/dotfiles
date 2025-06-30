#!/bin/sh

# Variables
DOT_DIR="$HOME/Git/dotfiles"
CONFIG_DIR="$HOME/.config"

## Color
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

if ! command -v stow >/dev/null 2>&1; then
    echo -e "${RED}[!] stow is NOT instaled. Install it then run the script again.${NC}"
    echo -e "${RED} sudo pacman -S stow"
    exit 1
fi

while true; do
    echo -e "Is this the correct path for the git/dotfiles? ${RED}${DOT_DIR}${NC}"
    read -p "(y/n) " yn
    case $yn in
    [Yy]*)
        break
        ;;
    [Nn]*)
        echo "[!] Not implemented :("
        exit
        ;;
    *) echo "Please answer yes or no." ;;
    esac
done

# Nvim
while true; do
    echo -e "Install ${GREEN}nvim${NC}?"
    read -p "(y/n) " yn
    case $yn in
    [Yy]*)
        echo Creating ${CONFIG_DIR}/nvim
        mkdir -p "${CONFIG_DIR}/nvim"
        echo Stow ${CONFIG_DIR}/nvim
        stow --target=${CONFIG_DIR}/nvim
        break
        ;;
    [Nn]*)
        echo "[!] Not implemented :("
        break
        ;;
    *) echo "Please answer yes or no." ;;
    esac
done
