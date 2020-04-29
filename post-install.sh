#!/bin/bash
# SUDO COMMANDS
echo Updating Kernel
sudo mhwd-kernel -i linux56
echo Updating graphics drivers
sudo mhwd -a pci nonfree 0300
echo Updating all pacman packages
sudo pacman -Syu
echo Installing pacaur, discord, lightdm, lightdm webkit, lightdm settings, powerline, powerline fonts and adapta
sudo pacman -S --noconfirm pacaur discord lightdm lightdm-webkit2-greeter lightdm-settings powerline powerline-fonts adapta-gtk-theme
echo Disable lightdm service
sudo systemctl disable lightdm.service
echo Re-enable lightdm service
sudo systemctl enable lightdm.service --force

# SOFTWARE SETUPS
bash software-setup/betterdiscord-installer.sh

# NON-SUDO COMMANDS
echo Installing VS Code, Aether lightdm theme, dotnet sdk preview, dotnet runtime preview, google chrome
pacaur -S --noconfirm visual-studio-code-bin lightdm-webkit-theme-aether dotnet-sdk-preview dotnet-runtime-preview google-chrome

# FINAL COMMANDS (MUST BE EXECUTED AFTER LIGHTDM THEME INSTALL)
echo Copying config files
sudo cp configs/.bashrc ~/.bashrc
sudo cp configs/lightdm.conf /etc/lightdm/
sudo cp configs/xorg.conf /etc/X11/