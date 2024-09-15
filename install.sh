#!/bin/bash

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
declare -A setting=(
    ["alacritty"]="$HOME/.config/alacritty"
    ["conky"]="$HOME/.config/conky"
    ["i3"]="$HOME/.config/i3"
    ["ncmpcpp"]="$HOME/.config/ncmpcpp"
    ["polybar"]="$HOME/.config/polybar"
    ["ranger"]="$HOME/.config/ranger"
    ["picom.conf"]="$HOME/.config/picom.conf"
    ["mpd.conf"]="$HOME/.config/mpd/mpd.conf"
    [".Xresources"]="$HOME/.Xresources"
    [".xbindkeysrc"]="$HOME/.xbindkeysrc"
    [".xinitrc"]="$HOME/.xinitrc"
    [".bash_profile"]="$HOME/.bash_profile"
    [".bashrc"]="$HOME/.bashrc"
)

for k in "${!setting[@]}"; do
    ln -s -T "$root_dir/$k" "${setting[$k]}"
done
