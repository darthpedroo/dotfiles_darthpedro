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

# Install docker

sudo pacman -S docker
sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo gpasswd -a porky docker
sudo pacman -S docker-compose
# after this, a reboot is required.

