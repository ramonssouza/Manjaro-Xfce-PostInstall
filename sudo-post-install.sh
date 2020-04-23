#!/bin/bash
echo Updating Kernel
mhwd-kernel -i linux56
echo Updating graphics drivers
mhwd -a pci nonfree 0300
echo Updating all pacman packages
pacman -Syu
echo Installing pacaur, lightdm, lightdm webkit and lightdm settings
pacman -S --noconfirm pacaur lightdm lightdm-webkit2-greeter lightdm-settings
echo Disable lightdm service
systemctl disable lightdm.service
echo Re-enable lightdm service
systemctl enable lightdm.service --force