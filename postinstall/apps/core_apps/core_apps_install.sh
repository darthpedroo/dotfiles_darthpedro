#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"
cd "$SCRIPT_DIR"

INFILE=core_apps_list.txt

# Read the input file line by line
while read -r LINE
do
   sudo pacman -S "$LINE" --noconfirm
done < "$INFILE"

git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
sudo pacman -S base-devel
makepkg -si
rm -rf yay-bin
