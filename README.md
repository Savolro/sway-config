# Sway config
This is a repository for my sway config

## TODO
- [ ] at least some automatic terminal color config. Currently you should take all colors from the config file and add to your terminal config accordingly
- [ ] replace all the fonts with xujcons

## Prerequisites
* `sway`
* `i3blocks`
* `swaylock`
* `wofi`
* `mako`
* `brightnessctl`
* `jq`
* `grim`
* `slurp`
* Any font for special glyph symbols (see `i3blocks-modules`)
* Xujcons font

## Installation
Execute these commands to fully install the config

``` bash
git clone https://github.com/Savolro/sway-config.git ~/.config/sway
ln -s ~/.config/sway/swaylock ~/.config/swaylock
ln -s ~/.config/sway/wofi ~/.config/wofi
ln -s ~/.config/sway/alacritty ~/.config/alacritty
ln -s ~/.config/sway/swaynag ~/.config/swaynag
ln -s ~/.config/sway/mako ~/.config/mako
```
