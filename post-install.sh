#!/bin/bash
# SUDO COMMANDS
echo Updating Kernel
sudo mhwd-kernel -i linux56
echo Updating graphics drivers
sudo mhwd -a pci nonfree 0300
echo Updating all pacman packages
sudo pacman -Syu
echo Installing pacaur, lightdm, lightdm webkit and lightdm settings
sudo pacman -S --noconfirm pacaur lightdm lightdm-webkit2-greeter lightdm-settings
echo Disable lightdm service
sudo systemctl disable lightdm.service
echo Re-enable lightdm service
sudo systemctl enable lightdm.service --force

# NON-SUDO COMMANDS
echo Installing VS Code, Aether lightdm theme, betterdiscord dotnet sdk preview, dotnet runtime preview, google chrome
pacaur -S --noconfirm visual-studio-code-bin lightdm-webkit-theme-aether betterdiscord dotnet-sdk-preview dotnet-runtime-preview google-chrome

# FINAL COMMANDS (MUST BE EXECUTED AFTER LIGHTDM THEME INSTALL)
echo Copying config files
sudo cp lightdm.conf /etc/lightdm/
sudo cp xorg.conf /etc/X11/