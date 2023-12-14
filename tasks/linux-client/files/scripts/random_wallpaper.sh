#!/usr/bin/env bash

WALLPAPER_DIR="/usr/share/backgrounds/pixel-wallpaper"
RANDOM_PICTURE=$(ls $WALLPAPER_DIR -1 | shuf -n 1)

gsettings set org.gnome.desktop.background picture-uri "file://$WALLPAPER_DIR/$RANDOM_PICTURE"