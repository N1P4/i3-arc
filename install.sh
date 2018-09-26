#!/bin/sh

pacman -S i3 rofi compton lxappearance ttf-font-awesome-4 feh arc-gtk-theme papirus-icon-theme gnome git fish

chsh -s /usr/bin/fish

yay nerd-fonts-complete --noconfirm
yay imagemagick --noconfirm

cp ./.config/* ~/.config/
mkdir ~/.fonts/
cp ./.fonts/* ~/.fonts/
cp ./Pictures/* ~/Pictures/
cp .imwheelrc ~/
cp .wp_lock.sh ~/
cp .Xresources ~/
cp .gtkrc-2.0 ~/


git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~
