#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"
cd "$SCRIPT_DIR"

INFILE=dev_apps_list_pacman.txt

while read -r LINE
do
   sudo pacman -S "$LINE" --noconfirm
done < "$INFILE"

INFILE=dev_apps_list_aur.txt

while read -r LINE
do
   yay -S "$LINE" --noconfirm
done < "$INFILE"

