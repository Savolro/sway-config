#!/bin/sh
set -eux

# Install main dependencies
sudo pacman -S --needed sway polkit
sudo pacman -S --needed swaybg alacritty dunst waybar wofi

sudo pacman -S --needed git openssh git base-devel

# # Install yay
# git clone https://aur.archlinux.org/yay.git
# cd yay
# makepkg -si
# cd ..
# rm -rf yay

# Install extras from AUR
yay -S --needed swaylock-effects wlogout
