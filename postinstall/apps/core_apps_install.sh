#Apps that are required for the dotfiles to work.

sudo pacman -S git stow

# Installing yay
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
sudo pacman -S base-devel
makepkg -si
rm -rf yay-bin
