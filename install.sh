#!/bin/sh
# Keep in mind this script is very primitive and has no checks whatsoever. It will mostly not
# break your system but in case of failure (e. g. some directory exists) will leave everything
# it was able to do already.
set -eux

# Install main dependencies
sudo pacman -S --needed sway polkit
sudo pacman -S --needed swaybg alacritty waybar wofi
sudo pacman -S --needed git openssh git base-devel
sudo pacman -S --needed python-pip


# Install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

# Install autotiling
pip install i3ipc
git clone https://github.com/nwg-piotr/autotiling
mkdir -p ~/bin
mv autotiling/autotiling/main.py ~/bin/autotiling
chmod +x ~/bin/autotiling
rm -rf autotiling

# Install extras from AUR
yay -S --needed swaylock-effects wlogout swaync

# Install additional used tools
sudo pacman -S --needed pavucontrol pulseaudio pulseaudio-alsa brightnessctl playerctl slurp grim wl-clipboard

# Install necessary fonts
mkdir -p ~/.local/share/fonts
mkdir tmp
cd tmp
curl https://fonts.google.com/download?family=Space%20Grotesk -o SpaceGortesk.zip
unzip SpaceGortesk.zip
cp static/* ~/.local/share/fonts
cd ..
rm -rf tmp
fc-cache
sudo pacman -S --needed unzip ttf-font-awesome
sudo pacman -S --needed unzip noto-fonts
yay -S --needed ttf-adobe-source-code-pro-fonts 

# TODO: check SSH/HTTPS
mkdir -p ~/.config

# Install the config itself
git clone https://github.com/Savolro/sway-config.git ~/.config/sway
ln -s ~/.config/sway/alacritty ~/.config/alacritty
ln -s ~/.config/sway/swaylock ~/.config/swaylock
ln -s ~/.config/sway/waybar ~/.config/waybar
ln -s ~/.config/sway/wlogout ~/.config/wlogout
ln -s ~/.config/sway/wofi ~/.config/wofi
ln -s ~/.config/sway/swaync ~/.config/swaync

# Set GTK theme and fond for GTK apps
yay -S --needed layan-gtk-theme-git
gsettings set org.gnome.desktop.interface gtk-theme 'Layan-Dark'
gsettings set org.gnome.desktop.interface font-name 'Space Grotesk 11'
