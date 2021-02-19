# Sway config
This is a repository for my sway config

## TODO
[] at least some automatic terminal color config. Currently you should take all colors from the config file and add to your terminal config accordingly
[] Replace `rofi` with `wofi`

## Prerequisites
* `sway`
* `i3blocks`
* `swaylock`
* `rofi`
* `brightnessctl`
* `jq`
* `wl-clipboard`
* `grim`
* `slurp`
* JetBrains Mono font
* Any font for special glyph symbols (see `i3blocks-modules`)

## Installation
* Place the content of this repository into `~/.config/sway`
* Create a symbolic link from default rofi config dir to this one:
``` bash
ln -s ~/.config/sway/rofi.rasi ~/.config/rofi/config.rasi
```

## Additional color settings for terminal
Example taken from `gnome-terminal`

### Default color
Text: `color_7`
Background: `color_7`

### Bold color
Text: `color_4`

### Cursor color
Text: `color_2`
Background: `color_8`

### Highlight color
Text: `color_1`
Background: `color_8`
