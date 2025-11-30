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

echo "Deleting yay-bin directory..."
cd "$SCRIPT_DIR"  # Ensure we're back in the script directory
if [ -d "yay-bin" ]; then
    sudo rm -rf yay-bin
else
    echo "yay-bin directory not found!"
fi
