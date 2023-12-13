#!/bin/bash

# Set the path to the directory containing wallpapers
wallpaper_dir="/usr/share/backgrounds/pixel-wallpaper"

# Get a list of all files in the wallpaper directory
wallpapers=("$wallpaper_dir"/*)

# Select a random wallpaper
random_wallpaper="${wallpapers[RANDOM % ${#wallpapers[@]}]}"

# Set the wallpaper
gsettings set org.gnome.desktop.background picture-uri "file://$random_wallpaper"
