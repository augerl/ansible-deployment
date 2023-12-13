#!/bin/bash

# Get current username
current_user=$(whoami)

# Print out username
echo "Current user: $current_user"

# Check if Inter font directory exists
if [ -d "/usr/share/fonts/inter" ]; then
    echo "Inter font directory exists."
fi

# Check if Meslo font directory exists
if [ -d "/usr/share/fonts/Meslo" ]; then
    echo "Meslo font directory exists."
fi

# Enable gnome extensions
extensions=("logomenu@aryan_k" "user-theme@gnome-shell-extensions.gcampax.github.com" "espresso@coadmunkee.github.com" "gsconnect@andyholmes.github.io" "blur-my-shell@aunetx" "clipboard-indicator@tudmotu.com" "just-perfection-desktop@just-perfection")

for extension in "${extensions[@]}"; do
    gnome-extensions enable "$extension"
done

# Disable weather service location
gsettings set org.gnome.calendar.weather-settings false

# Show all input sources
gsettings set org.gnome.desktop.input-sources show-all-sources true

# Set font settings
gsettings set org.gnome.desktop.interface font-name "'Inter Light 11'"
gsettings set org.gnome.desktop.interface document-font-name "'Inter Light 11'"
gsettings set org.gnome.desktop.wm.preferences titlebar-font "'Inter Bold 11'"
gsettings set org.gnome.desktop.interface monospace-font-name "'MesloLGS Nerd Font 10'"

# Set other dconf settings
gsettings set org.gnome.desktop.interface color-scheme "'prefer-dark'"
gsettings set org.gnome.desktop.interface cursor-theme "'WhiteSur-cursors'"
gsettings set org.gnome.desktop.interface icon-theme "'Colloid-dark'"
gsettings set org.gnome.shell.extensions.user-theme name "'Colloid-Dark'"
gsettings set org.gnome.desktop.interface gtk-theme "'Colloid-Dark'"
gsettings set org.gnome.desktop.wm.preferences button-layout "':minimize,maximize,close'"
gsettings set org.gnome.desktop.interface enable-hot-corners false
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface clock-show-weekdate true
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
gsettings set org.gnome.gnome-session logout-prompt false
gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll false
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll false
gsettings set org.gnome.desktop.peripherals.mouse accel-profile "'adaptive'"

# Logo Menu Settings
gsettings set org.gnome.shell.extensions.Logo-menu menu-button-icon-image 6
gsettings set org.gnome.shell.extensions.Logo-menu menu-button-icon-size 20
gsettings set org.gnome.shell.extensions.Logo-menu menu-button-terminal "'alacritty'"
gsettings set org.gnome.shell.extensions.Logo-menu menu-button-system-monitor "'btop'"
gsettings set org.gnome.shell.extensions.Logo-menu show-activities-button true
gsettings set org.gnome.shell.extensions.Logo-menu hide-icon-shadow true

# Clipboard Indicator Settings
gsettings set org.gnome.shell.extensions.clipboard-indicator move-item-first true
gsettings set org.gnome.shell.extensions.clipboard-indicator history-size 100
gsettings set org.gnome.shell.extensions.clipboard-indicator cache-size 50
gsettings set org.gnome.shell.extensions.clipboard-indicator topbar-preview-size 15
gsettings set org.gnome.shell.extensions.clipboard-indicator toggle-menu "'<Alt_L>v'"

# Blur My Shell Settings
gsettings set org.gnome.shell.extensions.blur-my-shell.hidetopbar.compatibility true

# Just Perfection Settings
gsettings set org.gnome.shell.extensions.just-perfection.world-clock false
gsettings set org.gnome.shell.extensions.just-perfection.weather false

# Nautilus File Browser Settings
gsettings set org.gtk.gtk4.settings.file-chooser sort-directories-first true
gsettings set org.gnome.nautilus.preferences show-delete-permanently true
gsettings set org.gnome.nautilus.preferences default-folder-viewer "'list-view'"
