#!/bin/bash
# Updating Kernel
mhwd-kernel -i linux56
# Updating Nvidia graphics drivers
mhwd -a pci nonfree 0300
# Update all pacman packages
pacman -Syu
# Installing pacaur, lightdm, lightdm webkit and lightdm settings
pacman -S --noconfirm pacaur lightdm lightdm-webkit2-greeter lightdm-settings
# Disable lightdm service
systemctl disable lightdm.service
# Re-enable lightdm service
systemctl enable lightdm.service --force
